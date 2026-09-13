.class Landroidx/constraintlayout/motion/widget/TouchResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPLETE_MODE_CONTINUOUS_VELOCITY:I = 0x0

.field public static final COMPLETE_MODE_SPRING:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EPSILON:F = 1.0E-7f

.field static final FLAG_DISABLE_POST_SCROLL:I = 0x1

.field static final FLAG_DISABLE_SCROLL:I = 0x2

.field static final FLAG_SUPPORT_SCROLL_UP:I = 0x4

.field private static final SEC_TO_MILLISECONDS:I = 0x3e8

.field private static final SIDE_BOTTOM:I = 0x3

.field private static final SIDE_END:I = 0x6

.field private static final SIDE_LEFT:I = 0x1

.field private static final SIDE_MIDDLE:I = 0x4

.field private static final SIDE_RIGHT:I = 0x2

.field private static final SIDE_START:I = 0x5

.field private static final SIDE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchResponse"

.field private static final TOUCH_DIRECTION:[[F

.field private static final TOUCH_DOWN:I = 0x1

.field private static final TOUCH_END:I = 0x5

.field private static final TOUCH_LEFT:I = 0x2

.field private static final TOUCH_RIGHT:I = 0x3

.field private static final TOUCH_SIDES:[[F

.field private static final TOUCH_START:I = 0x4

.field private static final TOUCH_UP:I


# instance fields
.field private mAnchorDpDt:[F

.field private mAutoCompleteMode:I

.field private mDragScale:F

.field private mDragStarted:Z

.field private mDragThreshold:F

.field private mFlags:I

.field mIsRotateMode:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLimitBoundsTo:I

.field private mMaxAcceleration:F

.field private mMaxVelocity:F

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mMoveWhenScrollAtTop:Z

.field private mOnTouchUp:I

.field mRotateCenterX:F

.field mRotateCenterY:F

.field private mRotationCenterId:I

.field private mSpringBoundary:I

.field private mSpringDamping:F

.field private mSpringMass:F

.field private mSpringStiffness:F

.field private mSpringStopThreshold:F

.field private mTempLoc:[I

.field private mTouchAnchorId:I

.field private mTouchAnchorSide:I

.field private mTouchAnchorX:F

.field private mTouchAnchorY:F

.field private mTouchDirectionX:F

.field private mTouchDirectionY:F

.field private mTouchRegionId:I

.field private mTouchSide:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    new-array v2, v0, [F

    .line 9
    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    new-array v3, v0, [F

    .line 14
    .line 15
    .line 16
    fill-array-data v3, :array_2

    .line 17
    .line 18
    new-array v4, v0, [F

    .line 19
    .line 20
    .line 21
    fill-array-data v4, :array_3

    .line 22
    .line 23
    new-array v5, v0, [F

    .line 24
    .line 25
    .line 26
    fill-array-data v5, :array_4

    .line 27
    .line 28
    new-array v6, v0, [F

    .line 29
    .line 30
    .line 31
    fill-array-data v6, :array_5

    .line 32
    .line 33
    new-array v7, v0, [F

    .line 34
    .line 35
    .line 36
    fill-array-data v7, :array_6

    .line 37
    const/4 v8, 0x7

    .line 38
    .line 39
    new-array v8, v8, [[F

    .line 40
    const/4 v9, 0x0

    .line 41
    .line 42
    aput-object v1, v8, v9

    .line 43
    const/4 v1, 0x1

    .line 44
    .line 45
    aput-object v2, v8, v1

    .line 46
    .line 47
    aput-object v3, v8, v0

    .line 48
    const/4 v2, 0x3

    .line 49
    .line 50
    aput-object v4, v8, v2

    .line 51
    const/4 v3, 0x4

    .line 52
    .line 53
    aput-object v5, v8, v3

    .line 54
    const/4 v4, 0x5

    .line 55
    .line 56
    aput-object v6, v8, v4

    .line 57
    const/4 v5, 0x6

    .line 58
    .line 59
    aput-object v7, v8, v5

    .line 60
    .line 61
    sput-object v8, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    .line 62
    .line 63
    new-array v6, v0, [F

    .line 64
    .line 65
    .line 66
    fill-array-data v6, :array_7

    .line 67
    .line 68
    new-array v7, v0, [F

    .line 69
    .line 70
    .line 71
    fill-array-data v7, :array_8

    .line 72
    .line 73
    new-array v8, v0, [F

    .line 74
    .line 75
    .line 76
    fill-array-data v8, :array_9

    .line 77
    .line 78
    new-array v10, v0, [F

    .line 79
    .line 80
    .line 81
    fill-array-data v10, :array_a

    .line 82
    .line 83
    new-array v11, v0, [F

    .line 84
    .line 85
    .line 86
    fill-array-data v11, :array_b

    .line 87
    .line 88
    new-array v12, v0, [F

    .line 89
    .line 90
    .line 91
    fill-array-data v12, :array_c

    .line 92
    .line 93
    new-array v5, v5, [[F

    .line 94
    .line 95
    aput-object v6, v5, v9

    .line 96
    .line 97
    aput-object v7, v5, v1

    .line 98
    .line 99
    aput-object v8, v5, v0

    .line 100
    .line 101
    aput-object v10, v5, v2

    .line 102
    .line 103
    aput-object v11, v5, v3

    .line 104
    .line 105
    aput-object v12, v5, v4

    .line 106
    .line 107
    sput-object v5, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    .line 108
    return-void

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layout",
            "parser"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 8
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 9
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 10
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterX:F

    .line 11
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterY:F

    .line 12
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 13
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 16
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    const/4 v2, 0x2

    .line 17
    new-array v3, v2, [F

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 18
    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    const/high16 v2, 0x40800000    # 4.0f

    .line 19
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    const v2, 0x3f99999a    # 1.2f

    .line 20
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    const/4 v2, 0x1

    .line 21
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 22
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 24
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    .line 25
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    .line 26
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 27
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    .line 28
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    .line 29
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    .line 30
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    .line 31
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 32
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/motion/widget/OnSwipe;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "onSwipe"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    .line 35
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 36
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v1, -0x1

    .line 37
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 38
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 39
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 40
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 41
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 42
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterX:F

    .line 43
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterY:F

    .line 44
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 45
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    const/4 v2, 0x0

    .line 46
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 47
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    const/4 v3, 0x2

    .line 49
    new-array v4, v3, [F

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 50
    new-array v3, v3, [I

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    const/high16 v3, 0x40800000    # 4.0f

    .line 51
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    const v3, 0x3f99999a    # 1.2f

    .line 52
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    const/4 v3, 0x1

    .line 53
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 54
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 55
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    const/high16 v4, 0x41200000    # 10.0f

    .line 56
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    .line 57
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    .line 58
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 59
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    .line 60
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    .line 63
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 64
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getTouchAnchorId()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 65
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getTouchAnchorSide()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    if-eq p1, v1, :cond_0

    .line 66
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    aget-object p1, v1, p1

    aget v1, p1, v0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 67
    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getDragDirection()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 69
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    array-length v4, v1

    if-ge p1, v4, :cond_1

    .line 70
    aget-object p1, v1, p1

    aget v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 71
    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    goto :goto_0

    .line 72
    :cond_1
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 73
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    .line 74
    :goto_0
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getMaxVelocity()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 75
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getMaxAcceleration()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    .line 76
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getMoveWhenScrollAtTop()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 77
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getDragScale()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 78
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getDragThreshold()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    .line 79
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getTouchRegionId()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 80
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getOnTouchUp()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 81
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getNestedScrollFlags()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 82
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getLimitBoundsTo()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    .line 83
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getRotationCenterId()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 84
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringBoundary()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    .line 85
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringDamping()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    .line 86
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringMass()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    .line 87
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringStiffness()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    .line 88
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringStopThreshold()F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    .line 89
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getAutoCompleteMode()I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    return-void
.end method

.method private fill(Landroid/content/res/TypedArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
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
    if-ge v2, v0, :cond_14

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 12
    move-result v3

    .line 13
    .line 14
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    .line 15
    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 22
    move-result v3

    .line 23
    .line 24
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    .line 29
    const/4 v5, 0x1

    .line 30
    .line 31
    if-ne v3, v4, :cond_1

    .line 32
    .line 33
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 37
    move-result v3

    .line 38
    .line 39
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    .line 40
    .line 41
    sget-object v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    .line 42
    .line 43
    aget-object v3, v4, v3

    .line 44
    .line 45
    aget v4, v3, v1

    .line 46
    .line 47
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 48
    .line 49
    aget v3, v3, v5

    .line 50
    .line 51
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    .line 56
    .line 57
    if-ne v3, v4, :cond_3

    .line 58
    .line 59
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 63
    move-result v3

    .line 64
    .line 65
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 66
    .line 67
    sget-object v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    .line 68
    array-length v6, v4

    .line 69
    .line 70
    if-ge v3, v6, :cond_2

    .line 71
    .line 72
    aget-object v3, v4, v3

    .line 73
    .line 74
    aget v4, v3, v1

    .line 75
    .line 76
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 77
    .line 78
    aget v3, v3, v5

    .line 79
    .line 80
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_2
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 85
    .line 86
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 87
    .line 88
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 89
    .line 90
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    .line 95
    .line 96
    if-ne v3, v4, :cond_4

    .line 97
    .line 98
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 102
    move-result v3

    .line 103
    .line 104
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    .line 109
    .line 110
    if-ne v3, v4, :cond_5

    .line 111
    .line 112
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 116
    move-result v3

    .line 117
    .line 118
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    .line 123
    .line 124
    if-ne v3, v4, :cond_6

    .line 125
    .line 126
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 130
    move-result v3

    .line 131
    .line 132
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

    .line 137
    .line 138
    if-ne v3, v4, :cond_7

    .line 139
    .line 140
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 144
    move-result v3

    .line 145
    .line 146
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragThreshold:I

    .line 151
    .line 152
    if-ne v3, v4, :cond_8

    .line 153
    .line 154
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 158
    move-result v3

    .line 159
    .line 160
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    .line 165
    .line 166
    if-ne v3, v4, :cond_9

    .line 167
    .line 168
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 172
    move-result v3

    .line 173
    .line 174
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    .line 179
    .line 180
    if-ne v3, v4, :cond_a

    .line 181
    .line 182
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 186
    move-result v3

    .line 187
    .line 188
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    .line 193
    .line 194
    if-ne v3, v4, :cond_b

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 198
    move-result v3

    .line 199
    .line 200
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 201
    goto :goto_1

    .line 202
    .line 203
    :cond_b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    .line 204
    .line 205
    if-ne v3, v4, :cond_c

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 209
    move-result v3

    .line 210
    .line 211
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    .line 212
    goto :goto_1

    .line 213
    .line 214
    :cond_c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_rotationCenterId:I

    .line 215
    .line 216
    if-ne v3, v4, :cond_d

    .line 217
    .line 218
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 222
    move-result v3

    .line 223
    .line 224
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 225
    goto :goto_1

    .line 226
    .line 227
    :cond_d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springDamping:I

    .line 228
    .line 229
    if-ne v3, v4, :cond_e

    .line 230
    .line 231
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 235
    move-result v3

    .line 236
    .line 237
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    .line 238
    goto :goto_1

    .line 239
    .line 240
    :cond_e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springMass:I

    .line 241
    .line 242
    if-ne v3, v4, :cond_f

    .line 243
    .line 244
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 248
    move-result v3

    .line 249
    .line 250
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    .line 251
    goto :goto_1

    .line 252
    .line 253
    :cond_f
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStiffness:I

    .line 254
    .line 255
    if-ne v3, v4, :cond_10

    .line 256
    .line 257
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 261
    move-result v3

    .line 262
    .line 263
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    .line 264
    goto :goto_1

    .line 265
    .line 266
    :cond_10
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStopThreshold:I

    .line 267
    .line 268
    if-ne v3, v4, :cond_11

    .line 269
    .line 270
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 274
    move-result v3

    .line 275
    .line 276
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    .line 277
    goto :goto_1

    .line 278
    .line 279
    :cond_11
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springBoundary:I

    .line 280
    .line 281
    if-ne v3, v4, :cond_12

    .line 282
    .line 283
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 287
    move-result v3

    .line 288
    .line 289
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    .line 290
    goto :goto_1

    .line 291
    .line 292
    :cond_12
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_autoCompleteMode:I

    .line 293
    .line 294
    if-ne v3, v4, :cond_13

    .line 295
    .line 296
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 300
    move-result v3

    .line 301
    .line 302
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    .line 303
    .line 304
    :cond_13
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    :cond_14
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fill(Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    return-void
.end method


# virtual methods
.method public dot(FF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 3
    mul-float/2addr p1, v0

    .line 4
    .line 5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 6
    mul-float/2addr p2, v0

    .line 7
    add-float/2addr p1, p2

    .line 8
    return p1
.end method

.method public getAnchorId()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 3
    return v0
.end method

.method public getAutoCompleteMode()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    .line 3
    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    .line 3
    return v0
.end method

.method public getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "rect"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    return-object v2

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    return-object v2

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 33
    move-result p1

    .line 34
    int-to-float p1, p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    return-object p2
.end method

.method public getLimitBoundsToId()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    .line 3
    return v0
.end method

.method public getMaxAcceleration()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    .line 3
    return v0
.end method

.method public getMaxVelocity()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 3
    return v0
.end method

.method public getMoveWhenScrollAtTop()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 3
    return v0
.end method

.method public getProgressDirection(FF)F
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 6
    move-result v3

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 9
    .line 10
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 11
    .line 12
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 13
    .line 14
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 15
    .line 16
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 20
    .line 21
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    cmpl-float v2, v0, v1

    .line 25
    .line 26
    .line 27
    const v3, 0x33d6bf95    # 1.0E-7f

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 32
    const/4 v2, 0x0

    .line 33
    .line 34
    aget v4, p2, v2

    .line 35
    .line 36
    cmpl-float v1, v4, v1

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    aput v3, p2, v2

    .line 41
    :cond_0
    mul-float/2addr p1, v0

    .line 42
    .line 43
    aget p2, p2, v2

    .line 44
    div-float/2addr p1, p2

    .line 45
    return p1

    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 48
    const/4 v0, 0x1

    .line 49
    .line 50
    aget v2, p1, v0

    .line 51
    .line 52
    cmpl-float v1, v2, v1

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    aput v3, p1, v0

    .line 57
    .line 58
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 59
    mul-float/2addr p2, v1

    .line 60
    .line 61
    aget p1, p1, v0

    .line 62
    div-float/2addr p2, p1

    .line 63
    return p2
.end method

.method public getSpringBoundary()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    .line 3
    return v0
.end method

.method public getSpringDamping()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    .line 3
    return v0
.end method

.method public getSpringMass()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    .line 3
    return v0
.end method

.method public getSpringStiffness()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    .line 3
    return v0
.end method

.method public getSpringStopThreshold()F
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    .line 3
    return v0
.end method

.method public getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "rect"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    return-object v2

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    return-object v2

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 23
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 28
    move-result v2

    .line 29
    int-to-float v2, v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 33
    move-result p1

    .line 34
    int-to-float p1, p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 38
    return-object p2
.end method

.method public getTouchRegionId()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 3
    return v0
.end method

.method public isDragStarted()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 3
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "velocityTracker",
            "currentState",
            "motionScene"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p4}, Landroidx/constraintlayout/motion/widget/TouchResponse;->processTouchRotateEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    move-object/from16 v2, p1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    move-result v3

    .line 22
    .line 23
    if-eqz v3, :cond_1b

    .line 24
    .line 25
    const/16 v5, 0x3e8

    .line 26
    const/4 v6, 0x7

    .line 27
    const/4 v7, 0x6

    .line 28
    const/4 v8, -0x1

    .line 29
    .line 30
    const/high16 v9, 0x3f800000    # 1.0f

    .line 31
    const/4 v10, 0x1

    .line 32
    const/4 v11, 0x0

    .line 33
    .line 34
    if-eq v3, v10, :cond_e

    .line 35
    const/4 v12, 0x2

    .line 36
    .line 37
    if-eq v3, v12, :cond_1

    .line 38
    .line 39
    goto/16 :goto_9

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 43
    move-result v3

    .line 44
    .line 45
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 46
    sub-float/2addr v3, v12

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 50
    move-result v12

    .line 51
    .line 52
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 53
    sub-float/2addr v12, v13

    .line 54
    .line 55
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 56
    mul-float/2addr v13, v12

    .line 57
    .line 58
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 59
    mul-float/2addr v14, v3

    .line 60
    add-float/2addr v13, v14

    .line 61
    .line 62
    .line 63
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 64
    move-result v13

    .line 65
    .line 66
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    .line 67
    .line 68
    cmpl-float v13, v13, v14

    .line 69
    .line 70
    if-gtz v13, :cond_2

    .line 71
    .line 72
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 73
    .line 74
    if-eqz v13, :cond_19

    .line 75
    .line 76
    :cond_2
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 80
    move-result v13

    .line 81
    .line 82
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 83
    .line 84
    if-nez v14, :cond_3

    .line 85
    .line 86
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 87
    .line 88
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v14, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 92
    .line 93
    :cond_3
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 94
    .line 95
    if-eq v15, v8, :cond_4

    .line 96
    .line 97
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 98
    .line 99
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 100
    .line 101
    move/from16 p3, v10

    .line 102
    .line 103
    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 104
    .line 105
    const/16 p4, 0x0

    .line 106
    .line 107
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 108
    .line 109
    move-object/from16 v19, v4

    .line 110
    .line 111
    move/from16 v17, v8

    .line 112
    .line 113
    move/from16 v18, v10

    .line 114
    .line 115
    move/from16 v16, v13

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {v14 .. v19}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 119
    goto :goto_0

    .line 120
    .line 121
    :cond_4
    move/from16 p3, v10

    .line 122
    .line 123
    move/from16 v16, v13

    .line 124
    .line 125
    const/16 p4, 0x0

    .line 126
    .line 127
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 131
    move-result v4

    .line 132
    .line 133
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 137
    move-result v8

    .line 138
    .line 139
    .line 140
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    .line 141
    move-result v4

    .line 142
    int-to-float v4, v4

    .line 143
    .line 144
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 145
    .line 146
    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 147
    mul-float/2addr v10, v4

    .line 148
    .line 149
    aput v10, v8, p3

    .line 150
    .line 151
    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 152
    mul-float/2addr v4, v10

    .line 153
    .line 154
    aput v4, v8, p4

    .line 155
    .line 156
    :goto_0
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 157
    .line 158
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 159
    .line 160
    aget v10, v8, p4

    .line 161
    mul-float/2addr v4, v10

    .line 162
    .line 163
    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 164
    .line 165
    aget v8, v8, p3

    .line 166
    mul-float/2addr v10, v8

    .line 167
    add-float/2addr v4, v10

    .line 168
    .line 169
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 170
    mul-float/2addr v4, v8

    .line 171
    .line 172
    .line 173
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 174
    move-result v4

    .line 175
    float-to-double v13, v4

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    const-wide v17, 0x3f847ae147ae147bL    # 0.01

    .line 181
    .line 182
    cmpg-double v4, v13, v17

    .line 183
    .line 184
    .line 185
    const v8, 0x3c23d70a    # 0.01f

    .line 186
    .line 187
    if-gez v4, :cond_5

    .line 188
    .line 189
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 190
    .line 191
    aput v8, v4, p4

    .line 192
    .line 193
    aput v8, v4, p3

    .line 194
    .line 195
    :cond_5
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 196
    .line 197
    cmpl-float v4, v4, v11

    .line 198
    .line 199
    if-eqz v4, :cond_6

    .line 200
    .line 201
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 202
    .line 203
    aget v3, v3, p4

    .line 204
    div-float/2addr v12, v3

    .line 205
    goto :goto_1

    .line 206
    .line 207
    :cond_6
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 208
    .line 209
    aget v4, v4, p3

    .line 210
    .line 211
    div-float v12, v3, v4

    .line 212
    .line 213
    :goto_1
    add-float v13, v16, v12

    .line 214
    .line 215
    .line 216
    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    .line 217
    move-result v3

    .line 218
    .line 219
    .line 220
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    .line 221
    move-result v3

    .line 222
    .line 223
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 224
    .line 225
    if-ne v4, v7, :cond_7

    .line 226
    .line 227
    .line 228
    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    .line 229
    move-result v3

    .line 230
    .line 231
    :cond_7
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 232
    .line 233
    if-ne v4, v6, :cond_8

    .line 234
    .line 235
    .line 236
    const v4, 0x3f7d70a4    # 0.99f

    .line 237
    .line 238
    .line 239
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    .line 240
    move-result v3

    .line 241
    .line 242
    :cond_8
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 246
    move-result v4

    .line 247
    .line 248
    cmpl-float v6, v3, v4

    .line 249
    .line 250
    if-eqz v6, :cond_d

    .line 251
    .line 252
    cmpl-float v6, v4, v11

    .line 253
    .line 254
    if-eqz v6, :cond_9

    .line 255
    .line 256
    cmpl-float v4, v4, v9

    .line 257
    .line 258
    if-nez v4, :cond_b

    .line 259
    .line 260
    :cond_9
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 261
    .line 262
    if-nez v6, :cond_a

    .line 263
    .line 264
    move/from16 v6, p3

    .line 265
    goto :goto_2

    .line 266
    .line 267
    :cond_a
    move/from16 v6, p4

    .line 268
    .line 269
    .line 270
    :goto_2
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 271
    .line 272
    :cond_b
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 279
    .line 280
    .line 281
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    .line 282
    move-result v3

    .line 283
    .line 284
    .line 285
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    .line 286
    move-result v1

    .line 287
    .line 288
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 289
    .line 290
    cmpl-float v4, v4, v11

    .line 291
    .line 292
    if-eqz v4, :cond_c

    .line 293
    .line 294
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 295
    .line 296
    aget v1, v1, p4

    .line 297
    div-float/2addr v3, v1

    .line 298
    goto :goto_3

    .line 299
    .line 300
    :cond_c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 301
    .line 302
    aget v3, v3, p3

    .line 303
    .line 304
    div-float v3, v1, v3

    .line 305
    .line 306
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 307
    .line 308
    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 309
    goto :goto_4

    .line 310
    .line 311
    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 312
    .line 313
    iput v11, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 314
    .line 315
    .line 316
    :goto_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 317
    move-result v1

    .line 318
    .line 319
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 323
    move-result v1

    .line 324
    .line 325
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 326
    return-void

    .line 327
    .line 328
    :cond_e
    move/from16 p3, v10

    .line 329
    const/4 v2, 0x0

    .line 330
    .line 331
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 332
    .line 333
    .line 334
    invoke-interface {v1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 335
    .line 336
    .line 337
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    .line 338
    move-result v2

    .line 339
    .line 340
    .line 341
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    .line 342
    move-result v1

    .line 343
    .line 344
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 348
    move-result v14

    .line 349
    .line 350
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 351
    .line 352
    if-eq v13, v8, :cond_f

    .line 353
    .line 354
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 355
    .line 356
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 357
    .line 358
    iget v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 359
    .line 360
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 361
    .line 362
    move/from16 v16, v3

    .line 363
    .line 364
    move-object/from16 v17, v4

    .line 365
    .line 366
    .line 367
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 368
    const/4 v5, 0x0

    .line 369
    goto :goto_5

    .line 370
    .line 371
    :cond_f
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 375
    move-result v3

    .line 376
    .line 377
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 381
    move-result v4

    .line 382
    .line 383
    .line 384
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 385
    move-result v3

    .line 386
    int-to-float v3, v3

    .line 387
    .line 388
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 389
    .line 390
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 391
    mul-float/2addr v5, v3

    .line 392
    .line 393
    aput v5, v4, p3

    .line 394
    .line 395
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 396
    mul-float/2addr v3, v5

    .line 397
    const/4 v5, 0x0

    .line 398
    .line 399
    aput v3, v4, v5

    .line 400
    .line 401
    :goto_5
    iget v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 402
    .line 403
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 404
    .line 405
    aget v5, v4, v5

    .line 406
    .line 407
    aget v4, v4, p3

    .line 408
    .line 409
    cmpl-float v3, v3, v11

    .line 410
    .line 411
    if-eqz v3, :cond_10

    .line 412
    div-float/2addr v2, v5

    .line 413
    goto :goto_6

    .line 414
    .line 415
    :cond_10
    div-float v2, v1, v4

    .line 416
    .line 417
    .line 418
    :goto_6
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 419
    move-result v1

    .line 420
    .line 421
    if-nez v1, :cond_11

    .line 422
    .line 423
    const/high16 v1, 0x40400000    # 3.0f

    .line 424
    .line 425
    div-float v1, v2, v1

    .line 426
    add-float/2addr v1, v14

    .line 427
    goto :goto_7

    .line 428
    :cond_11
    move v1, v14

    .line 429
    .line 430
    :goto_7
    cmpl-float v3, v1, v11

    .line 431
    .line 432
    if-eqz v3, :cond_18

    .line 433
    .line 434
    cmpl-float v3, v1, v9

    .line 435
    .line 436
    if-eqz v3, :cond_18

    .line 437
    .line 438
    iget v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 439
    const/4 v4, 0x3

    .line 440
    .line 441
    if-eq v3, v4, :cond_18

    .line 442
    float-to-double v4, v1

    .line 443
    .line 444
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 445
    .line 446
    cmpg-double v1, v4, v12

    .line 447
    .line 448
    if-gez v1, :cond_12

    .line 449
    move v1, v11

    .line 450
    goto :goto_8

    .line 451
    :cond_12
    move v1, v9

    .line 452
    .line 453
    :goto_8
    if-ne v3, v7, :cond_14

    .line 454
    .line 455
    add-float v1, v14, v2

    .line 456
    .line 457
    cmpg-float v1, v1, v11

    .line 458
    .line 459
    if-gez v1, :cond_13

    .line 460
    .line 461
    .line 462
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 463
    move-result v2

    .line 464
    :cond_13
    move v1, v9

    .line 465
    .line 466
    :cond_14
    iget v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 467
    .line 468
    if-ne v3, v6, :cond_16

    .line 469
    .line 470
    add-float v1, v14, v2

    .line 471
    .line 472
    cmpl-float v1, v1, v9

    .line 473
    .line 474
    if-lez v1, :cond_15

    .line 475
    .line 476
    .line 477
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 478
    move-result v1

    .line 479
    neg-float v2, v1

    .line 480
    :cond_15
    move v1, v11

    .line 481
    .line 482
    :cond_16
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 483
    .line 484
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v4, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    .line 488
    .line 489
    cmpl-float v1, v11, v14

    .line 490
    .line 491
    if-gez v1, :cond_17

    .line 492
    .line 493
    cmpg-float v1, v9, v14

    .line 494
    .line 495
    if-gtz v1, :cond_19

    .line 496
    .line 497
    :cond_17
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 498
    .line 499
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 503
    return-void

    .line 504
    .line 505
    :cond_18
    cmpl-float v2, v11, v1

    .line 506
    .line 507
    if-gez v2, :cond_1a

    .line 508
    .line 509
    cmpg-float v1, v9, v1

    .line 510
    .line 511
    if-gtz v1, :cond_19

    .line 512
    goto :goto_a

    .line 513
    :cond_19
    :goto_9
    return-void

    .line 514
    .line 515
    :cond_1a
    :goto_a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 516
    .line 517
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 521
    return-void

    .line 522
    .line 523
    .line 524
    :cond_1b
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 525
    move-result v1

    .line 526
    .line 527
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 531
    move-result v1

    .line 532
    .line 533
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 534
    const/4 v2, 0x0

    .line 535
    .line 536
    iput-boolean v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 537
    return-void
.end method

.method public processTouchRotateEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "velocityTracker",
            "currentState",
            "motionScene"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move-object/from16 v2, p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    if-eqz v3, :cond_1b

    .line 17
    const/4 v6, -0x1

    .line 18
    .line 19
    const/high16 v7, 0x3f800000    # 1.0f

    .line 20
    .line 21
    const/high16 v9, 0x40000000    # 2.0f

    .line 22
    const/4 v10, 0x1

    .line 23
    .line 24
    if-eq v3, v10, :cond_d

    .line 25
    const/4 v11, 0x2

    .line 26
    .line 27
    if-eq v3, v11, :cond_0

    .line 28
    .line 29
    goto/16 :goto_b

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 36
    .line 37
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v3

    .line 42
    int-to-float v3, v3

    .line 43
    div-float/2addr v3, v9

    .line 44
    .line 45
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    .line 49
    move-result v11

    .line 50
    int-to-float v11, v11

    .line 51
    div-float/2addr v11, v9

    .line 52
    .line 53
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 54
    .line 55
    if-eq v12, v6, :cond_1

    .line 56
    .line 57
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v3

    .line 62
    .line 63
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 64
    .line 65
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 69
    .line 70
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 71
    .line 72
    aget v11, v11, v4

    .line 73
    int-to-float v11, v11

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 77
    move-result v12

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 81
    move-result v13

    .line 82
    add-int/2addr v12, v13

    .line 83
    int-to-float v12, v12

    .line 84
    div-float/2addr v12, v9

    .line 85
    add-float/2addr v11, v12

    .line 86
    .line 87
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 88
    .line 89
    aget v12, v12, v10

    .line 90
    int-to-float v12, v12

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 94
    move-result v13

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 98
    move-result v3

    .line 99
    add-int/2addr v13, v3

    .line 100
    int-to-float v3, v13

    .line 101
    div-float/2addr v3, v9

    .line 102
    add-float/2addr v3, v12

    .line 103
    .line 104
    move/from16 v22, v11

    .line 105
    move v11, v3

    .line 106
    .line 107
    move/from16 v3, v22

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_1
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 111
    .line 112
    if-eq v12, v6, :cond_3

    .line 113
    .line 114
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getMotionController(I)Landroidx/constraintlayout/motion/widget/MotionController;

    .line 118
    move-result-object v12

    .line 119
    .line 120
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    .line 124
    move-result v12

    .line 125
    .line 126
    .line 127
    invoke-virtual {v13, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    move-result-object v12

    .line 129
    .line 130
    if-nez v12, :cond_2

    .line 131
    goto :goto_0

    .line 132
    .line 133
    :cond_2
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 134
    .line 135
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 139
    .line 140
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 141
    .line 142
    aget v3, v3, v4

    .line 143
    int-to-float v3, v3

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    .line 147
    move-result v11

    .line 148
    .line 149
    .line 150
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    .line 151
    move-result v13

    .line 152
    add-int/2addr v11, v13

    .line 153
    int-to-float v11, v11

    .line 154
    div-float/2addr v11, v9

    .line 155
    add-float/2addr v3, v11

    .line 156
    .line 157
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 158
    .line 159
    aget v11, v11, v10

    .line 160
    int-to-float v11, v11

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    .line 164
    move-result v13

    .line 165
    .line 166
    .line 167
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    .line 168
    move-result v12

    .line 169
    add-int/2addr v13, v12

    .line 170
    int-to-float v12, v13

    .line 171
    div-float/2addr v12, v9

    .line 172
    add-float/2addr v11, v12

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_0
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 176
    move-result v9

    .line 177
    sub-float/2addr v9, v3

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 181
    move-result v12

    .line 182
    sub-float/2addr v12, v11

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 186
    move-result v13

    .line 187
    sub-float/2addr v13, v11

    .line 188
    float-to-double v13, v13

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 192
    move-result v15

    .line 193
    sub-float/2addr v15, v3

    .line 194
    .line 195
    const/high16 p4, 0x43b40000    # 360.0f

    .line 196
    float-to-double v4, v15

    .line 197
    .line 198
    .line 199
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 200
    move-result-wide v4

    .line 201
    .line 202
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 203
    sub-float/2addr v13, v11

    .line 204
    float-to-double v13, v13

    .line 205
    .line 206
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 207
    sub-float/2addr v11, v3

    .line 208
    move v15, v9

    .line 209
    float-to-double v8, v11

    .line 210
    .line 211
    .line 212
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 213
    move-result-wide v8

    .line 214
    .line 215
    sub-double v8, v4, v8

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    const-wide v13, 0x4066800000000000L    # 180.0

    .line 221
    mul-double/2addr v8, v13

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    .line 227
    div-double/2addr v8, v13

    .line 228
    double-to-float v8, v8

    .line 229
    .line 230
    const/high16 v9, 0x43a50000    # 330.0f

    .line 231
    .line 232
    cmpl-float v9, v8, v9

    .line 233
    .line 234
    if-lez v9, :cond_4

    .line 235
    .line 236
    sub-float v8, v8, p4

    .line 237
    goto :goto_1

    .line 238
    .line 239
    :cond_4
    const/high16 v9, -0x3c5b0000    # -330.0f

    .line 240
    .line 241
    cmpg-float v9, v8, v9

    .line 242
    .line 243
    if-gez v9, :cond_5

    .line 244
    .line 245
    add-float v8, v8, p4

    .line 246
    .line 247
    .line 248
    :cond_5
    :goto_1
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 249
    move-result v9

    .line 250
    float-to-double v13, v9

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    .line 256
    .line 257
    cmpl-double v9, v13, v16

    .line 258
    .line 259
    if-gtz v9, :cond_6

    .line 260
    .line 261
    iget-boolean v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 262
    .line 263
    if-eqz v9, :cond_19

    .line 264
    .line 265
    :cond_6
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 269
    move-result v9

    .line 270
    .line 271
    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 272
    .line 273
    if-nez v11, :cond_7

    .line 274
    .line 275
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 276
    .line 277
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v11, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 281
    .line 282
    :cond_7
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 283
    .line 284
    if-eq v11, v6, :cond_8

    .line 285
    .line 286
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 287
    .line 288
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 289
    .line 290
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 291
    .line 292
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 293
    .line 294
    move-object/from16 v21, v3

    .line 295
    .line 296
    move-object/from16 v16, v6

    .line 297
    .line 298
    move/from16 v18, v9

    .line 299
    .line 300
    move/from16 v17, v11

    .line 301
    .line 302
    move/from16 v19, v13

    .line 303
    .line 304
    move/from16 v20, v14

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 308
    .line 309
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 310
    .line 311
    aget v6, v3, v10

    .line 312
    float-to-double v13, v6

    .line 313
    .line 314
    .line 315
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    .line 316
    move-result-wide v13

    .line 317
    double-to-float v6, v13

    .line 318
    .line 319
    aput v6, v3, v10

    .line 320
    goto :goto_2

    .line 321
    .line 322
    :cond_8
    move/from16 v18, v9

    .line 323
    .line 324
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 325
    .line 326
    aput p4, v3, v10

    .line 327
    .line 328
    :goto_2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 329
    mul-float/2addr v8, v3

    .line 330
    .line 331
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 332
    .line 333
    aget v3, v3, v10

    .line 334
    div-float/2addr v8, v3

    .line 335
    .line 336
    add-float v9, v18, v8

    .line 337
    .line 338
    .line 339
    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    .line 340
    move-result v3

    .line 341
    const/4 v6, 0x0

    .line 342
    .line 343
    .line 344
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    .line 345
    move-result v3

    .line 346
    .line 347
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 351
    move-result v8

    .line 352
    .line 353
    cmpl-float v9, v3, v8

    .line 354
    .line 355
    if-eqz v9, :cond_c

    .line 356
    .line 357
    cmpl-float v6, v8, v6

    .line 358
    .line 359
    if-eqz v6, :cond_9

    .line 360
    .line 361
    cmpl-float v7, v8, v7

    .line 362
    .line 363
    if-nez v7, :cond_b

    .line 364
    .line 365
    :cond_9
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 366
    .line 367
    if-nez v6, :cond_a

    .line 368
    goto :goto_3

    .line 369
    :cond_a
    const/4 v10, 0x0

    .line 370
    .line 371
    .line 372
    :goto_3
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    .line 373
    .line 374
    :cond_b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v6, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 378
    .line 379
    const/16 v3, 0x3e8

    .line 380
    .line 381
    .line 382
    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 383
    .line 384
    .line 385
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    .line 386
    move-result v3

    .line 387
    .line 388
    .line 389
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    .line 390
    move-result v1

    .line 391
    float-to-double v6, v1

    .line 392
    float-to-double v8, v3

    .line 393
    .line 394
    .line 395
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    .line 396
    move-result-wide v10

    .line 397
    .line 398
    .line 399
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 400
    move-result-wide v6

    .line 401
    sub-double/2addr v6, v4

    .line 402
    .line 403
    .line 404
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 405
    move-result-wide v3

    .line 406
    mul-double/2addr v10, v3

    .line 407
    float-to-double v3, v15

    .line 408
    float-to-double v5, v12

    .line 409
    .line 410
    .line 411
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    .line 412
    move-result-wide v3

    .line 413
    div-double/2addr v10, v3

    .line 414
    double-to-float v1, v10

    .line 415
    .line 416
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 417
    float-to-double v4, v1

    .line 418
    .line 419
    .line 420
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 421
    move-result-wide v4

    .line 422
    double-to-float v1, v4

    .line 423
    .line 424
    iput v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 425
    goto :goto_4

    .line 426
    .line 427
    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 428
    const/4 v3, 0x0

    .line 429
    .line 430
    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 431
    .line 432
    .line 433
    :goto_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 434
    move-result v1

    .line 435
    .line 436
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 440
    move-result v1

    .line 441
    .line 442
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 443
    return-void

    .line 444
    .line 445
    :cond_d
    const/high16 p4, 0x43b40000    # 360.0f

    .line 446
    .line 447
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 448
    .line 449
    const/16 v4, 0x10

    .line 450
    .line 451
    .line 452
    invoke-interface {v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 453
    .line 454
    .line 455
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    .line 456
    move-result v4

    .line 457
    .line 458
    .line 459
    invoke-interface {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    .line 460
    move-result v1

    .line 461
    .line 462
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 466
    move-result v13

    .line 467
    .line 468
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 472
    move-result v5

    .line 473
    int-to-float v5, v5

    .line 474
    div-float/2addr v5, v9

    .line 475
    .line 476
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 480
    move-result v8

    .line 481
    int-to-float v8, v8

    .line 482
    div-float/2addr v8, v9

    .line 483
    .line 484
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    .line 485
    .line 486
    if-eq v11, v6, :cond_e

    .line 487
    .line 488
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 492
    move-result-object v5

    .line 493
    .line 494
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 495
    .line 496
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 497
    .line 498
    .line 499
    invoke-virtual {v8, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 500
    .line 501
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 502
    const/4 v11, 0x0

    .line 503
    .line 504
    aget v8, v8, v11

    .line 505
    int-to-float v8, v8

    .line 506
    .line 507
    .line 508
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 509
    move-result v11

    .line 510
    .line 511
    .line 512
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 513
    move-result v12

    .line 514
    add-int/2addr v11, v12

    .line 515
    int-to-float v11, v11

    .line 516
    div-float/2addr v11, v9

    .line 517
    add-float/2addr v8, v11

    .line 518
    .line 519
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 520
    .line 521
    aget v11, v11, v10

    .line 522
    int-to-float v11, v11

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 526
    move-result v12

    .line 527
    .line 528
    .line 529
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 530
    move-result v5

    .line 531
    :goto_5
    add-int/2addr v12, v5

    .line 532
    int-to-float v5, v12

    .line 533
    div-float/2addr v5, v9

    .line 534
    add-float/2addr v5, v11

    .line 535
    .line 536
    move/from16 v22, v8

    .line 537
    move v8, v5

    .line 538
    .line 539
    move/from16 v5, v22

    .line 540
    goto :goto_6

    .line 541
    .line 542
    :cond_e
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 543
    .line 544
    if-eq v11, v6, :cond_f

    .line 545
    .line 546
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v5, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getMotionController(I)Landroidx/constraintlayout/motion/widget/MotionController;

    .line 550
    move-result-object v5

    .line 551
    .line 552
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    .line 556
    move-result v5

    .line 557
    .line 558
    .line 559
    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 560
    move-result-object v5

    .line 561
    .line 562
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 563
    .line 564
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 565
    .line 566
    .line 567
    invoke-virtual {v8, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 568
    .line 569
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 570
    const/4 v11, 0x0

    .line 571
    .line 572
    aget v8, v8, v11

    .line 573
    int-to-float v8, v8

    .line 574
    .line 575
    .line 576
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 577
    move-result v11

    .line 578
    .line 579
    .line 580
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 581
    move-result v12

    .line 582
    add-int/2addr v11, v12

    .line 583
    int-to-float v11, v11

    .line 584
    div-float/2addr v11, v9

    .line 585
    add-float/2addr v8, v11

    .line 586
    .line 587
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    .line 588
    .line 589
    aget v11, v11, v10

    .line 590
    int-to-float v11, v11

    .line 591
    .line 592
    .line 593
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 594
    move-result v12

    .line 595
    .line 596
    .line 597
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 598
    move-result v5

    .line 599
    goto :goto_5

    .line 600
    .line 601
    .line 602
    :cond_f
    :goto_6
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 603
    move-result v9

    .line 604
    sub-float/2addr v9, v5

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 608
    move-result v2

    .line 609
    sub-float/2addr v2, v8

    .line 610
    float-to-double v11, v2

    .line 611
    float-to-double v14, v9

    .line 612
    .line 613
    .line 614
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 615
    move-result-wide v11

    .line 616
    .line 617
    .line 618
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    .line 619
    move-result-wide v17

    .line 620
    .line 621
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 622
    .line 623
    if-eq v12, v6, :cond_10

    .line 624
    .line 625
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 626
    .line 627
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 628
    .line 629
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 630
    .line 631
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 632
    .line 633
    move-object/from16 v16, v5

    .line 634
    .line 635
    .line 636
    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 637
    .line 638
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 639
    .line 640
    aget v6, v5, v10

    .line 641
    float-to-double v11, v6

    .line 642
    .line 643
    .line 644
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    .line 645
    move-result-wide v11

    .line 646
    double-to-float v6, v11

    .line 647
    .line 648
    aput v6, v5, v10

    .line 649
    goto :goto_7

    .line 650
    .line 651
    :cond_10
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 652
    .line 653
    aput p4, v5, v10

    .line 654
    :goto_7
    add-float/2addr v1, v2

    .line 655
    float-to-double v1, v1

    .line 656
    add-float/2addr v4, v9

    .line 657
    float-to-double v4, v4

    .line 658
    .line 659
    .line 660
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 661
    move-result-wide v1

    .line 662
    .line 663
    .line 664
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    .line 665
    move-result-wide v1

    .line 666
    .line 667
    sub-double v1, v1, v17

    .line 668
    double-to-float v1, v1

    .line 669
    .line 670
    const/high16 v2, 0x427a0000    # 62.5f

    .line 671
    mul-float/2addr v1, v2

    .line 672
    .line 673
    .line 674
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 675
    move-result v2

    .line 676
    .line 677
    const/high16 v4, 0x40400000    # 3.0f

    .line 678
    .line 679
    if-nez v2, :cond_11

    .line 680
    .line 681
    mul-float v2, v1, v4

    .line 682
    .line 683
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 684
    mul-float/2addr v2, v5

    .line 685
    .line 686
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 687
    .line 688
    aget v5, v5, v10

    .line 689
    div-float/2addr v2, v5

    .line 690
    add-float/2addr v2, v13

    .line 691
    :goto_8
    const/4 v3, 0x0

    .line 692
    goto :goto_9

    .line 693
    :cond_11
    move v2, v13

    .line 694
    goto :goto_8

    .line 695
    .line 696
    :goto_9
    cmpl-float v5, v2, v3

    .line 697
    .line 698
    if-eqz v5, :cond_18

    .line 699
    .line 700
    cmpl-float v5, v2, v7

    .line 701
    .line 702
    if-eqz v5, :cond_18

    .line 703
    .line 704
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 705
    const/4 v6, 0x3

    .line 706
    .line 707
    if-eq v5, v6, :cond_18

    .line 708
    .line 709
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 710
    mul-float/2addr v1, v6

    .line 711
    .line 712
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 713
    .line 714
    aget v6, v6, v10

    .line 715
    div-float/2addr v1, v6

    .line 716
    float-to-double v8, v2

    .line 717
    .line 718
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 719
    .line 720
    cmpg-double v2, v8, v10

    .line 721
    .line 722
    if-gez v2, :cond_12

    .line 723
    const/4 v2, 0x0

    .line 724
    goto :goto_a

    .line 725
    :cond_12
    move v2, v7

    .line 726
    :goto_a
    const/4 v6, 0x6

    .line 727
    .line 728
    if-ne v5, v6, :cond_14

    .line 729
    .line 730
    add-float v2, v13, v1

    .line 731
    const/4 v3, 0x0

    .line 732
    .line 733
    cmpg-float v2, v2, v3

    .line 734
    .line 735
    if-gez v2, :cond_13

    .line 736
    .line 737
    .line 738
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 739
    move-result v1

    .line 740
    :cond_13
    move v2, v7

    .line 741
    .line 742
    :cond_14
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 743
    const/4 v6, 0x7

    .line 744
    .line 745
    if-ne v5, v6, :cond_16

    .line 746
    .line 747
    add-float v2, v13, v1

    .line 748
    .line 749
    cmpl-float v2, v2, v7

    .line 750
    .line 751
    if-lez v2, :cond_15

    .line 752
    .line 753
    .line 754
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 755
    move-result v1

    .line 756
    neg-float v1, v1

    .line 757
    :cond_15
    const/4 v2, 0x0

    .line 758
    .line 759
    :cond_16
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 760
    .line 761
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 762
    mul-float/2addr v1, v4

    .line 763
    .line 764
    .line 765
    invoke-virtual {v5, v6, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    .line 766
    const/4 v3, 0x0

    .line 767
    .line 768
    cmpl-float v1, v3, v13

    .line 769
    .line 770
    if-gez v1, :cond_17

    .line 771
    .line 772
    cmpg-float v1, v7, v13

    .line 773
    .line 774
    if-gtz v1, :cond_19

    .line 775
    .line 776
    :cond_17
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 777
    .line 778
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 782
    return-void

    .line 783
    :cond_18
    const/4 v3, 0x0

    .line 784
    .line 785
    cmpl-float v1, v3, v2

    .line 786
    .line 787
    if-gez v1, :cond_1a

    .line 788
    .line 789
    cmpg-float v1, v7, v2

    .line 790
    .line 791
    if-gtz v1, :cond_19

    .line 792
    goto :goto_c

    .line 793
    :cond_19
    :goto_b
    return-void

    .line 794
    .line 795
    :cond_1a
    :goto_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 796
    .line 797
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    .line 801
    return-void

    .line 802
    .line 803
    .line 804
    :cond_1b
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    .line 805
    move-result v1

    .line 806
    .line 807
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 808
    .line 809
    .line 810
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    .line 811
    move-result v1

    .line 812
    .line 813
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 814
    const/4 v11, 0x0

    .line 815
    .line 816
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 817
    return-void
.end method

.method public scrollMove(FF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 6
    move-result v3

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 9
    const/4 v7, 0x1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iput-boolean v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 21
    .line 22
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 23
    .line 24
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 25
    .line 26
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 27
    .line 28
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 32
    .line 33
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    aget v4, v1, v2

    .line 39
    mul-float/2addr v0, v4

    .line 40
    .line 41
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 42
    .line 43
    aget v1, v1, v7

    .line 44
    mul-float/2addr v4, v1

    .line 45
    add-float/2addr v0, v4

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 49
    move-result v0

    .line 50
    float-to-double v0, v0

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    .line 56
    .line 57
    cmpg-double v0, v0, v4

    .line 58
    .line 59
    if-gez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 62
    .line 63
    .line 64
    const v1, 0x3c23d70a    # 0.01f

    .line 65
    .line 66
    aput v1, v0, v2

    .line 67
    .line 68
    aput v1, v0, v7

    .line 69
    .line 70
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 71
    const/4 v1, 0x0

    .line 72
    .line 73
    cmpl-float v4, v0, v1

    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    mul-float/2addr p1, v0

    .line 77
    .line 78
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 79
    .line 80
    aget p2, p2, v2

    .line 81
    div-float/2addr p1, p2

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_2
    iget p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 85
    mul-float/2addr p2, p1

    .line 86
    .line 87
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 88
    .line 89
    aget p1, p1, v7

    .line 90
    .line 91
    div-float p1, p2, p1

    .line 92
    :goto_0
    add-float/2addr v3, p1

    .line 93
    .line 94
    const/high16 p1, 0x3f800000    # 1.0f

    .line 95
    .line 96
    .line 97
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    .line 98
    move-result p1

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    .line 102
    move-result p1

    .line 103
    .line 104
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 108
    move-result p2

    .line 109
    .line 110
    cmpl-float p2, p1, p2

    .line 111
    .line 112
    if-eqz p2, :cond_3

    .line 113
    .line 114
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 118
    :cond_3
    return-void
.end method

.method public scrollUp(FF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    .line 9
    move-result v4

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 12
    .line 13
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 14
    .line 15
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 16
    .line 17
    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 18
    .line 19
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    .line 23
    .line 24
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 27
    .line 28
    aget v3, v2, v0

    .line 29
    .line 30
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 31
    const/4 v6, 0x1

    .line 32
    .line 33
    aget v2, v2, v6

    .line 34
    const/4 v7, 0x0

    .line 35
    .line 36
    cmpl-float v8, v1, v7

    .line 37
    .line 38
    if-eqz v8, :cond_0

    .line 39
    mul-float/2addr p1, v1

    .line 40
    div-float/2addr p1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    mul-float/2addr p2, v5

    .line 43
    .line 44
    div-float p1, p2, v2

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 48
    move-result p2

    .line 49
    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    const/high16 p2, 0x40400000    # 3.0f

    .line 53
    .line 54
    div-float p2, p1, p2

    .line 55
    add-float/2addr v4, p2

    .line 56
    .line 57
    :cond_1
    cmpl-float p2, v4, v7

    .line 58
    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    const/high16 p2, 0x3f800000    # 1.0f

    .line 62
    .line 63
    cmpl-float v1, v4, p2

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    move v1, v6

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v1, v0

    .line 69
    .line 70
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 71
    const/4 v3, 0x3

    .line 72
    .line 73
    if-eq v2, v3, :cond_3

    .line 74
    move v0, v6

    .line 75
    :cond_3
    and-int/2addr v0, v1

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 80
    float-to-double v3, v4

    .line 81
    .line 82
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 83
    .line 84
    cmpg-double v1, v3, v5

    .line 85
    .line 86
    if-gez v1, :cond_4

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    move v7, p2

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {v0, v2, v7, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    .line 92
    :cond_5
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 3
    return-void
.end method

.method public setAutoCompleteMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoCompleteMode"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    .line 3
    return-void
.end method

.method public setDown(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lastTouchX",
            "lastTouchY"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 3
    .line 4
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 5
    return-void
.end method

.method public setMaxAcceleration(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceleration"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    .line 3
    return-void
.end method

.method public setMaxVelocity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocity"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 3
    return-void
.end method

.method public setRTL(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtl"
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x2

    .line 6
    const/4 v5, 0x5

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    .line 11
    .line 12
    aget-object v1, p1, v1

    .line 13
    .line 14
    aput-object v1, p1, v2

    .line 15
    .line 16
    aget-object v1, p1, v4

    .line 17
    .line 18
    aput-object v1, p1, v5

    .line 19
    .line 20
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    .line 21
    .line 22
    aget-object v1, p1, v4

    .line 23
    .line 24
    aput-object v1, p1, v5

    .line 25
    .line 26
    aget-object v1, p1, v3

    .line 27
    .line 28
    aput-object v1, p1, v0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    .line 32
    .line 33
    aget-object v6, p1, v4

    .line 34
    .line 35
    aput-object v6, p1, v2

    .line 36
    .line 37
    aget-object v1, p1, v1

    .line 38
    .line 39
    aput-object v1, p1, v5

    .line 40
    .line 41
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    .line 42
    .line 43
    aget-object v1, p1, v3

    .line 44
    .line 45
    aput-object v1, p1, v5

    .line 46
    .line 47
    aget-object v1, p1, v4

    .line 48
    .line 49
    aput-object v1, p1, v0

    .line 50
    .line 51
    :goto_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    .line 52
    .line 53
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    .line 54
    .line 55
    aget-object p1, p1, v0

    .line 56
    const/4 v0, 0x0

    .line 57
    .line 58
    aget v1, p1, v0

    .line 59
    .line 60
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 61
    .line 62
    aget p1, p1, v3

    .line 63
    .line 64
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 65
    .line 66
    iget p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 67
    .line 68
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    .line 69
    array-length v2, v1

    .line 70
    .line 71
    if-lt p1, v2, :cond_1

    .line 72
    return-void

    .line 73
    .line 74
    :cond_1
    aget-object p1, v1, p1

    .line 75
    .line 76
    aget v0, p1, v0

    .line 77
    .line 78
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 79
    .line 80
    aget p1, p1, v3

    .line 81
    .line 82
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 83
    return-void
.end method

.method public setTouchAnchorLocation(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 3
    .line 4
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    .line 5
    return-void
.end method

.method public setTouchUpMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchUpMode"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 3
    return-void
.end method

.method public setUpTouchEvent(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lastTouchX",
            "lastTouchY"
        }
    .end annotation

    .line 1
    .line 2
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 3
    .line 4
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 8
    return-void
.end method

.method public setupTouch()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    .line 28
    :cond_1
    :goto_0
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 33
    .line 34
    new-instance v1, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$1;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    .line 42
    new-instance v1, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$2;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 49
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "rotation"

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, " , "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method
