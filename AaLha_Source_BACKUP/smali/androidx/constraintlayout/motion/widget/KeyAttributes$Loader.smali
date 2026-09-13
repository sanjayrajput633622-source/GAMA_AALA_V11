.class Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x1

.field private static final ANDROID_ELEVATION:I = 0x2

.field private static final ANDROID_PIVOT_X:I = 0x13

.field private static final ANDROID_PIVOT_Y:I = 0x14

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
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_alpha:I

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    .line 15
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_elevation:I

    .line 18
    const/4 v2, 0x2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    .line 23
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_rotation:I

    .line 26
    const/4 v2, 0x4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    .line 31
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 32
    .line 33
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_rotationX:I

    .line 34
    const/4 v2, 0x5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    .line 39
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 40
    .line 41
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_rotationY:I

    .line 42
    const/4 v2, 0x6

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    .line 47
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 48
    .line 49
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_transformPivotX:I

    .line 50
    .line 51
    const/16 v2, 0x13

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 55
    .line 56
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 57
    .line 58
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_transformPivotY:I

    .line 59
    .line 60
    const/16 v2, 0x14

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 64
    .line 65
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 66
    .line 67
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_scaleX:I

    .line 68
    const/4 v2, 0x7

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 72
    .line 73
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 74
    .line 75
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_transitionPathRotate:I

    .line 76
    .line 77
    const/16 v2, 0x8

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    .line 82
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 83
    .line 84
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_transitionEasing:I

    .line 85
    .line 86
    const/16 v2, 0x9

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 90
    .line 91
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 92
    .line 93
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_motionTarget:I

    .line 94
    .line 95
    const/16 v2, 0xa

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 99
    .line 100
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 101
    .line 102
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_framePosition:I

    .line 103
    .line 104
    const/16 v2, 0xc

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    .line 109
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 110
    .line 111
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_curveFit:I

    .line 112
    .line 113
    const/16 v2, 0xd

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 117
    .line 118
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 119
    .line 120
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_scaleY:I

    .line 121
    .line 122
    const/16 v2, 0xe

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 126
    .line 127
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 128
    .line 129
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_translationX:I

    .line 130
    .line 131
    const/16 v2, 0xf

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 135
    .line 136
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 137
    .line 138
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_translationY:I

    .line 139
    .line 140
    const/16 v2, 0x10

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 144
    .line 145
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 146
    .line 147
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_android_translationZ:I

    .line 148
    .line 149
    const/16 v2, 0x11

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 153
    .line 154
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 155
    .line 156
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute_motionProgress:I

    .line 157
    .line 158
    const/16 v2, 0x12

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 162
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

.method public static read(Landroidx/constraintlayout/motion/widget/KeyAttributes;Landroid/content/res/TypedArray;)V
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
    if-ge v1, v0, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 11
    move-result v2

    .line 12
    .line 13
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    packed-switch v3, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 24
    .line 25
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    .line 33
    :pswitch_1
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$800(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 38
    move-result v2

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$802(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    .line 46
    :pswitch_2
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$700(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 47
    move-result v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 51
    move-result v2

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$702(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 55
    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    .line 59
    :pswitch_3
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 64
    move-result v2

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    .line 72
    :pswitch_4
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 73
    move-result v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 77
    move-result v2

    .line 78
    .line 79
    .line 80
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    .line 85
    :pswitch_5
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 86
    move-result v3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 90
    move-result v2

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1302(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    .line 98
    :pswitch_6
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 99
    move-result v3

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 103
    move-result v2

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    .line 111
    :pswitch_7
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 112
    move-result v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 116
    move-result v2

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    .line 124
    :pswitch_8
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)I

    .line 125
    move-result v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 129
    move-result v2

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$302(Landroidx/constraintlayout/motion/widget/KeyAttributes;I)I

    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :pswitch_9
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 140
    move-result v2

    .line 141
    .line 142
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :pswitch_a
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 147
    .line 148
    if-eqz v3, :cond_0

    .line 149
    .line 150
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 154
    move-result v3

    .line 155
    .line 156
    iput v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 157
    const/4 v4, -0x1

    .line 158
    .line 159
    if-ne v3, v4, :cond_2

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    .line 170
    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 174
    const/4 v4, 0x3

    .line 175
    .line 176
    if-ne v3, v4, :cond_1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    .line 182
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 183
    goto :goto_1

    .line 184
    .line 185
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 189
    move-result v2

    .line 190
    .line 191
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 192
    goto :goto_1

    .line 193
    .line 194
    .line 195
    :pswitch_b
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 196
    move-result-object v2

    .line 197
    .line 198
    .line 199
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$902(Landroidx/constraintlayout/motion/widget/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    goto :goto_1

    .line 201
    .line 202
    .line 203
    :pswitch_c
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 204
    move-result v3

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 208
    move-result v2

    .line 209
    .line 210
    .line 211
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$1102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 212
    goto :goto_1

    .line 213
    .line 214
    .line 215
    :pswitch_d
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 216
    move-result v3

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 220
    move-result v2

    .line 221
    .line 222
    .line 223
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 224
    goto :goto_1

    .line 225
    .line 226
    .line 227
    :pswitch_e
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$600(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 228
    move-result v3

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 232
    move-result v2

    .line 233
    .line 234
    .line 235
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$602(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 236
    goto :goto_1

    .line 237
    .line 238
    .line 239
    :pswitch_f
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 240
    move-result v3

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 244
    move-result v2

    .line 245
    .line 246
    .line 247
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 248
    goto :goto_1

    .line 249
    .line 250
    .line 251
    :pswitch_10
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 252
    move-result v3

    .line 253
    .line 254
    .line 255
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 256
    move-result v2

    .line 257
    .line 258
    .line 259
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 260
    goto :goto_1

    .line 261
    .line 262
    .line 263
    :pswitch_11
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 264
    move-result v3

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 268
    move-result v2

    .line 269
    .line 270
    .line 271
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 272
    goto :goto_1

    .line 273
    .line 274
    .line 275
    :pswitch_12
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F

    .line 276
    move-result v3

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 280
    move-result v2

    .line 281
    .line 282
    .line 283
    invoke-static {p0, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->access$002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F

    .line 284
    .line 285
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    :cond_3
    return-void

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
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
