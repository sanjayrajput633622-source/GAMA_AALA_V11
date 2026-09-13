.class Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 4
    return-void
.end method

.method private addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 5
    .line 6
    if-eqz v1, :cond_c

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 12
    .line 13
    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getBarrierType()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getAllowsGoneWidget()Z

    .line 21
    move-result v3

    .line 22
    .line 23
    const/16 v4, 0x8

    .line 24
    const/4 v5, 0x0

    .line 25
    .line 26
    if-eqz v1, :cond_9

    .line 27
    .line 28
    if-eq v1, v2, :cond_6

    .line 29
    const/4 v2, 0x2

    .line 30
    .line 31
    if-eq v1, v2, :cond_3

    .line 32
    const/4 v2, 0x3

    .line 33
    .line 34
    if-eq v1, v2, :cond_0

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 39
    .line 40
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 41
    .line 42
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 43
    .line 44
    :goto_0
    iget v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 45
    .line 46
    if-ge v5, v1, :cond_2

    .line 47
    .line 48
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 49
    .line 50
    aget-object v1, v1, v5

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 56
    move-result v2

    .line 57
    .line 58
    if-ne v2, v4, :cond_1

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_1
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 62
    .line 63
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 64
    .line 65
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 66
    .line 67
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 73
    .line 74
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 83
    .line 84
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 85
    .line 86
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 92
    .line 93
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 94
    .line 95
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 99
    return-void

    .line 100
    .line 101
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 102
    .line 103
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 104
    .line 105
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 106
    .line 107
    :goto_2
    iget v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 108
    .line 109
    if-ge v5, v1, :cond_5

    .line 110
    .line 111
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 112
    .line 113
    aget-object v1, v1, v5

    .line 114
    .line 115
    if-nez v3, :cond_4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 119
    move-result v2

    .line 120
    .line 121
    if-ne v2, v4, :cond_4

    .line 122
    goto :goto_3

    .line 123
    .line 124
    :cond_4
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 125
    .line 126
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 127
    .line 128
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 129
    .line 130
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 131
    .line 132
    .line 133
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 136
    .line 137
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 138
    .line 139
    .line 140
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 143
    goto :goto_2

    .line 144
    .line 145
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 146
    .line 147
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 148
    .line 149
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 150
    .line 151
    .line 152
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 153
    .line 154
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 155
    .line 156
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 157
    .line 158
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 159
    .line 160
    .line 161
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 162
    return-void

    .line 163
    .line 164
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 165
    .line 166
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 167
    .line 168
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 169
    .line 170
    :goto_4
    iget v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 171
    .line 172
    if-ge v5, v1, :cond_8

    .line 173
    .line 174
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 175
    .line 176
    aget-object v1, v1, v5

    .line 177
    .line 178
    if-nez v3, :cond_7

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 182
    move-result v2

    .line 183
    .line 184
    if-ne v2, v4, :cond_7

    .line 185
    goto :goto_5

    .line 186
    .line 187
    :cond_7
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 188
    .line 189
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 190
    .line 191
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 192
    .line 193
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 194
    .line 195
    .line 196
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 199
    .line 200
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 201
    .line 202
    .line 203
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 206
    goto :goto_4

    .line 207
    .line 208
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 209
    .line 210
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 211
    .line 212
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 216
    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 218
    .line 219
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 220
    .line 221
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 222
    .line 223
    .line 224
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 225
    return-void

    .line 226
    .line 227
    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 228
    .line 229
    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 230
    .line 231
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 232
    .line 233
    :goto_6
    iget v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgetsCount:I

    .line 234
    .line 235
    if-ge v5, v1, :cond_b

    .line 236
    .line 237
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/HelperWidget;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 238
    .line 239
    aget-object v1, v1, v5

    .line 240
    .line 241
    if-nez v3, :cond_a

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 245
    move-result v2

    .line 246
    .line 247
    if-ne v2, v4, :cond_a

    .line 248
    goto :goto_7

    .line 249
    .line 250
    :cond_a
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 251
    .line 252
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 253
    .line 254
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 255
    .line 256
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 257
    .line 258
    .line 259
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 262
    .line 263
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 264
    .line 265
    .line 266
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 269
    goto :goto_6

    .line 270
    .line 271
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 272
    .line 273
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 274
    .line 275
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 276
    .line 277
    .line 278
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 279
    .line 280
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 281
    .line 282
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 283
    .line 284
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 285
    .line 286
    .line 287
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 288
    :cond_c
    :goto_8
    return-void
.end method

.method public applyToWidget()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    .line 4
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getBarrierType()I

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 23
    .line 24
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 33
    .line 34
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 38
    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 9
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 6
    return-void
.end method

.method public supportsWrapComputation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 6

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    .line 4
    check-cast p1, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/Barrier;->getBarrierType()I

    .line 8
    move-result v0

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v2

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v5

    .line 24
    .line 25
    if-eqz v5, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 32
    .line 33
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 34
    .line 35
    if-eq v4, v2, :cond_1

    .line 36
    .line 37
    if-ge v5, v4, :cond_2

    .line 38
    :cond_1
    move v4, v5

    .line 39
    .line 40
    :cond_2
    if-ge v3, v5, :cond_0

    .line 41
    move v3, v5

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_3
    if-eqz v0, :cond_5

    .line 45
    const/4 v1, 0x2

    .line 46
    .line 47
    if-ne v0, v1, :cond_4

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/Barrier;->getMargin()I

    .line 54
    move-result p1

    .line 55
    add-int/2addr v3, p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 59
    return-void

    .line 60
    .line 61
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/Barrier;->getMargin()I

    .line 65
    move-result p1

    .line 66
    add-int/2addr v4, p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 70
    return-void
.end method
