.class public Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final USE_GROUPS:Z = true


# instance fields
.field private container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field private mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedBuildGraph:Z

.field private mNeedRedoMeasures:Z

.field private mRuns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field

.field private runGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->runGroups:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 26
    .line 27
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 40
    .line 41
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 42
    .line 43
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 44
    return-void
.end method

.method private applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;",
            "II",
            "Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ">;",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 3
    .line 4
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 5
    .line 6
    if-nez v0, :cond_c

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 11
    .line 12
    if-eq p1, v1, :cond_c

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    if-nez p6, :cond_1

    .line 21
    .line 22
    new-instance p6, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 23
    .line 24
    .line 25
    invoke-direct {p6, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1
    move-object v7, p6

    .line 30
    .line 31
    iput-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, p1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->add(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 35
    .line 36
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 37
    .line 38
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p3

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result p6

    .line 47
    .line 48
    if-eqz p6, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object p6

    .line 53
    .line 54
    check-cast p6, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 55
    .line 56
    instance-of v0, p6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    move-object v2, p6

    .line 60
    .line 61
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 62
    const/4 v4, 0x0

    .line 63
    move-object v1, p0

    .line 64
    move v3, p2

    .line 65
    move-object v5, p4

    .line 66
    move-object v6, p5

    .line 67
    .line 68
    .line 69
    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v3, p2

    .line 72
    move-object v5, p4

    .line 73
    move-object v6, p5

    .line 74
    :goto_1
    move p2, v3

    .line 75
    move-object p4, v5

    .line 76
    move-object p5, v6

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v3, p2

    .line 79
    move-object v5, p4

    .line 80
    move-object v6, p5

    .line 81
    .line 82
    iget-object p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 83
    .line 84
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 85
    .line 86
    .line 87
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result p3

    .line 93
    .line 94
    if-eqz p3, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object p3

    .line 99
    .line 100
    check-cast p3, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 101
    .line 102
    instance-of p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 103
    .line 104
    if-eqz p4, :cond_4

    .line 105
    move-object v2, p3

    .line 106
    .line 107
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 108
    const/4 v4, 0x1

    .line 109
    move-object v1, p0

    .line 110
    .line 111
    .line 112
    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 113
    goto :goto_2

    .line 114
    :cond_5
    const/4 p2, 0x1

    .line 115
    .line 116
    if-ne v3, p2, :cond_7

    .line 117
    .line 118
    instance-of p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 119
    .line 120
    if-eqz p3, :cond_7

    .line 121
    move-object p3, p1

    .line 122
    .line 123
    check-cast p3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 124
    .line 125
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 126
    .line 127
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 128
    .line 129
    .line 130
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object p3

    .line 132
    .line 133
    .line 134
    :cond_6
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result p4

    .line 136
    .line 137
    if-eqz p4, :cond_7

    .line 138
    .line 139
    .line 140
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object p4

    .line 142
    .line 143
    check-cast p4, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 144
    .line 145
    instance-of p5, p4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 146
    .line 147
    if-eqz p5, :cond_6

    .line 148
    move-object v2, p4

    .line 149
    .line 150
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 151
    const/4 v4, 0x2

    .line 152
    move-object v1, p0

    .line 153
    .line 154
    .line 155
    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 156
    goto :goto_3

    .line 157
    .line 158
    :cond_7
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 159
    .line 160
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 161
    .line 162
    .line 163
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object p3

    .line 165
    .line 166
    .line 167
    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result p4

    .line 169
    .line 170
    if-eqz p4, :cond_9

    .line 171
    .line 172
    .line 173
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object p4

    .line 175
    move-object v2, p4

    .line 176
    .line 177
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 178
    .line 179
    if-ne v2, v5, :cond_8

    .line 180
    .line 181
    iput-boolean p2, v7, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->dual:Z

    .line 182
    :cond_8
    const/4 v4, 0x0

    .line 183
    move-object v1, p0

    .line 184
    .line 185
    .line 186
    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 187
    goto :goto_4

    .line 188
    .line 189
    :cond_9
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 190
    .line 191
    iget-object p3, p3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 192
    .line 193
    .line 194
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    move-result-object p3

    .line 196
    .line 197
    .line 198
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    move-result p4

    .line 200
    .line 201
    if-eqz p4, :cond_b

    .line 202
    .line 203
    .line 204
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    move-result-object p4

    .line 206
    move-object v2, p4

    .line 207
    .line 208
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 209
    .line 210
    if-ne v2, v5, :cond_a

    .line 211
    .line 212
    iput-boolean p2, v7, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->dual:Z

    .line 213
    :cond_a
    const/4 v4, 0x1

    .line 214
    move-object v1, p0

    .line 215
    .line 216
    .line 217
    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 218
    goto :goto_5

    .line 219
    .line 220
    :cond_b
    if-ne v3, p2, :cond_c

    .line 221
    .line 222
    instance-of p2, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 223
    .line 224
    if-eqz p2, :cond_c

    .line 225
    .line 226
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 227
    .line 228
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 229
    .line 230
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 231
    .line 232
    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 234
    move-result-object p1

    .line 235
    .line 236
    .line 237
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    move-result p2

    .line 239
    .line 240
    if-eqz p2, :cond_c

    .line 241
    .line 242
    .line 243
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object p2

    .line 245
    move-object v2, p2

    .line 246
    .line 247
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 248
    const/4 v4, 0x2

    .line 249
    move-object v1, p0

    .line 250
    .line 251
    .line 252
    :try_start_0
    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    goto :goto_6

    .line 254
    :catchall_0
    move-exception v0

    .line 255
    move-object p1, v0

    .line 256
    throw p1

    .line 257
    :cond_c
    :goto_7
    return-void
.end method

.method private basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)Z
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_2a

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    move-object v5, v2

    .line 21
    .line 22
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    .line 24
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 25
    .line 26
    aget-object v4, v2, v3

    .line 27
    const/4 v10, 0x1

    .line 28
    .line 29
    aget-object v2, v2, v10

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    .line 33
    move-result v6

    .line 34
    .line 35
    const/16 v7, 0x8

    .line 36
    .line 37
    if-ne v6, v7, :cond_1

    .line 38
    .line 39
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 43
    .line 44
    const/high16 v11, 0x3f800000    # 1.0f

    .line 45
    .line 46
    cmpg-float v6, v6, v11

    .line 47
    const/4 v7, 0x2

    .line 48
    .line 49
    if-gez v6, :cond_2

    .line 50
    .line 51
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 52
    .line 53
    if-ne v4, v6, :cond_2

    .line 54
    .line 55
    iput v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 56
    .line 57
    :cond_2
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 58
    .line 59
    cmpg-float v6, v6, v11

    .line 60
    .line 61
    if-gez v6, :cond_3

    .line 62
    .line 63
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 64
    .line 65
    if-ne v2, v6, :cond_3

    .line 66
    .line 67
    iput v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 71
    move-result v6

    .line 72
    const/4 v8, 0x0

    .line 73
    .line 74
    cmpl-float v6, v6, v8

    .line 75
    const/4 v8, 0x3

    .line 76
    .line 77
    if-lez v6, :cond_9

    .line 78
    .line 79
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 80
    .line 81
    if-ne v4, v6, :cond_5

    .line 82
    .line 83
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 84
    .line 85
    if-eq v2, v9, :cond_4

    .line 86
    .line 87
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 88
    .line 89
    if-ne v2, v9, :cond_5

    .line 90
    .line 91
    :cond_4
    iput v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_5
    if-ne v2, v6, :cond_7

    .line 95
    .line 96
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 97
    .line 98
    if-eq v4, v9, :cond_6

    .line 99
    .line 100
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 101
    .line 102
    if-ne v4, v9, :cond_7

    .line 103
    .line 104
    :cond_6
    iput v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 105
    goto :goto_1

    .line 106
    .line 107
    :cond_7
    if-ne v4, v6, :cond_9

    .line 108
    .line 109
    if-ne v2, v6, :cond_9

    .line 110
    .line 111
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 112
    .line 113
    if-nez v6, :cond_8

    .line 114
    .line 115
    iput v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 116
    .line 117
    :cond_8
    iget v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 118
    .line 119
    if-nez v6, :cond_9

    .line 120
    .line 121
    iput v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 122
    .line 123
    :cond_9
    :goto_1
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 124
    .line 125
    if-ne v4, v6, :cond_b

    .line 126
    .line 127
    iget v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 128
    .line 129
    if-ne v9, v10, :cond_b

    .line 130
    .line 131
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 132
    .line 133
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 134
    .line 135
    if-eqz v9, :cond_a

    .line 136
    .line 137
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 138
    .line 139
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 140
    .line 141
    if-nez v9, :cond_b

    .line 142
    .line 143
    :cond_a
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 144
    .line 145
    :cond_b
    if-ne v2, v6, :cond_d

    .line 146
    .line 147
    iget v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 148
    .line 149
    if-ne v9, v10, :cond_d

    .line 150
    .line 151
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 152
    .line 153
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 154
    .line 155
    if-eqz v9, :cond_c

    .line 156
    .line 157
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 158
    .line 159
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 160
    .line 161
    if-nez v9, :cond_d

    .line 162
    .line 163
    :cond_c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 164
    .line 165
    :cond_d
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 166
    .line 167
    iput-object v4, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 168
    .line 169
    iget v12, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 170
    .line 171
    iput v12, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 172
    .line 173
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 174
    .line 175
    iput-object v2, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 176
    .line 177
    iget v13, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 178
    .line 179
    iput v13, v9, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    .line 180
    .line 181
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 182
    .line 183
    if-eq v4, v9, :cond_e

    .line 184
    .line 185
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 186
    .line 187
    if-eq v4, v14, :cond_e

    .line 188
    .line 189
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 190
    .line 191
    if-ne v4, v14, :cond_10

    .line 192
    .line 193
    :cond_e
    if-eq v2, v9, :cond_f

    .line 194
    .line 195
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 196
    .line 197
    if-eq v2, v14, :cond_f

    .line 198
    .line 199
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 200
    .line 201
    if-ne v2, v14, :cond_10

    .line 202
    :cond_f
    move-object v8, v2

    .line 203
    move-object v6, v4

    .line 204
    .line 205
    goto/16 :goto_9

    .line 206
    .line 207
    :cond_10
    const/high16 v14, 0x3f000000    # 0.5f

    .line 208
    .line 209
    if-ne v4, v6, :cond_1a

    .line 210
    move-object v15, v6

    .line 211
    .line 212
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 213
    .line 214
    move/from16 v16, v3

    .line 215
    .line 216
    if-eq v2, v6, :cond_13

    .line 217
    .line 218
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 219
    .line 220
    if-ne v2, v3, :cond_11

    .line 221
    goto :goto_3

    .line 222
    .line 223
    :cond_11
    move/from16 v17, v8

    .line 224
    move-object v8, v2

    .line 225
    .line 226
    move/from16 v2, v17

    .line 227
    .line 228
    :cond_12
    :goto_2
    move/from16 v17, v11

    .line 229
    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :cond_13
    :goto_3
    if-ne v12, v8, :cond_15

    .line 233
    .line 234
    if-ne v2, v6, :cond_14

    .line 235
    const/4 v7, 0x0

    .line 236
    const/4 v9, 0x0

    .line 237
    move-object v8, v6

    .line 238
    .line 239
    move-object/from16 v4, p0

    .line 240
    .line 241
    .line 242
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 243
    .line 244
    .line 245
    :cond_14
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 246
    move-result v9

    .line 247
    int-to-float v2, v9

    .line 248
    .line 249
    iget v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 250
    mul-float/2addr v2, v3

    .line 251
    add-float/2addr v2, v14

    .line 252
    float-to-int v7, v2

    .line 253
    .line 254
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 255
    move-object v8, v6

    .line 256
    .line 257
    move-object/from16 v4, p0

    .line 258
    .line 259
    .line 260
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 261
    .line 262
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 263
    .line 264
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 268
    move-result v3

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 272
    .line 273
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 274
    .line 275
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 279
    move-result v3

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 283
    .line 284
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 285
    .line 286
    goto/16 :goto_0

    .line 287
    .line 288
    :cond_15
    if-ne v12, v10, :cond_16

    .line 289
    const/4 v7, 0x0

    .line 290
    const/4 v9, 0x0

    .line 291
    .line 292
    move-object/from16 v4, p0

    .line 293
    move-object v8, v2

    .line 294
    .line 295
    .line 296
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 297
    .line 298
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 299
    .line 300
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 304
    move-result v3

    .line 305
    .line 306
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_16
    move/from16 v18, v8

    .line 311
    move-object v8, v2

    .line 312
    .line 313
    move/from16 v2, v18

    .line 314
    .line 315
    if-ne v12, v7, :cond_18

    .line 316
    .line 317
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 318
    .line 319
    aget-object v3, v3, v16

    .line 320
    .line 321
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 322
    .line 323
    if-eq v3, v6, :cond_17

    .line 324
    .line 325
    if-ne v3, v9, :cond_12

    .line 326
    .line 327
    :cond_17
    iget v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 331
    move-result v3

    .line 332
    int-to-float v3, v3

    .line 333
    mul-float/2addr v2, v3

    .line 334
    add-float/2addr v2, v14

    .line 335
    float-to-int v7, v2

    .line 336
    .line 337
    .line 338
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 339
    move-result v9

    .line 340
    .line 341
    move-object/from16 v4, p0

    .line 342
    .line 343
    .line 344
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 345
    .line 346
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 347
    .line 348
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 352
    move-result v3

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 356
    .line 357
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 358
    .line 359
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 363
    move-result v3

    .line 364
    .line 365
    .line 366
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 367
    .line 368
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 369
    .line 370
    goto/16 :goto_0

    .line 371
    .line 372
    :cond_18
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 373
    .line 374
    move/from16 v17, v11

    .line 375
    .line 376
    aget-object v11, v3, v16

    .line 377
    .line 378
    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 379
    .line 380
    if-eqz v11, :cond_19

    .line 381
    .line 382
    aget-object v3, v3, v10

    .line 383
    .line 384
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 385
    .line 386
    if-nez v3, :cond_1b

    .line 387
    :cond_19
    const/4 v7, 0x0

    .line 388
    const/4 v9, 0x0

    .line 389
    .line 390
    move-object/from16 v4, p0

    .line 391
    .line 392
    .line 393
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 394
    .line 395
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 396
    .line 397
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 401
    move-result v3

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 405
    .line 406
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 407
    .line 408
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 412
    move-result v3

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 416
    .line 417
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    :cond_1a
    move v15, v8

    .line 421
    move-object v8, v2

    .line 422
    move v2, v15

    .line 423
    .line 424
    move/from16 v16, v3

    .line 425
    move-object v15, v6

    .line 426
    .line 427
    goto/16 :goto_2

    .line 428
    .line 429
    :cond_1b
    :goto_4
    if-ne v8, v15, :cond_1c

    .line 430
    .line 431
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 432
    .line 433
    if-eq v4, v6, :cond_1d

    .line 434
    .line 435
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 436
    .line 437
    if-ne v4, v3, :cond_1c

    .line 438
    goto :goto_5

    .line 439
    :cond_1c
    move-object v6, v4

    .line 440
    .line 441
    goto/16 :goto_7

    .line 442
    .line 443
    :cond_1d
    :goto_5
    if-ne v13, v2, :cond_20

    .line 444
    .line 445
    if-ne v4, v6, :cond_1e

    .line 446
    const/4 v7, 0x0

    .line 447
    const/4 v9, 0x0

    .line 448
    move-object v8, v6

    .line 449
    .line 450
    move-object/from16 v4, p0

    .line 451
    .line 452
    .line 453
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 454
    .line 455
    .line 456
    :cond_1e
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 457
    move-result v7

    .line 458
    .line 459
    iget v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 460
    .line 461
    .line 462
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatioSide()I

    .line 463
    move-result v3

    .line 464
    const/4 v4, -0x1

    .line 465
    .line 466
    if-ne v3, v4, :cond_1f

    .line 467
    .line 468
    div-float v2, v17, v2

    .line 469
    :cond_1f
    int-to-float v3, v7

    .line 470
    mul-float/2addr v3, v2

    .line 471
    add-float/2addr v3, v14

    .line 472
    float-to-int v9, v3

    .line 473
    .line 474
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 475
    move-object v8, v6

    .line 476
    .line 477
    move-object/from16 v4, p0

    .line 478
    .line 479
    .line 480
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 481
    .line 482
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 483
    .line 484
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 488
    move-result v3

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 492
    .line 493
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 494
    .line 495
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 499
    move-result v3

    .line 500
    .line 501
    .line 502
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 503
    .line 504
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 505
    .line 506
    goto/16 :goto_0

    .line 507
    .line 508
    :cond_20
    if-ne v13, v10, :cond_21

    .line 509
    const/4 v7, 0x0

    .line 510
    const/4 v9, 0x0

    .line 511
    move-object v8, v6

    .line 512
    move-object v6, v4

    .line 513
    .line 514
    move-object/from16 v4, p0

    .line 515
    .line 516
    .line 517
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 518
    .line 519
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 520
    .line 521
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 525
    move-result v3

    .line 526
    .line 527
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 528
    .line 529
    goto/16 :goto_0

    .line 530
    :cond_21
    move-object v3, v6

    .line 531
    move-object v6, v4

    .line 532
    .line 533
    if-ne v13, v7, :cond_24

    .line 534
    .line 535
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 536
    .line 537
    aget-object v2, v2, v10

    .line 538
    move-object v4, v8

    .line 539
    .line 540
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 541
    .line 542
    if-eq v2, v8, :cond_23

    .line 543
    .line 544
    if-ne v2, v9, :cond_22

    .line 545
    goto :goto_6

    .line 546
    :cond_22
    move-object v8, v4

    .line 547
    goto :goto_7

    .line 548
    .line 549
    :cond_23
    :goto_6
    iget v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 550
    .line 551
    .line 552
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 553
    move-result v7

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 557
    move-result v3

    .line 558
    int-to-float v3, v3

    .line 559
    mul-float/2addr v2, v3

    .line 560
    add-float/2addr v2, v14

    .line 561
    float-to-int v9, v2

    .line 562
    .line 563
    move-object/from16 v4, p0

    .line 564
    .line 565
    .line 566
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 567
    .line 568
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 569
    .line 570
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 574
    move-result v3

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 578
    .line 579
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 580
    .line 581
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 585
    move-result v3

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 589
    .line 590
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 591
    .line 592
    goto/16 :goto_0

    .line 593
    :cond_24
    move-object v4, v8

    .line 594
    .line 595
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 596
    .line 597
    aget-object v9, v8, v7

    .line 598
    .line 599
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 600
    .line 601
    if-eqz v9, :cond_25

    .line 602
    .line 603
    aget-object v2, v8, v2

    .line 604
    .line 605
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 606
    .line 607
    if-nez v2, :cond_22

    .line 608
    :cond_25
    const/4 v7, 0x0

    .line 609
    const/4 v9, 0x0

    .line 610
    move-object v6, v3

    .line 611
    move-object v8, v4

    .line 612
    .line 613
    move-object/from16 v4, p0

    .line 614
    .line 615
    .line 616
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 617
    .line 618
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 619
    .line 620
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 624
    move-result v3

    .line 625
    .line 626
    .line 627
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 628
    .line 629
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 630
    .line 631
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 635
    move-result v3

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 639
    .line 640
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 641
    .line 642
    goto/16 :goto_0

    .line 643
    .line 644
    :goto_7
    if-ne v6, v15, :cond_0

    .line 645
    .line 646
    if-ne v8, v15, :cond_0

    .line 647
    .line 648
    if-eq v12, v10, :cond_27

    .line 649
    .line 650
    if-ne v13, v10, :cond_26

    .line 651
    goto :goto_8

    .line 652
    .line 653
    :cond_26
    if-ne v13, v7, :cond_0

    .line 654
    .line 655
    if-ne v12, v7, :cond_0

    .line 656
    .line 657
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 658
    .line 659
    aget-object v3, v2, v16

    .line 660
    .line 661
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 662
    .line 663
    if-ne v3, v6, :cond_0

    .line 664
    .line 665
    aget-object v2, v2, v10

    .line 666
    .line 667
    if-ne v2, v6, :cond_0

    .line 668
    .line 669
    iget v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 670
    .line 671
    iget v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 675
    move-result v4

    .line 676
    int-to-float v4, v4

    .line 677
    mul-float/2addr v2, v4

    .line 678
    add-float/2addr v2, v14

    .line 679
    float-to-int v7, v2

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 683
    move-result v2

    .line 684
    int-to-float v2, v2

    .line 685
    mul-float/2addr v3, v2

    .line 686
    add-float/2addr v3, v14

    .line 687
    float-to-int v9, v3

    .line 688
    move-object v8, v6

    .line 689
    .line 690
    move-object/from16 v4, p0

    .line 691
    .line 692
    .line 693
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 694
    .line 695
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 696
    .line 697
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 701
    move-result v3

    .line 702
    .line 703
    .line 704
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 705
    .line 706
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 707
    .line 708
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 712
    move-result v3

    .line 713
    .line 714
    .line 715
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 716
    .line 717
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 718
    .line 719
    goto/16 :goto_0

    .line 720
    .line 721
    :cond_27
    :goto_8
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 722
    const/4 v7, 0x0

    .line 723
    const/4 v9, 0x0

    .line 724
    move-object v8, v6

    .line 725
    .line 726
    move-object/from16 v4, p0

    .line 727
    .line 728
    .line 729
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 730
    .line 731
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 732
    .line 733
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 737
    move-result v3

    .line 738
    .line 739
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 740
    .line 741
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 742
    .line 743
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 747
    move-result v3

    .line 748
    .line 749
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 750
    .line 751
    goto/16 :goto_0

    .line 752
    .line 753
    .line 754
    :goto_9
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 755
    move-result v2

    .line 756
    .line 757
    if-ne v6, v9, :cond_28

    .line 758
    .line 759
    .line 760
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 761
    move-result v2

    .line 762
    .line 763
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 764
    .line 765
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 766
    sub-int/2addr v2, v3

    .line 767
    .line 768
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 769
    .line 770
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 771
    sub-int/2addr v2, v3

    .line 772
    .line 773
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 774
    move-object v6, v4

    .line 775
    :cond_28
    move v7, v2

    .line 776
    .line 777
    .line 778
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 779
    move-result v2

    .line 780
    .line 781
    if-ne v8, v9, :cond_29

    .line 782
    .line 783
    .line 784
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 785
    move-result v2

    .line 786
    .line 787
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 788
    .line 789
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 790
    sub-int/2addr v2, v3

    .line 791
    .line 792
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 793
    .line 794
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    .line 795
    sub-int/2addr v2, v3

    .line 796
    .line 797
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 798
    move-object v8, v3

    .line 799
    .line 800
    :cond_29
    move-object/from16 v4, p0

    .line 801
    move v9, v2

    .line 802
    .line 803
    .line 804
    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 805
    .line 806
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 807
    .line 808
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 812
    move-result v3

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 816
    .line 817
    iget-object v2, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 818
    .line 819
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 823
    move-result v3

    .line 824
    .line 825
    .line 826
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 827
    .line 828
    iput-boolean v10, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 829
    .line 830
    goto/16 :goto_0

    .line 831
    .line 832
    :cond_2a
    move/from16 v16, v3

    .line 833
    return v16
.end method

.method private computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v3, v0, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->computeWrapSize(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)J

    .line 23
    move-result-wide v4

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 27
    move-result-wide v1

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    long-to-int p1, v1

    .line 32
    return p1
.end method

.method private displayGraph()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "digraph {\n"

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "\n}\n"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string v3, "content:<<\n"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "\n>>"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 5
    .line 6
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 23
    .line 24
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    move-object v5, v2

    .line 28
    .line 29
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 30
    .line 31
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 32
    const/4 v10, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    .line 35
    move-object/from16 v4, p0

    .line 36
    .line 37
    move/from16 v6, p2

    .line 38
    .line 39
    move-object/from16 v9, p3

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v4 .. v10}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 50
    .line 51
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 52
    .line 53
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 54
    .line 55
    const/16 v17, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    .line 58
    move-object/from16 v11, p0

    .line 59
    .line 60
    move/from16 v13, p2

    .line 61
    .line 62
    move-object/from16 v16, p3

    .line 63
    .line 64
    .line 65
    invoke-direct/range {v11 .. v17}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 69
    .line 70
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v2

    .line 79
    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 87
    .line 88
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 89
    .line 90
    if-eqz v3, :cond_4

    .line 91
    move-object v12, v2

    .line 92
    .line 93
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 94
    .line 95
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 96
    .line 97
    const/16 v17, 0x0

    .line 98
    const/4 v14, 0x1

    .line 99
    .line 100
    move-object/from16 v11, p0

    .line 101
    .line 102
    move/from16 v13, p2

    .line 103
    .line 104
    move-object/from16 v16, p3

    .line 105
    .line 106
    .line 107
    invoke-direct/range {v11 .. v17}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_4
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 111
    .line 112
    if-eqz v3, :cond_3

    .line 113
    .line 114
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 115
    .line 116
    iget-object v12, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 117
    .line 118
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 119
    .line 120
    const/16 v17, 0x0

    .line 121
    const/4 v14, 0x1

    .line 122
    .line 123
    move-object/from16 v11, p0

    .line 124
    .line 125
    move/from16 v13, p2

    .line 126
    .line 127
    move-object/from16 v16, p3

    .line 128
    .line 129
    .line 130
    invoke-direct/range {v11 .. v17}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 131
    goto :goto_1

    .line 132
    :cond_5
    const/4 v1, 0x1

    .line 133
    .line 134
    move/from16 v13, p2

    .line 135
    .line 136
    if-ne v13, v1, :cond_7

    .line 137
    .line 138
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 139
    .line 140
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 141
    .line 142
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 143
    .line 144
    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    move-result v1

    .line 151
    .line 152
    if-eqz v1, :cond_7

    .line 153
    .line 154
    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 159
    .line 160
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 161
    .line 162
    if-eqz v2, :cond_6

    .line 163
    move-object v12, v1

    .line 164
    .line 165
    check-cast v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 166
    const/4 v15, 0x0

    .line 167
    .line 168
    const/16 v17, 0x0

    .line 169
    const/4 v14, 0x2

    .line 170
    .line 171
    move-object/from16 v11, p0

    .line 172
    .line 173
    move-object/from16 v16, p3

    .line 174
    .line 175
    .line 176
    invoke-direct/range {v11 .. v17}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 177
    .line 178
    :cond_6
    move/from16 v13, p2

    .line 179
    goto :goto_2

    .line 180
    :cond_7
    return-void
.end method

.method private generateChainDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    iget v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v2, "subgraph "

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v2, "cluster_"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v2, "_h"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    const-string v2, "_v"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    :goto_0
    const-string v2, " {\n"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    const-string v2, ""

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v3

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 62
    .line 63
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    const-string v4, "_HORIZONTAL"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_1
    const-string v4, "_VERTICAL"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    :goto_2
    const-string v4, ";\n"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_2
    const-string p1, "}\n"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    return-object p1
.end method

.method private generateDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 16
    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    .line 24
    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 30
    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 33
    move-result v4

    .line 34
    and-int/2addr v3, v4

    .line 35
    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 39
    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result v3

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    return-object p2

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->nodeDefinition(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->isCenteredConnection(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)Z

    .line 56
    move-result v3

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v0, v3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v1, v3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 67
    .line 68
    if-eqz v4, :cond_1

    .line 69
    move-object v5, p1

    .line 70
    .line 71
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 72
    .line 73
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v5, v3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    :cond_1
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 80
    const/4 v5, 0x0

    .line 81
    .line 82
    const-string v6, " -> "

    .line 83
    .line 84
    const-string v7, "\n"

    .line 85
    .line 86
    if-nez v3, :cond_7

    .line 87
    .line 88
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 89
    .line 90
    if-eqz v3, :cond_2

    .line 91
    move-object v8, p1

    .line 92
    .line 93
    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 94
    .line 95
    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 96
    .line 97
    if-nez v8, :cond_2

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_2
    if-nez v4, :cond_3

    .line 102
    .line 103
    if-eqz v3, :cond_b

    .line 104
    move-object v3, p1

    .line 105
    .line 106
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 107
    .line 108
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 109
    const/4 v4, 0x1

    .line 110
    .line 111
    if-ne v3, v4, :cond_b

    .line 112
    .line 113
    :cond_3
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 120
    .line 121
    if-eq v3, v4, :cond_5

    .line 122
    .line 123
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 124
    .line 125
    if-ne v3, v4, :cond_4

    .line 126
    goto :goto_0

    .line 127
    .line 128
    :cond_4
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 129
    .line 130
    if-ne v3, v0, :cond_b

    .line 131
    .line 132
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 136
    move-result v0

    .line 137
    .line 138
    cmpl-float v0, v0, v5

    .line 139
    .line 140
    if-lez v0, :cond_b

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v0, "_VERTICAL -> "

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v0, "_HORIZONTAL;\n"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    goto/16 :goto_3

    .line 174
    .line 175
    :cond_5
    :goto_0
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 176
    .line 177
    .line 178
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 179
    move-result v3

    .line 180
    .line 181
    if-nez v3, :cond_6

    .line 182
    .line 183
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 184
    .line 185
    .line 186
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 187
    move-result v3

    .line 188
    .line 189
    if-eqz v3, :cond_6

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    :cond_6
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 217
    .line 218
    .line 219
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 220
    move-result v3

    .line 221
    .line 222
    if-eqz v3, :cond_b

    .line 223
    .line 224
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 225
    .line 226
    .line 227
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 228
    move-result v3

    .line 229
    .line 230
    if-nez v3, :cond_b

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 237
    move-result-object v0

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :cond_7
    :goto_1
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 261
    move-result-object v3

    .line 262
    .line 263
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 264
    .line 265
    if-eq v3, v4, :cond_9

    .line 266
    .line 267
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 268
    .line 269
    if-ne v3, v4, :cond_8

    .line 270
    goto :goto_2

    .line 271
    .line 272
    :cond_8
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 273
    .line 274
    if-ne v3, v0, :cond_b

    .line 275
    .line 276
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    .line 280
    move-result v0

    .line 281
    .line 282
    cmpl-float v0, v0, v5

    .line 283
    .line 284
    if-lez v0, :cond_b

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v0, "_HORIZONTAL -> "

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v0, "_VERTICAL;\n"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    goto :goto_3

    .line 317
    .line 318
    :cond_9
    :goto_2
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 319
    .line 320
    .line 321
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 322
    move-result v3

    .line 323
    .line 324
    if-nez v3, :cond_a

    .line 325
    .line 326
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 327
    .line 328
    .line 329
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 330
    move-result v3

    .line 331
    .line 332
    if-eqz v3, :cond_a

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 349
    move-result-object v0

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    goto :goto_3

    .line 357
    .line 358
    :cond_a
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 359
    .line 360
    .line 361
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 362
    move-result v3

    .line 363
    .line 364
    if-eqz v3, :cond_b

    .line 365
    .line 366
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 367
    .line 368
    .line 369
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 370
    move-result v3

    .line 371
    .line 372
    if-nez v3, :cond_b

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 379
    move-result-object v0

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 389
    move-result-object v0

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    :cond_b
    :goto_3
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 398
    .line 399
    if-eqz v0, :cond_c

    .line 400
    .line 401
    check-cast p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 402
    .line 403
    .line 404
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateChainDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;Ljava/lang/String;)Ljava/lang/String;

    .line 405
    move-result-object p1

    .line 406
    return-object p1

    .line 407
    .line 408
    .line 409
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    move-result-object p1

    .line 411
    return-object p1
.end method

.method private generateDisplayNode(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p3

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_5

    .line 18
    .line 19
    .line 20
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v3, "\n"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v2, " -> "

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    iget v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 71
    .line 72
    if-gtz v2, :cond_0

    .line 73
    .line 74
    if-nez p2, :cond_0

    .line 75
    .line 76
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 77
    .line 78
    instance-of v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    .line 79
    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "["

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    iget v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 100
    .line 101
    if-lez v2, :cond_1

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "label=\""

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    iget v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v1, "\""

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    if-eqz p2, :cond_1

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v1, ","

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    :cond_1
    if-eqz p2, :cond_2

    .line 150
    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v1, " style=dashed "

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    :cond_2
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 169
    .line 170
    instance-of v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    .line 171
    .line 172
    if-eqz v2, :cond_3

    .line 173
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v1, " style=bold,color=gray "

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v1, "]"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    .line 229
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 231
    return-object p1
.end method

.method private isCenteredConnection(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 21
    .line 22
    if-eq v3, p2, :cond_0

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p2

    .line 32
    move v0, v1

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 45
    .line 46
    if-eq v3, p1, :cond_2

    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_3
    if-lez v2, :cond_4

    .line 52
    .line 53
    if-lez v0, :cond_4

    .line 54
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_4
    return v1
.end method

.method private measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 3
    .line 4
    iput-object p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    .line 6
    iput-object p4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 7
    .line 8
    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 9
    .line 10
    iput p5, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 16
    .line 17
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 18
    .line 19
    iget p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 23
    .line 24
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 25
    .line 26
    iget p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 30
    .line 31
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 32
    .line 33
    iget-boolean p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 37
    .line 38
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 39
    .line 40
    iget p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 44
    return-void
.end method

.method private nodeDefinition(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    :goto_0
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v5, "_HORIZONTAL"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    const-string v5, "_VERTICAL"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    :goto_1
    const-string v5, " [shape=none, label=<"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v5, "<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v5, "  <TR>"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v5, " BGCOLOR=\"green\""

    .line 59
    .line 60
    const-string v6, "    <TD "

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 68
    .line 69
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 70
    .line 71
    if-eqz v7, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    :cond_2
    const-string v7, " PORT=\"LEFT\" BORDER=\"1\">L</TD>"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    goto :goto_2

    .line 81
    .line 82
    .line 83
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 86
    .line 87
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 88
    .line 89
    if-eqz v7, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    :cond_4
    const-string v7, " PORT=\"TOP\" BORDER=\"1\">T</TD>"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    :goto_2
    const-string v7, "    <TD BORDER=\"1\" "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 105
    .line 106
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 107
    .line 108
    if-eqz v7, :cond_5

    .line 109
    .line 110
    iget-object v8, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 111
    .line 112
    iget-boolean v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 113
    .line 114
    if-nez v8, :cond_5

    .line 115
    .line 116
    const-string v7, " BGCOLOR=\"green\" "

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_5
    if-eqz v7, :cond_6

    .line 123
    .line 124
    const-string v7, " BGCOLOR=\"lightgray\" "

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    goto :goto_3

    .line 129
    .line 130
    :cond_6
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 131
    .line 132
    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 133
    .line 134
    if-eqz v7, :cond_7

    .line 135
    .line 136
    const-string v7, " BGCOLOR=\"yellow\" "

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    :cond_7
    :goto_3
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 142
    .line 143
    if-ne v3, v7, :cond_8

    .line 144
    .line 145
    const-string v3, "style=\"dashed\""

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    :cond_8
    const-string v3, ">"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    if-eqz v4, :cond_9

    .line 159
    .line 160
    const-string v1, " ["

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    iget v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->groupIndex:I

    .line 166
    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v1, "/"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    sget v1, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v1, "]"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    :cond_9
    const-string v1, " </TD>"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    if-nez v0, :cond_b

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 198
    .line 199
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 200
    .line 201
    if-eqz p1, :cond_a

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    :cond_a
    const-string p1, " PORT=\"RIGHT\" BORDER=\"1\">R</TD>"

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    goto :goto_4

    .line 211
    .line 212
    .line 213
    :cond_b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    move-object v0, p1

    .line 215
    .line 216
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 217
    .line 218
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 219
    .line 220
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 221
    .line 222
    if-eqz v0, :cond_c

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    :cond_c
    const-string v0, " PORT=\"BASELINE\" BORDER=\"1\">b</TD>"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 236
    .line 237
    iget-boolean p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 238
    .line 239
    if-eqz p1, :cond_d

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    :cond_d
    const-string p1, " PORT=\"BOTTOM\" BORDER=\"1\">B</TD>"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    :goto_4
    const-string p1, "  </TR></TABLE>"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    const-string p1, ">];\n"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object p1

    .line 262
    return-object p1
.end method


# virtual methods
.method public buildGraph()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph(Ljava/util/ArrayList;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    return-void
.end method

.method public buildGraph(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 13
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v3, :cond_1

    .line 14
    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v3, :cond_2

    .line 17
    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    :cond_2
    if-nez v1, :cond_3

    .line 18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 19
    :cond_3
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_4
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_1
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v3, :cond_5

    .line 23
    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    :cond_5
    if-nez v1, :cond_6

    .line 24
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 25
    :cond_6
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_7
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_2
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-eqz v3, :cond_0

    .line 28
    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 31
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->clear()V

    goto :goto_3

    .line 32
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 33
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-ne v1, v2, :cond_b

    goto :goto_4

    .line 34
    :cond_b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->apply()V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public defineTerminalWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 6

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 3
    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 31
    .line 32
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    .line 33
    .line 34
    aput-boolean v4, v5, v1

    .line 35
    .line 36
    aput-boolean v4, v5, v4

    .line 37
    .line 38
    instance-of v3, v3, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 39
    .line 40
    if-eqz v3, :cond_0

    .line 41
    move v2, v4

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    if-nez v2, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v2

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 63
    .line 64
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 65
    .line 66
    if-ne p1, v3, :cond_2

    .line 67
    move v5, v4

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move v5, v1

    .line 70
    .line 71
    :goto_2
    if-ne p2, v3, :cond_3

    .line 72
    move v3, v4

    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move v3, v1

    .line 75
    .line 76
    .line 77
    :goto_3
    invoke-virtual {v2, v5, v3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidgets(ZZ)V

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    return-void
.end method

.method public directMeasure(Z)Z
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 33
    .line 34
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 35
    .line 36
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 40
    .line 41
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 53
    .line 54
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 62
    .line 63
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 67
    .line 68
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)Z

    .line 74
    move-result v0

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    return v1

    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    .line 88
    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 96
    const/4 v3, 0x1

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    iget-boolean v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 103
    .line 104
    if-eqz v4, :cond_4

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 108
    .line 109
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 113
    move-result v4

    .line 114
    .line 115
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 119
    move-result v5

    .line 120
    .line 121
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 122
    .line 123
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 124
    .line 125
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 129
    .line 130
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 131
    .line 132
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 133
    .line 134
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 141
    .line 142
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 143
    .line 144
    if-eq v0, v6, :cond_5

    .line 145
    .line 146
    if-ne v2, v6, :cond_9

    .line 147
    .line 148
    :cond_5
    if-eqz p1, :cond_7

    .line 149
    .line 150
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 154
    move-result-object v6

    .line 155
    .line 156
    .line 157
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    move-result v7

    .line 159
    .line 160
    if-eqz v7, :cond_7

    .line 161
    .line 162
    .line 163
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    move-result-object v7

    .line 165
    .line 166
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 170
    move-result v7

    .line 171
    .line 172
    if-nez v7, :cond_6

    .line 173
    move p1, v1

    .line 174
    .line 175
    :cond_7
    if-eqz p1, :cond_8

    .line 176
    .line 177
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 178
    .line 179
    if-ne v0, v6, :cond_8

    .line 180
    .line 181
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 182
    .line 183
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 187
    .line 188
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 189
    .line 190
    .line 191
    invoke-direct {p0, v6, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 192
    move-result v7

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 196
    .line 197
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 198
    .line 199
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 200
    .line 201
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 205
    move-result v6

    .line 206
    .line 207
    .line 208
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 209
    .line 210
    :cond_8
    if-eqz p1, :cond_9

    .line 211
    .line 212
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 213
    .line 214
    if-ne v2, p1, :cond_9

    .line 215
    .line 216
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 217
    .line 218
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 222
    .line 223
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 227
    move-result v6

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 231
    .line 232
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 233
    .line 234
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 235
    .line 236
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 240
    move-result p1

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 244
    .line 245
    :cond_9
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 246
    .line 247
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 248
    .line 249
    aget-object v6, v6, v1

    .line 250
    .line 251
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 252
    .line 253
    if-eq v6, v7, :cond_b

    .line 254
    .line 255
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 256
    .line 257
    if-ne v6, v8, :cond_a

    .line 258
    goto :goto_1

    .line 259
    :cond_a
    move p1, v1

    .line 260
    goto :goto_2

    .line 261
    .line 262
    .line 263
    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 264
    move-result p1

    .line 265
    add-int/2addr p1, v4

    .line 266
    .line 267
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 268
    .line 269
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 270
    .line 271
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 275
    .line 276
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 277
    .line 278
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 279
    .line 280
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 281
    sub-int/2addr p1, v4

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 288
    .line 289
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 290
    .line 291
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 292
    .line 293
    aget-object v4, v4, v3

    .line 294
    .line 295
    if-eq v4, v7, :cond_c

    .line 296
    .line 297
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 298
    .line 299
    if-ne v4, v6, :cond_d

    .line 300
    .line 301
    .line 302
    :cond_c
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 303
    move-result p1

    .line 304
    add-int/2addr p1, v5

    .line 305
    .line 306
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 307
    .line 308
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 309
    .line 310
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 314
    .line 315
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 316
    .line 317
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 318
    .line 319
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 320
    sub-int/2addr p1, v5

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 324
    .line 325
    .line 326
    :cond_d
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 327
    move p1, v3

    .line 328
    .line 329
    :goto_2
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 333
    move-result-object v4

    .line 334
    .line 335
    .line 336
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 337
    move-result v5

    .line 338
    .line 339
    if-eqz v5, :cond_f

    .line 340
    .line 341
    .line 342
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 343
    move-result-object v5

    .line 344
    .line 345
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 346
    .line 347
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 348
    .line 349
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 350
    .line 351
    if-ne v6, v7, :cond_e

    .line 352
    .line 353
    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 354
    .line 355
    if-nez v6, :cond_e

    .line 356
    goto :goto_3

    .line 357
    .line 358
    .line 359
    :cond_e
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 360
    goto :goto_3

    .line 361
    .line 362
    :cond_f
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 366
    move-result-object v4

    .line 367
    .line 368
    .line 369
    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    move-result v5

    .line 371
    .line 372
    if-eqz v5, :cond_14

    .line 373
    .line 374
    .line 375
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    move-result-object v5

    .line 377
    .line 378
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 379
    .line 380
    if-nez p1, :cond_11

    .line 381
    .line 382
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 383
    .line 384
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 385
    .line 386
    if-ne v6, v7, :cond_11

    .line 387
    goto :goto_4

    .line 388
    .line 389
    :cond_11
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 390
    .line 391
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 392
    .line 393
    if-nez v6, :cond_12

    .line 394
    goto :goto_5

    .line 395
    .line 396
    :cond_12
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 397
    .line 398
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 399
    .line 400
    if-nez v6, :cond_13

    .line 401
    .line 402
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 403
    .line 404
    if-nez v6, :cond_13

    .line 405
    goto :goto_5

    .line 406
    .line 407
    :cond_13
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 408
    .line 409
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 410
    .line 411
    if-nez v6, :cond_10

    .line 412
    .line 413
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 414
    .line 415
    if-nez v6, :cond_10

    .line 416
    .line 417
    instance-of v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    .line 418
    .line 419
    if-nez v5, :cond_10

    .line 420
    goto :goto_5

    .line 421
    :cond_14
    move v1, v3

    .line 422
    .line 423
    :goto_5
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 427
    .line 428
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 432
    return v1
.end method

.method public directMeasureSetup(Z)Z
    .locals 4

    .line 1
    .line 2
    iget-boolean p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 29
    .line 30
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 31
    .line 32
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 33
    .line 34
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 35
    .line 36
    iput-boolean v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 37
    .line 38
    iput-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 42
    .line 43
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 44
    .line 45
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 46
    .line 47
    iput-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 48
    .line 49
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 59
    .line 60
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 61
    .line 62
    iput-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 65
    .line 66
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 67
    .line 68
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 69
    .line 70
    iput-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 74
    .line 75
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 76
    .line 77
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 78
    .line 79
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 80
    .line 81
    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 82
    .line 83
    iput-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 90
    .line 91
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)Z

    .line 95
    move-result p1

    .line 96
    .line 97
    if-eqz p1, :cond_2

    .line 98
    return v0

    .line 99
    .line 100
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    .line 104
    .line 105
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    .line 109
    .line 110
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 111
    .line 112
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 113
    .line 114
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 118
    .line 119
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 120
    .line 121
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 122
    .line 123
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 127
    const/4 p1, 0x1

    .line 128
    return p1
.end method

.method public directMeasureWithOrientation(ZI)Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 10
    const/4 v3, 0x1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    .line 20
    move-result v4

    .line 21
    .line 22
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    .line 26
    move-result v5

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 31
    .line 32
    if-eq v0, v6, :cond_0

    .line 33
    .line 34
    if-ne v2, v6, :cond_4

    .line 35
    .line 36
    :cond_0
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v6

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v7

    .line 45
    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v7

    .line 51
    .line 52
    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 53
    .line 54
    iget v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 55
    .line 56
    if-ne v8, p2, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    .line 60
    move-result v7

    .line 61
    .line 62
    if-nez v7, :cond_1

    .line 63
    move p1, v1

    .line 64
    .line 65
    :cond_2
    if-nez p2, :cond_3

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 70
    .line 71
    if-ne v0, p1, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 74
    .line 75
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 79
    .line 80
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 84
    move-result v6

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 88
    .line 89
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 90
    .line 91
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 92
    .line 93
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 97
    move-result p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_3
    if-eqz p1, :cond_4

    .line 104
    .line 105
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 106
    .line 107
    if-ne v2, p1, :cond_4

    .line 108
    .line 109
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 110
    .line 111
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 115
    .line 116
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    .line 120
    move-result v6

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 124
    .line 125
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 126
    .line 127
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 128
    .line 129
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 133
    move-result p1

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 137
    .line 138
    :cond_4
    :goto_0
    if-nez p2, :cond_6

    .line 139
    .line 140
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 141
    .line 142
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 143
    .line 144
    aget-object v5, v5, v1

    .line 145
    .line 146
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 147
    .line 148
    if-eq v5, v6, :cond_5

    .line 149
    .line 150
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 151
    .line 152
    if-ne v5, v6, :cond_7

    .line 153
    .line 154
    .line 155
    :cond_5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 156
    move-result p1

    .line 157
    add-int/2addr p1, v4

    .line 158
    .line 159
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 160
    .line 161
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 162
    .line 163
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 167
    .line 168
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 169
    .line 170
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 171
    .line 172
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 173
    sub-int/2addr p1, v4

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 177
    :goto_1
    move p1, v3

    .line 178
    goto :goto_3

    .line 179
    .line 180
    :cond_6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 181
    .line 182
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 183
    .line 184
    aget-object v4, v4, v3

    .line 185
    .line 186
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 187
    .line 188
    if-eq v4, v6, :cond_8

    .line 189
    .line 190
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 191
    .line 192
    if-ne v4, v6, :cond_7

    .line 193
    goto :goto_2

    .line 194
    :cond_7
    move p1, v1

    .line 195
    goto :goto_3

    .line 196
    .line 197
    .line 198
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 199
    move-result p1

    .line 200
    add-int/2addr p1, v5

    .line 201
    .line 202
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 203
    .line 204
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 205
    .line 206
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 210
    .line 211
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 212
    .line 213
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 214
    .line 215
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 216
    sub-int/2addr p1, v5

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 220
    goto :goto_1

    .line 221
    .line 222
    .line 223
    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 224
    .line 225
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    move-result-object v4

    .line 230
    .line 231
    .line 232
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    move-result v5

    .line 234
    .line 235
    if-eqz v5, :cond_b

    .line 236
    .line 237
    .line 238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    move-result-object v5

    .line 240
    .line 241
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 242
    .line 243
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 244
    .line 245
    if-eq v6, p2, :cond_9

    .line 246
    goto :goto_4

    .line 247
    .line 248
    :cond_9
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 249
    .line 250
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 251
    .line 252
    if-ne v6, v7, :cond_a

    .line 253
    .line 254
    iget-boolean v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 255
    .line 256
    if-nez v6, :cond_a

    .line 257
    goto :goto_4

    .line 258
    .line 259
    .line 260
    :cond_a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 261
    goto :goto_4

    .line 262
    .line 263
    :cond_b
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 267
    move-result-object v4

    .line 268
    .line 269
    .line 270
    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    move-result v5

    .line 272
    .line 273
    if-eqz v5, :cond_11

    .line 274
    .line 275
    .line 276
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    move-result-object v5

    .line 278
    .line 279
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 280
    .line 281
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 282
    .line 283
    if-eq v6, p2, :cond_d

    .line 284
    goto :goto_5

    .line 285
    .line 286
    :cond_d
    if-nez p1, :cond_e

    .line 287
    .line 288
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 289
    .line 290
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 291
    .line 292
    if-ne v6, v7, :cond_e

    .line 293
    goto :goto_5

    .line 294
    .line 295
    :cond_e
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 296
    .line 297
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 298
    .line 299
    if-nez v6, :cond_f

    .line 300
    goto :goto_6

    .line 301
    .line 302
    :cond_f
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 303
    .line 304
    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 305
    .line 306
    if-nez v6, :cond_10

    .line 307
    goto :goto_6

    .line 308
    .line 309
    :cond_10
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 310
    .line 311
    if-nez v6, :cond_c

    .line 312
    .line 313
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 314
    .line 315
    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 316
    .line 317
    if-nez v5, :cond_c

    .line 318
    goto :goto_6

    .line 319
    :cond_11
    move v1, v3

    .line 320
    .line 321
    :goto_6
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 325
    .line 326
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 330
    return v1
.end method

.method public invalidateGraph()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 4
    return-void
.end method

.method public invalidateMeasures()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 4
    return-void
.end method

.method public measureWidgets()V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_b

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    move-object v3, v1

    .line 20
    .line 21
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 22
    .line 23
    iget-boolean v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    aget-object v8, v1, v2

    .line 32
    const/4 v9, 0x1

    .line 33
    .line 34
    aget-object v1, v1, v9

    .line 35
    .line 36
    iget v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 37
    .line 38
    iget v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 39
    .line 40
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 41
    .line 42
    if-eq v8, v6, :cond_3

    .line 43
    .line 44
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 45
    .line 46
    if-ne v8, v7, :cond_2

    .line 47
    .line 48
    if-ne v4, v9, :cond_2

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v4, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    :goto_1
    move v4, v9

    .line 53
    .line 54
    :goto_2
    if-eq v1, v6, :cond_4

    .line 55
    .line 56
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 57
    .line 58
    if-ne v1, v7, :cond_5

    .line 59
    .line 60
    if-ne v5, v9, :cond_5

    .line 61
    :cond_4
    move v2, v9

    .line 62
    .line 63
    :cond_5
    iget-object v5, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 64
    .line 65
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 66
    .line 67
    iget-boolean v7, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 68
    .line 69
    iget-object v10, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 70
    .line 71
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 72
    .line 73
    iget-boolean v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    .line 74
    .line 75
    if-eqz v7, :cond_6

    .line 76
    .line 77
    if-eqz v11, :cond_6

    .line 78
    .line 79
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 80
    .line 81
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 82
    .line 83
    iget v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 84
    move-object v6, v4

    .line 85
    move-object v2, p0

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 89
    .line 90
    iput-boolean v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 91
    goto :goto_3

    .line 92
    .line 93
    :cond_6
    if-eqz v7, :cond_8

    .line 94
    .line 95
    if-eqz v2, :cond_8

    .line 96
    .line 97
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 98
    .line 99
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 100
    .line 101
    iget v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 102
    move-object v2, p0

    .line 103
    .line 104
    .line 105
    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 106
    .line 107
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 108
    .line 109
    if-ne v1, v2, :cond_7

    .line 110
    .line 111
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 112
    .line 113
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 117
    move-result v2

    .line 118
    .line 119
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_7
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 123
    .line 124
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    .line 128
    move-result v2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 132
    .line 133
    iput-boolean v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 134
    goto :goto_3

    .line 135
    .line 136
    :cond_8
    if-eqz v11, :cond_a

    .line 137
    .line 138
    if-eqz v4, :cond_a

    .line 139
    .line 140
    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 141
    move-object v4, v6

    .line 142
    .line 143
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 144
    .line 145
    iget v7, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 146
    move-object v2, p0

    .line 147
    .line 148
    .line 149
    invoke-direct/range {v2 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 150
    .line 151
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 152
    .line 153
    if-ne v8, v1, :cond_9

    .line 154
    .line 155
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 156
    .line 157
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 161
    move-result v2

    .line 162
    .line 163
    iput v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 164
    goto :goto_3

    .line 165
    .line 166
    :cond_9
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 167
    .line 168
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    .line 172
    move-result v2

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 176
    .line 177
    iput-boolean v9, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 178
    .line 179
    :cond_a
    :goto_3
    iget-boolean v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 180
    .line 181
    if-eqz v1, :cond_0

    .line 182
    .line 183
    iget-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 184
    .line 185
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baselineDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 186
    .line 187
    if-eqz v1, :cond_0

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    .line 191
    move-result v2

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    :cond_b
    return-void
.end method

.method public setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 3
    return-void
.end method
