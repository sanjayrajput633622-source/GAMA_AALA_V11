.class Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x9

.field private static final ANDROID_ELEVATION:I = 0xa

.field private static final ANDROID_ROTATION:I = 0xb

.field private static final ANDROID_ROTATION_X:I = 0xc

.field private static final ANDROID_ROTATION_Y:I = 0xd

.field private static final ANDROID_SCALE_X:I = 0xf

.field private static final ANDROID_SCALE_Y:I = 0x10

.field private static final ANDROID_TRANSLATION_X:I = 0x11

.field private static final ANDROID_TRANSLATION_Y:I = 0x12

.field private static final ANDROID_TRANSLATION_Z:I = 0x13

.field private static final CURVE_FIT:I = 0x4

.field private static final FRAME_POSITION:I = 0x2

.field private static final PROGRESS:I = 0x14

.field private static final TARGET_ID:I = 0x1

.field private static final TRANSITION_EASING:I = 0x3

.field private static final TRANSITION_PATH_ROTATE:I = 0xe

.field private static final WAVE_OFFSET:I = 0x7

.field private static final WAVE_PERIOD:I = 0x6

.field private static final WAVE_PHASE:I = 0x15

.field private static final WAVE_SHAPE:I = 0x5

.field private static final WAVE_VARIES_BY:I = 0x8

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
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_motionTarget:I

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    .line 15
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_framePosition:I

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    .line 23
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_transitionEasing:I

    .line 26
    const/4 v2, 0x3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    .line 31
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_curveFit:I

    .line 34
    const/4 v2, 0x4

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    .line 39
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 40
    .line 41
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_waveShape:I

    .line 42
    const/4 v2, 0x5

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    .line 47
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 48
    .line 49
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_wavePeriod:I

    .line 50
    const/4 v2, 0x6

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    .line 55
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 56
    .line 57
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_waveOffset:I

    .line 58
    const/4 v2, 0x7

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    .line 63
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 64
    .line 65
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_waveVariesBy:I

    .line 66
    .line 67
    const/16 v2, 0x8

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 71
    .line 72
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 73
    .line 74
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_alpha:I

    .line 75
    .line 76
    const/16 v2, 0x9

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 80
    .line 81
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 82
    .line 83
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_elevation:I

    .line 84
    .line 85
    const/16 v2, 0xa

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 89
    .line 90
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 91
    .line 92
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_rotation:I

    .line 93
    .line 94
    const/16 v2, 0xb

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    .line 99
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 100
    .line 101
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_rotationX:I

    .line 102
    .line 103
    const/16 v2, 0xc

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 107
    .line 108
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 109
    .line 110
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_rotationY:I

    .line 111
    .line 112
    const/16 v2, 0xd

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 116
    .line 117
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 118
    .line 119
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_transitionPathRotate:I

    .line 120
    .line 121
    const/16 v2, 0xe

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 125
    .line 126
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 127
    .line 128
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_scaleX:I

    .line 129
    .line 130
    const/16 v2, 0xf

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 134
    .line 135
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 136
    .line 137
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_scaleY:I

    .line 138
    .line 139
    const/16 v2, 0x10

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 143
    .line 144
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 145
    .line 146
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_translationX:I

    .line 147
    .line 148
    const/16 v2, 0x11

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 152
    .line 153
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 154
    .line 155
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_translationY:I

    .line 156
    .line 157
    const/16 v2, 0x12

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 161
    .line 162
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 163
    .line 164
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_android_translationZ:I

    .line 165
    .line 166
    const/16 v2, 0x13

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 170
    .line 171
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 172
    .line 173
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_motionProgress:I

    .line 174
    .line 175
    const/16 v2, 0x14

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 179
    .line 180
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 181
    .line 182
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle_wavePhase:I

    .line 183
    .line 184
    const/16 v2, 0x15

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 188
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

.method public static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V

    .line 4
    return-void
.end method

.method private static read(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V
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
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

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
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 25
    .line 26
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

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
    :pswitch_0
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$2000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 35
    move-result v3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 39
    move-result v2

    .line 40
    .line 41
    const/high16 v3, 0x43b40000    # 360.0f

    .line 42
    div-float/2addr v2, v3

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$2002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    .line 50
    :pswitch_1
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 51
    move-result v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 55
    move-result v2

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    .line 63
    :pswitch_2
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 68
    move-result v2

    .line 69
    .line 70
    .line 71
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    .line 76
    :pswitch_3
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1700(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 77
    move-result v3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 81
    move-result v2

    .line 82
    .line 83
    .line 84
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1702(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    .line 89
    :pswitch_4
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 90
    move-result v3

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 94
    move-result v2

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    .line 102
    :pswitch_5
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 103
    move-result v3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 107
    move-result v2

    .line 108
    .line 109
    .line 110
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    .line 115
    :pswitch_6
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1400(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 116
    move-result v3

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 120
    move-result v2

    .line 121
    .line 122
    .line 123
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1402(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    .line 128
    :pswitch_7
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1300(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 129
    move-result v3

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 133
    move-result v2

    .line 134
    .line 135
    .line 136
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1302(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    .line 141
    :pswitch_8
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1200(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 142
    move-result v3

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 146
    move-result v2

    .line 147
    .line 148
    .line 149
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1202(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    .line 154
    :pswitch_9
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1100(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 155
    move-result v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 159
    move-result v2

    .line 160
    .line 161
    .line 162
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1102(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    .line 167
    :pswitch_a
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 168
    move-result v3

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 172
    move-result v2

    .line 173
    .line 174
    .line 175
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$1002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    .line 180
    :pswitch_b
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 181
    move-result v3

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 185
    move-result v2

    .line 186
    .line 187
    .line 188
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    .line 193
    :pswitch_c
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 194
    move-result v3

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 198
    move-result v2

    .line 199
    .line 200
    .line 201
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    .line 206
    :pswitch_d
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$700(Landroidx/constraintlayout/motion/widget/KeyCycle;)I

    .line 207
    move-result v3

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 211
    move-result v2

    .line 212
    .line 213
    .line 214
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$702(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    .line 219
    :pswitch_e
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 220
    move-result-object v3

    .line 221
    .line 222
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 223
    const/4 v4, 0x5

    .line 224
    .line 225
    if-ne v3, v4, :cond_0

    .line 226
    .line 227
    .line 228
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 229
    move-result v3

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 233
    move-result v2

    .line 234
    .line 235
    .line 236
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 237
    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    .line 241
    :cond_0
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 242
    move-result v3

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 246
    move-result v2

    .line 247
    .line 248
    .line 249
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    .line 254
    :pswitch_f
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F

    .line 255
    move-result v3

    .line 256
    .line 257
    .line 258
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 259
    move-result v2

    .line 260
    .line 261
    .line 262
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F

    .line 263
    goto :goto_1

    .line 264
    .line 265
    .line 266
    :pswitch_10
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 267
    move-result-object v3

    .line 268
    .line 269
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 270
    .line 271
    if-ne v3, v4, :cond_1

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 275
    move-result-object v2

    .line 276
    .line 277
    .line 278
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$302(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    const/4 v2, 0x7

    .line 280
    .line 281
    .line 282
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    .line 283
    goto :goto_1

    .line 284
    .line 285
    .line 286
    :cond_1
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$400(Landroidx/constraintlayout/motion/widget/KeyCycle;)I

    .line 287
    move-result v3

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 291
    move-result v2

    .line 292
    .line 293
    .line 294
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    .line 295
    goto :goto_1

    .line 296
    .line 297
    .line 298
    :pswitch_11
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$200(Landroidx/constraintlayout/motion/widget/KeyCycle;)I

    .line 299
    move-result v3

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 303
    move-result v2

    .line 304
    .line 305
    .line 306
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$202(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I

    .line 307
    goto :goto_1

    .line 308
    .line 309
    .line 310
    :pswitch_12
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 311
    move-result-object v2

    .line 312
    .line 313
    .line 314
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->access$102(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    goto :goto_1

    .line 316
    .line 317
    :pswitch_13
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 321
    move-result v2

    .line 322
    .line 323
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 324
    goto :goto_1

    .line 325
    .line 326
    :pswitch_14
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 327
    .line 328
    if-eqz v3, :cond_2

    .line 329
    .line 330
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 331
    .line 332
    .line 333
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 334
    move-result v3

    .line 335
    .line 336
    iput v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 337
    const/4 v4, -0x1

    .line 338
    .line 339
    if-ne v3, v4, :cond_4

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 343
    move-result-object v2

    .line 344
    .line 345
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 346
    goto :goto_1

    .line 347
    .line 348
    .line 349
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 350
    move-result-object v3

    .line 351
    .line 352
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 353
    .line 354
    if-ne v3, v4, :cond_3

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 358
    move-result-object v2

    .line 359
    .line 360
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 361
    goto :goto_1

    .line 362
    .line 363
    :cond_3
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 367
    move-result v2

    .line 368
    .line 369
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 370
    .line 371
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 372
    .line 373
    goto/16 :goto_0

    .line 374
    :cond_5
    return-void

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
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
