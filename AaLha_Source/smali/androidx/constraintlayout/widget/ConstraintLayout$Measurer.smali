.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "l"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    return-void
.end method

.method private isSimilarSpec(III)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lastMeasureSpec",
            "spec",
            "widgetSize"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 19
    move-result p2

    .line 20
    .line 21
    const/high16 v2, 0x40000000    # 2.0f

    .line 22
    .line 23
    if-ne p1, v2, :cond_2

    .line 24
    .line 25
    const/high16 p1, -0x80000000

    .line 26
    .line 27
    if-eq v1, p1, :cond_1

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    :cond_1
    if-ne p3, p2, :cond_2

    .line 32
    return v0

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    return p1
.end method


# virtual methods
.method public captureLayoutInfo(IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthSpec",
            "heightSpec",
            "top",
            "bottom",
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 3
    .line 4
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 5
    .line 6
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 7
    .line 8
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 9
    .line 10
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 11
    .line 12
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 13
    return-void
.end method

.method public final didMeasures()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v0

    .line 41
    .line 42
    if-lez v0, :cond_2

    .line 43
    .line 44
    :goto_1
    if-ge v1, v0, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widget",
            "measure"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_e

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 14
    move-result v3

    .line 15
    .line 16
    const/16 v4, 0x8

    .line 17
    const/4 v5, 0x0

    .line 18
    .line 19
    if-ne v3, v4, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInPlaceholder()Z

    .line 23
    move-result v3

    .line 24
    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 28
    .line 29
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 30
    .line 31
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 32
    return-void

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    goto/16 :goto_e

    .line 41
    .line 42
    :cond_2
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 43
    .line 44
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    .line 46
    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 47
    .line 48
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 49
    .line 50
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 51
    .line 52
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 53
    add-int/2addr v8, v9

    .line 54
    .line 55
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    .line 59
    move-result-object v10

    .line 60
    .line 61
    check-cast v10, Landroid/view/View;

    .line 62
    .line 63
    sget-object v11, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 67
    move-result v12

    .line 68
    .line 69
    aget v12, v11, v12

    .line 70
    const/4 v13, 0x4

    .line 71
    const/4 v14, 0x3

    .line 72
    const/4 v15, 0x2

    .line 73
    const/4 v5, 0x1

    .line 74
    .line 75
    if-eq v12, v5, :cond_b

    .line 76
    .line 77
    if-eq v12, v15, :cond_a

    .line 78
    .line 79
    if-eq v12, v14, :cond_9

    .line 80
    .line 81
    if-eq v12, v13, :cond_3

    .line 82
    const/4 v6, 0x0

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_3
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 87
    const/4 v12, -0x2

    .line 88
    .line 89
    .line 90
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 91
    move-result v6

    .line 92
    .line 93
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 94
    .line 95
    if-ne v9, v5, :cond_4

    .line 96
    move v9, v5

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    const/4 v9, 0x0

    .line 99
    .line 100
    :goto_0
    iget v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 101
    .line 102
    sget v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 103
    .line 104
    if-eq v12, v13, :cond_5

    .line 105
    .line 106
    sget v13, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 107
    .line 108
    if-ne v12, v13, :cond_c

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 112
    move-result v12

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 116
    move-result v13

    .line 117
    .line 118
    if-ne v12, v13, :cond_6

    .line 119
    move v12, v5

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    const/4 v12, 0x0

    .line 122
    .line 123
    :goto_1
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 124
    .line 125
    sget v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 126
    .line 127
    if-eq v13, v14, :cond_8

    .line 128
    .line 129
    if-eqz v9, :cond_8

    .line 130
    .line 131
    if-eqz v9, :cond_7

    .line 132
    .line 133
    if-nez v12, :cond_8

    .line 134
    .line 135
    :cond_7
    instance-of v9, v10, Landroidx/constraintlayout/widget/Placeholder;

    .line 136
    .line 137
    if-nez v9, :cond_8

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    .line 141
    move-result v9

    .line 142
    .line 143
    if-eqz v9, :cond_c

    .line 144
    .line 145
    .line 146
    :cond_8
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 147
    move-result v6

    .line 148
    .line 149
    const/high16 v12, 0x40000000    # 2.0f

    .line 150
    .line 151
    .line 152
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 153
    move-result v6

    .line 154
    goto :goto_2

    .line 155
    .line 156
    :cond_9
    const/high16 v12, 0x40000000    # 2.0f

    .line 157
    .line 158
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalMargin()I

    .line 162
    move-result v13

    .line 163
    add-int/2addr v9, v13

    .line 164
    const/4 v13, -0x1

    .line 165
    .line 166
    .line 167
    invoke-static {v6, v9, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 168
    move-result v6

    .line 169
    goto :goto_2

    .line 170
    .line 171
    :cond_a
    const/high16 v12, 0x40000000    # 2.0f

    .line 172
    .line 173
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 174
    const/4 v13, -0x2

    .line 175
    .line 176
    .line 177
    invoke-static {v6, v9, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 178
    move-result v6

    .line 179
    goto :goto_2

    .line 180
    .line 181
    :cond_b
    const/high16 v12, 0x40000000    # 2.0f

    .line 182
    .line 183
    .line 184
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 185
    move-result v6

    .line 186
    .line 187
    .line 188
    :cond_c
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 189
    move-result v9

    .line 190
    .line 191
    aget v9, v11, v9

    .line 192
    .line 193
    if-eq v9, v5, :cond_15

    .line 194
    .line 195
    if-eq v9, v15, :cond_14

    .line 196
    const/4 v7, 0x3

    .line 197
    .line 198
    if-eq v9, v7, :cond_13

    .line 199
    const/4 v7, 0x4

    .line 200
    .line 201
    if-eq v9, v7, :cond_d

    .line 202
    const/4 v7, 0x0

    .line 203
    .line 204
    goto/16 :goto_5

    .line 205
    .line 206
    :cond_d
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 207
    const/4 v13, -0x2

    .line 208
    .line 209
    .line 210
    invoke-static {v7, v8, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 211
    move-result v7

    .line 212
    .line 213
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 214
    .line 215
    if-ne v8, v5, :cond_e

    .line 216
    move v8, v5

    .line 217
    goto :goto_3

    .line 218
    :cond_e
    const/4 v8, 0x0

    .line 219
    .line 220
    :goto_3
    iget v9, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 221
    .line 222
    sget v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 223
    .line 224
    if-eq v9, v11, :cond_f

    .line 225
    .line 226
    sget v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 227
    .line 228
    if-ne v9, v11, :cond_16

    .line 229
    .line 230
    .line 231
    :cond_f
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 232
    move-result v9

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 236
    move-result v11

    .line 237
    .line 238
    if-ne v9, v11, :cond_10

    .line 239
    move v9, v5

    .line 240
    goto :goto_4

    .line 241
    :cond_10
    const/4 v9, 0x0

    .line 242
    .line 243
    :goto_4
    iget v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 244
    .line 245
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 246
    .line 247
    if-eq v11, v12, :cond_12

    .line 248
    .line 249
    if-eqz v8, :cond_12

    .line 250
    .line 251
    if-eqz v8, :cond_11

    .line 252
    .line 253
    if-nez v9, :cond_12

    .line 254
    .line 255
    :cond_11
    instance-of v8, v10, Landroidx/constraintlayout/widget/Placeholder;

    .line 256
    .line 257
    if-nez v8, :cond_12

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    .line 261
    move-result v8

    .line 262
    .line 263
    if-eqz v8, :cond_16

    .line 264
    .line 265
    .line 266
    :cond_12
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 267
    move-result v7

    .line 268
    .line 269
    const/high16 v12, 0x40000000    # 2.0f

    .line 270
    .line 271
    .line 272
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 273
    move-result v7

    .line 274
    goto :goto_5

    .line 275
    .line 276
    :cond_13
    const/high16 v12, 0x40000000    # 2.0f

    .line 277
    .line 278
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalMargin()I

    .line 282
    move-result v9

    .line 283
    add-int/2addr v8, v9

    .line 284
    const/4 v13, -0x1

    .line 285
    .line 286
    .line 287
    invoke-static {v7, v8, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 288
    move-result v7

    .line 289
    goto :goto_5

    .line 290
    .line 291
    :cond_14
    const/high16 v12, 0x40000000    # 2.0f

    .line 292
    .line 293
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 294
    const/4 v13, -0x2

    .line 295
    .line 296
    .line 297
    invoke-static {v7, v8, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 298
    move-result v7

    .line 299
    goto :goto_5

    .line 300
    .line 301
    :cond_15
    const/high16 v12, 0x40000000    # 2.0f

    .line 302
    .line 303
    .line 304
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 305
    move-result v7

    .line 306
    .line 307
    .line 308
    :cond_16
    :goto_5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 309
    move-result-object v8

    .line 310
    .line 311
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 312
    .line 313
    if-eqz v8, :cond_17

    .line 314
    .line 315
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 316
    .line 317
    .line 318
    invoke-static {v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    .line 319
    move-result v9

    .line 320
    .line 321
    const/16 v11, 0x100

    .line 322
    .line 323
    .line 324
    invoke-static {v9, v11}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 325
    move-result v9

    .line 326
    .line 327
    if-eqz v9, :cond_17

    .line 328
    .line 329
    .line 330
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 331
    move-result v9

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 335
    move-result v11

    .line 336
    .line 337
    if-ne v9, v11, :cond_17

    .line 338
    .line 339
    .line 340
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 341
    move-result v9

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 345
    move-result v11

    .line 346
    .line 347
    if-ge v9, v11, :cond_17

    .line 348
    .line 349
    .line 350
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 351
    move-result v9

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 355
    move-result v11

    .line 356
    .line 357
    if-ne v9, v11, :cond_17

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 361
    move-result v9

    .line 362
    .line 363
    .line 364
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 365
    move-result v8

    .line 366
    .line 367
    if-ge v9, v8, :cond_17

    .line 368
    .line 369
    .line 370
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 371
    move-result v8

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    .line 375
    move-result v9

    .line 376
    .line 377
    if-ne v8, v9, :cond_17

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    .line 381
    move-result v8

    .line 382
    .line 383
    if-nez v8, :cond_17

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastHorizontalMeasureSpec()I

    .line 387
    move-result v8

    .line 388
    .line 389
    .line 390
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 391
    move-result v9

    .line 392
    .line 393
    .line 394
    invoke-direct {v0, v8, v6, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 395
    move-result v8

    .line 396
    .line 397
    if-eqz v8, :cond_17

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastVerticalMeasureSpec()I

    .line 401
    move-result v8

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 405
    move-result v9

    .line 406
    .line 407
    .line 408
    invoke-direct {v0, v8, v7, v9}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    .line 409
    move-result v8

    .line 410
    .line 411
    if-eqz v8, :cond_17

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 415
    move-result v3

    .line 416
    .line 417
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 421
    move-result v3

    .line 422
    .line 423
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    .line 427
    move-result v1

    .line 428
    .line 429
    iput v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 430
    return-void

    .line 431
    .line 432
    :cond_17
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 433
    .line 434
    if-ne v3, v8, :cond_18

    .line 435
    move v9, v5

    .line 436
    goto :goto_6

    .line 437
    :cond_18
    const/4 v9, 0x0

    .line 438
    .line 439
    :goto_6
    if-ne v4, v8, :cond_19

    .line 440
    move v8, v5

    .line 441
    goto :goto_7

    .line 442
    :cond_19
    const/4 v8, 0x0

    .line 443
    .line 444
    :goto_7
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 445
    .line 446
    if-eq v4, v11, :cond_1b

    .line 447
    .line 448
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 449
    .line 450
    if-ne v4, v12, :cond_1a

    .line 451
    goto :goto_8

    .line 452
    :cond_1a
    const/4 v4, 0x0

    .line 453
    goto :goto_9

    .line 454
    :cond_1b
    :goto_8
    move v4, v5

    .line 455
    .line 456
    :goto_9
    if-eq v3, v11, :cond_1d

    .line 457
    .line 458
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 459
    .line 460
    if-ne v3, v11, :cond_1c

    .line 461
    goto :goto_a

    .line 462
    :cond_1c
    const/4 v3, 0x0

    .line 463
    goto :goto_b

    .line 464
    :cond_1d
    :goto_a
    move v3, v5

    .line 465
    :goto_b
    const/4 v11, 0x0

    .line 466
    .line 467
    if-eqz v9, :cond_1e

    .line 468
    .line 469
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 470
    .line 471
    cmpl-float v12, v12, v11

    .line 472
    .line 473
    if-lez v12, :cond_1e

    .line 474
    move v12, v5

    .line 475
    goto :goto_c

    .line 476
    :cond_1e
    const/4 v12, 0x0

    .line 477
    .line 478
    :goto_c
    if-eqz v8, :cond_1f

    .line 479
    .line 480
    iget v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 481
    .line 482
    cmpl-float v11, v13, v11

    .line 483
    .line 484
    if-lez v11, :cond_1f

    .line 485
    move v11, v5

    .line 486
    goto :goto_d

    .line 487
    :cond_1f
    const/4 v11, 0x0

    .line 488
    .line 489
    :goto_d
    if-nez v10, :cond_20

    .line 490
    :goto_e
    return-void

    .line 491
    .line 492
    .line 493
    :cond_20
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 494
    move-result-object v13

    .line 495
    .line 496
    check-cast v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 497
    .line 498
    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    .line 499
    .line 500
    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    .line 501
    .line 502
    if-eq v14, v15, :cond_22

    .line 503
    .line 504
    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    .line 505
    .line 506
    if-eq v14, v15, :cond_22

    .line 507
    .line 508
    if-eqz v9, :cond_22

    .line 509
    .line 510
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 511
    .line 512
    if-nez v9, :cond_22

    .line 513
    .line 514
    if-eqz v8, :cond_22

    .line 515
    .line 516
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 517
    .line 518
    if-eqz v8, :cond_21

    .line 519
    goto :goto_f

    .line 520
    :cond_21
    const/4 v0, -0x1

    .line 521
    const/4 v5, 0x0

    .line 522
    const/4 v14, 0x0

    .line 523
    const/4 v15, 0x0

    .line 524
    .line 525
    goto/16 :goto_17

    .line 526
    .line 527
    :cond_22
    :goto_f
    instance-of v8, v10, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 528
    .line 529
    if-eqz v8, :cond_23

    .line 530
    .line 531
    instance-of v8, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 532
    .line 533
    if-eqz v8, :cond_23

    .line 534
    move-object v8, v1

    .line 535
    .line 536
    check-cast v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 537
    move-object v9, v10

    .line 538
    .line 539
    check-cast v9, Landroidx/constraintlayout/widget/VirtualLayout;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v9, v8, v6, v7}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    .line 543
    goto :goto_10

    .line 544
    .line 545
    .line 546
    :cond_23
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 547
    .line 548
    .line 549
    :goto_10
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 553
    move-result v8

    .line 554
    .line 555
    .line 556
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 557
    move-result v9

    .line 558
    .line 559
    .line 560
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 561
    move-result v14

    .line 562
    .line 563
    iget v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 564
    .line 565
    if-lez v15, :cond_24

    .line 566
    .line 567
    .line 568
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 569
    move-result v15

    .line 570
    goto :goto_11

    .line 571
    :cond_24
    move v15, v8

    .line 572
    .line 573
    :goto_11
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 574
    .line 575
    if-lez v5, :cond_25

    .line 576
    .line 577
    .line 578
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    .line 579
    move-result v15

    .line 580
    .line 581
    :cond_25
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 582
    .line 583
    if-lez v5, :cond_26

    .line 584
    .line 585
    .line 586
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    .line 587
    move-result v5

    .line 588
    .line 589
    :goto_12
    move/from16 v16, v3

    .line 590
    goto :goto_13

    .line 591
    :cond_26
    move v5, v9

    .line 592
    goto :goto_12

    .line 593
    .line 594
    :goto_13
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 595
    .line 596
    if-lez v3, :cond_27

    .line 597
    .line 598
    .line 599
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 600
    move-result v5

    .line 601
    .line 602
    :cond_27
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 603
    .line 604
    .line 605
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    .line 606
    move-result v3

    .line 607
    const/4 v0, 0x1

    .line 608
    .line 609
    .line 610
    invoke-static {v3, v0}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    .line 611
    move-result v3

    .line 612
    .line 613
    if-nez v3, :cond_29

    .line 614
    .line 615
    const/high16 v0, 0x3f000000    # 0.5f

    .line 616
    .line 617
    if-eqz v12, :cond_28

    .line 618
    .line 619
    if-eqz v4, :cond_28

    .line 620
    .line 621
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 622
    int-to-float v4, v5

    .line 623
    mul-float/2addr v4, v3

    .line 624
    add-float/2addr v4, v0

    .line 625
    float-to-int v15, v4

    .line 626
    goto :goto_14

    .line 627
    .line 628
    :cond_28
    if-eqz v11, :cond_29

    .line 629
    .line 630
    if-eqz v16, :cond_29

    .line 631
    .line 632
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 633
    int-to-float v4, v15

    .line 634
    div-float/2addr v4, v3

    .line 635
    add-float/2addr v4, v0

    .line 636
    float-to-int v5, v4

    .line 637
    .line 638
    :cond_29
    :goto_14
    if-ne v8, v15, :cond_2b

    .line 639
    .line 640
    if-eq v9, v5, :cond_2a

    .line 641
    goto :goto_16

    .line 642
    :cond_2a
    :goto_15
    const/4 v0, -0x1

    .line 643
    goto :goto_17

    .line 644
    .line 645
    :cond_2b
    :goto_16
    const/high16 v12, 0x40000000    # 2.0f

    .line 646
    .line 647
    if-eq v8, v15, :cond_2c

    .line 648
    .line 649
    .line 650
    invoke-static {v15, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 651
    move-result v6

    .line 652
    .line 653
    :cond_2c
    if-eq v9, v5, :cond_2d

    .line 654
    .line 655
    .line 656
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 657
    move-result v7

    .line 658
    .line 659
    .line 660
    :cond_2d
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1, v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 667
    move-result v15

    .line 668
    .line 669
    .line 670
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 671
    move-result v5

    .line 672
    .line 673
    .line 674
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 675
    move-result v14

    .line 676
    goto :goto_15

    .line 677
    .line 678
    :goto_17
    if-eq v14, v0, :cond_2e

    .line 679
    const/4 v0, 0x1

    .line 680
    goto :goto_18

    .line 681
    :cond_2e
    const/4 v0, 0x0

    .line 682
    .line 683
    :goto_18
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 684
    .line 685
    if-ne v15, v3, :cond_30

    .line 686
    .line 687
    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 688
    .line 689
    if-eq v5, v3, :cond_2f

    .line 690
    goto :goto_19

    .line 691
    :cond_2f
    const/4 v3, 0x0

    .line 692
    goto :goto_1a

    .line 693
    :cond_30
    :goto_19
    const/4 v3, 0x1

    .line 694
    .line 695
    :goto_1a
    iput-boolean v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 696
    .line 697
    iget-boolean v3, v13, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 698
    .line 699
    if-eqz v3, :cond_31

    .line 700
    const/4 v0, 0x1

    .line 701
    .line 702
    :cond_31
    if-eqz v0, :cond_32

    .line 703
    const/4 v13, -0x1

    .line 704
    .line 705
    if-eq v14, v13, :cond_32

    .line 706
    .line 707
    .line 708
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    .line 709
    move-result v1

    .line 710
    .line 711
    if-eq v1, v14, :cond_32

    .line 712
    const/4 v1, 0x1

    .line 713
    .line 714
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 715
    .line 716
    :cond_32
    iput v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 717
    .line 718
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 719
    .line 720
    iput-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 721
    .line 722
    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 723
    return-void
.end method
