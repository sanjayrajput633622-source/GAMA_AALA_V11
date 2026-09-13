.class Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 14
    .line 15
    check-cast p1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    .line 19
    move-result p1

    .line 20
    .line 21
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 22
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
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    .line 4
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    .line 19
    move-result v0

    .line 20
    const/4 v3, -0x1

    .line 21
    const/4 v4, 0x1

    .line 22
    .line 23
    if-ne v0, v4, :cond_2

    .line 24
    .line 25
    if-eq v1, v3, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 34
    .line 35
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 36
    .line 37
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 43
    .line 44
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 45
    .line 46
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 47
    .line 48
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 51
    .line 52
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 58
    .line 59
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_0
    if-eq v2, v3, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 65
    .line 66
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 67
    .line 68
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 69
    .line 70
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 71
    .line 72
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 73
    .line 74
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 80
    .line 81
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 82
    .line 83
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 84
    .line 85
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 86
    .line 87
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 88
    .line 89
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 95
    neg-int v1, v2

    .line 96
    .line 97
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 101
    .line 102
    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 103
    .line 104
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 105
    .line 106
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 107
    .line 108
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 109
    .line 110
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 111
    .line 112
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 118
    .line 119
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 120
    .line 121
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 122
    .line 123
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 124
    .line 125
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 126
    .line 127
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 133
    .line 134
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 135
    .line 136
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 140
    .line 141
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 142
    .line 143
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 144
    .line 145
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 149
    return-void

    .line 150
    .line 151
    :cond_2
    if-eq v1, v3, :cond_3

    .line 152
    .line 153
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 154
    .line 155
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 156
    .line 157
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 158
    .line 159
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 160
    .line 161
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 162
    .line 163
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 164
    .line 165
    .line 166
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 169
    .line 170
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 171
    .line 172
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 173
    .line 174
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 175
    .line 176
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 177
    .line 178
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 184
    .line 185
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 186
    goto :goto_1

    .line 187
    .line 188
    :cond_3
    if-eq v2, v3, :cond_4

    .line 189
    .line 190
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 191
    .line 192
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 193
    .line 194
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 195
    .line 196
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 197
    .line 198
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 199
    .line 200
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 201
    .line 202
    .line 203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 206
    .line 207
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 208
    .line 209
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 210
    .line 211
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 212
    .line 213
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 214
    .line 215
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 216
    .line 217
    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 221
    neg-int v1, v2

    .line 222
    .line 223
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 224
    goto :goto_1

    .line 225
    .line 226
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 227
    .line 228
    iput-boolean v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    .line 229
    .line 230
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 231
    .line 232
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 233
    .line 234
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 235
    .line 236
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 237
    .line 238
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 239
    .line 240
    .line 241
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 244
    .line 245
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 246
    .line 247
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 248
    .line 249
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 250
    .line 251
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 252
    .line 253
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 254
    .line 255
    .line 256
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 259
    .line 260
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 261
    .line 262
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 263
    .line 264
    .line 265
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 266
    .line 267
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 268
    .line 269
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 270
    .line 271
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 272
    .line 273
    .line 274
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->addDependency(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    .line 275
    return-void
.end method

.method public applyToWidget()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 3
    .line 4
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 16
    .line 17
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 26
    .line 27
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    .line 31
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    .line 6
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
    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 8
    .line 9
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 10
    return-void
.end method

.method public supportsWrapComputation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 3
    .line 4
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    :goto_0
    return-void

    .line 13
    .line 14
    :cond_1
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 24
    .line 25
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 26
    .line 27
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 28
    int-to-float p1, p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    .line 32
    move-result v0

    .line 33
    mul-float/2addr p1, v0

    .line 34
    .line 35
    const/high16 v0, 0x3f000000    # 0.5f

    .line 36
    add-float/2addr p1, v0

    .line 37
    float-to-int p1, p1

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 43
    return-void
.end method
