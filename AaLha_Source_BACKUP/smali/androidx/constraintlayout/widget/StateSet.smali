.class public Landroidx/constraintlayout/widget/StateSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/StateSet$Variant;,
        Landroidx/constraintlayout/widget/StateSet$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field mCurrentConstraintNumber:I

.field mCurrentStateId:I

.field mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mDefaultState:I

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/StateSet$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    .line 9
    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 11
    .line 12
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 18
    .line 19
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/StateSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 31
    return-void
.end method

.method private load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->StateSet:[I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v2, v1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 21
    move-result v3

    .line 22
    .line 23
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->StateSet_defaultState:I

    .line 24
    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    iget v4, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 31
    move-result v3

    .line 32
    .line 33
    iput v3, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 34
    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 43
    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v1, 0x0

    .line 45
    :goto_1
    const/4 v2, 0x1

    .line 46
    .line 47
    if-eq v0, v2, :cond_6

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    const/4 v2, 0x2

    .line 51
    .line 52
    const-string v3, "StateSet"

    .line 53
    .line 54
    if-eq v0, v2, :cond_3

    .line 55
    const/4 v2, 0x3

    .line 56
    .line 57
    if-eq v0, v2, :cond_2

    .line 58
    goto :goto_2

    .line 59
    .line 60
    .line 61
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    goto :goto_5

    .line 70
    :catch_0
    move-exception p1

    .line 71
    goto :goto_3

    .line 72
    :catch_1
    move-exception p1

    .line 73
    goto :goto_4

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 81
    move-result v2

    .line 82
    .line 83
    .line 84
    sparse-switch v2, :sswitch_data_0

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :sswitch_0
    const-string v2, "Variant"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    new-instance v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/StateSet$State;->add(Landroidx/constraintlayout/widget/StateSet$Variant;)V

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v0

    .line 109
    goto :goto_2

    .line 110
    .line 111
    :sswitch_2
    const-string v2, "LayoutDescription"

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v0

    .line 116
    goto :goto_2

    .line 117
    .line 118
    :sswitch_3
    const-string v2, "State"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result v0

    .line 123
    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    new-instance v1, Landroidx/constraintlayout/widget/StateSet$State;

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/StateSet$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 130
    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 132
    .line 133
    iget v2, v1, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    goto :goto_2

    .line 138
    .line 139
    .line 140
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    :cond_5
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 144
    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    goto :goto_1

    .line 146
    .line 147
    .line 148
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    goto :goto_5

    .line 150
    .line 151
    .line 152
    :goto_4
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 153
    :cond_6
    :goto_5
    return-void

    .line 154
    nop

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    :sswitch_data_0
    .sparse-switch
        0x4c7d471 -> :sswitch_3
        0x4d92b252 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public convertToConstraintSet(IIFF)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentConstrainSettId",
            "stateId",
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    return p2

    .line 12
    .line 13
    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    .line 14
    .line 15
    cmpl-float v1, p3, p2

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    cmpl-float p2, p4, p2

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    iget-object p2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p2

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget v1, v2, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 50
    .line 51
    if-ne p1, v1, :cond_3

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    move-object v1, v2

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_4
    if-eqz v1, :cond_5

    .line 57
    .line 58
    iget p1, v1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 59
    return p1

    .line 60
    .line 61
    :cond_5
    iget p1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 62
    return p1

    .line 63
    .line 64
    :cond_6
    :goto_1
    iget p2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 65
    .line 66
    if-ne p2, p1, :cond_7

    .line 67
    goto :goto_2

    .line 68
    .line 69
    :cond_7
    iget-object p2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result p3

    .line 78
    .line 79
    if-eqz p3, :cond_9

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object p3

    .line 84
    .line 85
    check-cast p3, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 86
    .line 87
    iget p3, p3, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 88
    .line 89
    if-ne p1, p3, :cond_8

    .line 90
    :goto_2
    return p1

    .line 91
    .line 92
    :cond_9
    iget p1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 93
    return p1
.end method

.method public needsToChange(IFF)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    if-ne p1, v2, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    :goto_0
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$State;

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 29
    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    iget-object v2, p1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    return v3

    .line 46
    .line 47
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    .line 51
    move-result p1

    .line 52
    .line 53
    if-ne v0, p1, :cond_3

    .line 54
    return v3

    .line 55
    :cond_3
    return v1
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintsChangedListener"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 3
    return-void
.end method

.method public stateGetConstraintID(III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    .line 1
    int-to-float p2, p2

    .line 2
    int-to-float p3, p3

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet;->updateConstraints(IIFF)I

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public updateConstraints(IIFF)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentId",
            "id",
            "width",
            "height"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-ne p1, p2, :cond_5

    .line 4
    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    check-cast p2, Landroidx/constraintlayout/widget/StateSet$State;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 18
    .line 19
    iget v1, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Landroidx/constraintlayout/widget/StateSet$State;

    .line 26
    .line 27
    :goto_0
    if-nez p2, :cond_1

    .line 28
    return v0

    .line 29
    .line 30
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 31
    .line 32
    if-eq v1, v0, :cond_2

    .line 33
    .line 34
    iget-object v1, p2, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    check-cast v1, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    .line 51
    move-result p3

    .line 52
    .line 53
    if-ne p1, p3, :cond_3

    .line 54
    :goto_1
    return p1

    .line 55
    .line 56
    :cond_3
    if-ne p3, v0, :cond_4

    .line 57
    .line 58
    iget p1, p2, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 59
    return p1

    .line 60
    .line 61
    :cond_4
    iget-object p1, p2, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 68
    .line 69
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 70
    return p1

    .line 71
    .line 72
    :cond_5
    iget-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$State;

    .line 79
    .line 80
    if-nez p1, :cond_6

    .line 81
    return v0

    .line 82
    .line 83
    .line 84
    :cond_6
    invoke-virtual {p1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    .line 85
    move-result p2

    .line 86
    .line 87
    if-ne p2, v0, :cond_7

    .line 88
    .line 89
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    .line 90
    return p1

    .line 91
    .line 92
    :cond_7
    iget-object p1, p1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    check-cast p1, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 99
    .line 100
    iget p1, p1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    .line 101
    return p1
.end method
