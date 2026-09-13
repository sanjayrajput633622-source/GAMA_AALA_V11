.class public Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;,
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private final mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

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

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layout",
            "resourceID"
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
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 9
    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v0, Landroid/util/SparseArray;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 26
    .line 27
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->load(Landroid/content/Context;I)V

    .line 31
    return-void
.end method

.method private load(Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    const/4 v2, 0x1

    .line 15
    .line 16
    if-eq v0, v2, :cond_3

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v2, 0x2

    .line 20
    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    goto :goto_2

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    sparse-switch v2, :sswitch_data_0

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :sswitch_0
    const-string v2, "Variant"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->add(Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;)V

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_3

    .line 56
    :catch_1
    move-exception p1

    .line 57
    goto :goto_4

    .line 58
    .line 59
    :sswitch_1
    const-string v2, "layoutDescription"

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :sswitch_2
    const-string v2, "StateSet"

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :sswitch_3
    const-string v2, "State"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 81
    .line 82
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 83
    .line 84
    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mId:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :sswitch_4
    const-string v2, "ConstraintSet"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result v0

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 100
    goto :goto_2

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 107
    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 109
    .line 110
    .line 111
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    goto :goto_5

    .line 113
    .line 114
    .line 115
    :goto_4
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 116
    :cond_3
    :goto_5
    return-void

    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_4
        0x4c7d471 -> :sswitch_3
        0x526c4e31 -> :sswitch_2
        0x62ce7272 -> :sswitch_1
        0x7155a865 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
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
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v1, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    goto :goto_2

    .line 26
    .line 27
    :cond_0
    const-string v5, "id"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    const-string v1, "/"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v1

    .line 40
    const/4 v2, -0x1

    .line 41
    const/4 v3, 0x1

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    const/16 v1, 0x2f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    .line 49
    move-result v1

    .line 50
    add-int/2addr v1, v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    move-result-object v7

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v1, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move-result v1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move v1, v2

    .line 69
    .line 70
    :goto_1
    if-ne v1, v2, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 74
    move-result v2

    .line 75
    .line 76
    if-le v2, v3, :cond_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 84
    move-result v1

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 88
    .line 89
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    return-void

    .line 94
    .line 95
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    return-void
.end method


# virtual methods
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
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

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
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    :goto_0
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

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
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 29
    .line 30
    if-eq v0, v2, :cond_2

    .line 31
    .line 32
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

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
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

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
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 3
    return-void
.end method

.method public updateConstraints(IFF)V
    .locals 3
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
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, p1, :cond_7

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 26
    .line 27
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

    .line 49
    move-result p2

    .line 50
    .line 51
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 52
    .line 53
    if-ne p3, p2, :cond_2

    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_2
    if-ne p2, v1, :cond_3

    .line 58
    .line 59
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_3
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object p3

    .line 67
    .line 68
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 69
    .line 70
    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 71
    .line 72
    :goto_1
    if-ne p2, v1, :cond_4

    .line 73
    .line 74
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_4
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 84
    .line 85
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 86
    .line 87
    :goto_2
    if-nez p3, :cond_5

    .line 88
    goto :goto_5

    .line 89
    .line 90
    :cond_5
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 91
    .line 92
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 93
    .line 94
    if-eqz p2, :cond_6

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v1, p1}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->preLayoutChange(II)V

    .line 98
    .line 99
    :cond_6
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 103
    .line 104
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 105
    .line 106
    if-eqz p2, :cond_c

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v1, p1}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->postLayoutChange(II)V

    .line 110
    return-void

    .line 111
    .line 112
    :cond_7
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    .line 113
    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

    .line 124
    move-result p2

    .line 125
    .line 126
    if-ne p2, v1, :cond_8

    .line 127
    .line 128
    iget-object p3, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 129
    goto :goto_3

    .line 130
    .line 131
    :cond_8
    iget-object p3, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    move-result-object p3

    .line 136
    .line 137
    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 138
    .line 139
    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 140
    .line 141
    :goto_3
    if-ne p2, v1, :cond_9

    .line 142
    .line 143
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintID:I

    .line 144
    goto :goto_4

    .line 145
    .line 146
    :cond_9
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    .line 153
    .line 154
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    .line 155
    .line 156
    :goto_4
    if-nez p3, :cond_a

    .line 157
    return-void

    .line 158
    .line 159
    :cond_a
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 160
    .line 161
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 162
    .line 163
    if-eqz p2, :cond_b

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->preLayoutChange(II)V

    .line 167
    .line 168
    :cond_b
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 172
    .line 173
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 174
    .line 175
    if-eqz p2, :cond_c

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/ConstraintsChangedListener;->postLayoutChange(II)V

    .line 179
    :cond_c
    :goto_5
    return-void
.end method
