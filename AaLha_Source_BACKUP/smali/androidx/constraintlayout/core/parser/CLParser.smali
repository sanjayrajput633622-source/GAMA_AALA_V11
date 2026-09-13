.class public Landroidx/constraintlayout/core/parser/CLParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLParser$TYPE;
    }
.end annotation


# static fields
.field static DEBUG:Z


# instance fields
.field private hasComment:Z

.field private lineNumber:I

.field private mContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    .line 9
    return-void
.end method

.method private createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 3

    .line 1
    .line 2
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v2, "CREATE "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, " at "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    aget-char v2, p5, p2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/parser/CLParser$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE:[I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 42
    move-result p3

    .line 43
    .line 44
    aget p3, v0, p3

    .line 45
    const/4 v0, 0x0

    .line 46
    .line 47
    .line 48
    packed-switch p3, :pswitch_data_0

    .line 49
    move-object p3, v0

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :pswitch_0
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLToken;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 54
    move-result-object p3

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :pswitch_1
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLKey;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 59
    move-result-object p3

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :pswitch_2
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLNumber;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 64
    move-result-object p3

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :pswitch_3
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLString;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 69
    move-result-object p3

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :pswitch_4
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLArray;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 74
    move-result-object p3

    .line 75
    .line 76
    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :pswitch_5
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    .line 81
    move-result-object p3

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :goto_1
    if-nez p3, :cond_1

    .line 85
    return-object v0

    .line 86
    .line 87
    :cond_1
    iget p5, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    .line 91
    .line 92
    if-eqz p4, :cond_2

    .line 93
    int-to-long p4, p2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p4, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    .line 97
    .line 98
    :cond_2
    instance-of p2, p1, Landroidx/constraintlayout/core/parser/CLContainer;

    .line 99
    .line 100
    if-eqz p2, :cond_3

    .line 101
    .line 102
    check-cast p1, Landroidx/constraintlayout/core/parser/CLContainer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/parser/CLElement;->setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V

    .line 106
    :cond_3
    return-object p3

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 1
    .line 2
    const/16 v0, 0x9

    .line 3
    .line 4
    if-eq p2, v0, :cond_2

    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    if-eq p2, v0, :cond_2

    .line 9
    .line 10
    const/16 v0, 0xd

    .line 11
    .line 12
    if-eq p2, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x20

    .line 15
    .line 16
    if-eq p2, v0, :cond_2

    .line 17
    .line 18
    const/16 v0, 0x22

    .line 19
    .line 20
    if-eq p2, v0, :cond_6

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    if-eq p2, v0, :cond_6

    .line 25
    .line 26
    const/16 v0, 0x5b

    .line 27
    .line 28
    if-eq p2, v0, :cond_5

    .line 29
    .line 30
    const/16 v0, 0x5d

    .line 31
    .line 32
    if-eq p2, v0, :cond_3

    .line 33
    .line 34
    const/16 v0, 0x7b

    .line 35
    .line 36
    if-eq p2, v0, :cond_4

    .line 37
    .line 38
    const/16 v0, 0x7d

    .line 39
    .line 40
    if-eq p2, v0, :cond_3

    .line 41
    .line 42
    .line 43
    packed-switch p2, :pswitch_data_0

    .line 44
    .line 45
    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLContainer;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLObject;

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    sget-object v4, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->TOKEN:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 54
    const/4 v5, 0x1

    .line 55
    move-object v1, p0

    .line 56
    move v3, p1

    .line 57
    move-object v2, p3

    .line 58
    move-object v6, p4

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 62
    move-result-object p1

    .line 63
    move-object v0, v1

    .line 64
    move v2, v3

    .line 65
    move-object p3, p1

    .line 66
    .line 67
    check-cast p3, Landroidx/constraintlayout/core/parser/CLToken;

    .line 68
    int-to-long v1, v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, p2, v1, v2}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    .line 72
    move-result p4

    .line 73
    .line 74
    if-eqz p4, :cond_0

    .line 75
    return-object p1

    .line 76
    .line 77
    :cond_0
    new-instance p1, Landroidx/constraintlayout/core/parser/CLParsingException;

    .line 78
    .line 79
    new-instance p4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    const-string v1, "incorrect token <"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p2, "> at line "

    .line 93
    .line 94
    .line 95
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    iget p2, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, p2, p3}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    .line 108
    throw p1

    .line 109
    :cond_1
    move-object v0, p0

    .line 110
    move v2, p1

    .line 111
    move-object v1, p3

    .line 112
    move-object v5, p4

    .line 113
    .line 114
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 115
    const/4 v4, 0x1

    .line 116
    .line 117
    .line 118
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :pswitch_0
    move-object v0, p0

    .line 122
    move v2, p1

    .line 123
    move-object v1, p3

    .line 124
    move-object v5, p4

    .line 125
    const/4 p1, 0x1

    .line 126
    .line 127
    add-int/lit8 p2, v2, 0x1

    .line 128
    array-length p3, v5

    .line 129
    .line 130
    if-ge p2, p3, :cond_8

    .line 131
    .line 132
    aget-char p2, v5, p2

    .line 133
    .line 134
    const/16 p3, 0x2f

    .line 135
    .line 136
    if-ne p2, p3, :cond_8

    .line 137
    .line 138
    iput-boolean p1, v0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    .line 139
    return-object v1

    .line 140
    :pswitch_1
    move-object v0, p0

    .line 141
    :cond_2
    move-object v1, p3

    .line 142
    goto :goto_1

    .line 143
    :pswitch_2
    move-object v0, p0

    .line 144
    move v2, p1

    .line 145
    move-object v1, p3

    .line 146
    move-object v5, p4

    .line 147
    .line 148
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->NUMBER:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 149
    const/4 v4, 0x1

    .line 150
    .line 151
    .line 152
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 153
    move-result-object p1

    .line 154
    return-object p1

    .line 155
    :cond_3
    move v2, p1

    .line 156
    move-object v1, p3

    .line 157
    goto :goto_0

    .line 158
    :cond_4
    move v2, p1

    .line 159
    move-object v1, p3

    .line 160
    move-object v5, p4

    .line 161
    .line 162
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->OBJECT:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 163
    const/4 v4, 0x1

    .line 164
    move-object v0, p0

    .line 165
    .line 166
    .line 167
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 168
    move-result-object p1

    .line 169
    return-object p1

    .line 170
    .line 171
    :goto_0
    add-int/lit8 p1, v2, -0x1

    .line 172
    int-to-long p1, p1

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    .line 179
    move-result-object p1

    .line 180
    int-to-long p2, v2

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 184
    return-object p1

    .line 185
    :cond_5
    move v2, p1

    .line 186
    move-object v1, p3

    .line 187
    move-object v5, p4

    .line 188
    .line 189
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ARRAY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 190
    const/4 v4, 0x1

    .line 191
    move-object v0, p0

    .line 192
    .line 193
    .line 194
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 195
    move-result-object p1

    .line 196
    return-object p1

    .line 197
    :cond_6
    move v2, p1

    .line 198
    move-object v1, p3

    .line 199
    move-object v5, p4

    .line 200
    .line 201
    instance-of p1, v1, Landroidx/constraintlayout/core/parser/CLObject;

    .line 202
    .line 203
    if-eqz p1, :cond_7

    .line 204
    .line 205
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 206
    const/4 v4, 0x1

    .line 207
    move-object v0, p0

    .line 208
    .line 209
    .line 210
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 211
    move-result-object p1

    .line 212
    return-object p1

    .line 213
    .line 214
    :cond_7
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->STRING:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    .line 215
    const/4 v4, 0x1

    .line 216
    move-object v0, p0

    .line 217
    .line 218
    .line 219
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    .line 220
    move-result-object p1

    .line 221
    return-object p1

    .line 222
    :cond_8
    :goto_1
    return-object v1

    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParser;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLParser;->parse()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse()Landroidx/constraintlayout/core/parser/CLObject;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x1

    .line 4
    iput v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-ge v5, v2, :cond_2

    .line 5
    aget-char v8, v1, v5

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    if-ne v8, v6, :cond_1

    .line 6
    iget v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    add-int/2addr v6, v3

    iput v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    :goto_1
    if-eq v5, v7, :cond_1c

    .line 7
    invoke-static {v1}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v7

    .line 8
    iget v8, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    int-to-long v8, v5

    .line 9
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/2addr v5, v3

    move-object v8, v7

    :goto_2
    if-ge v5, v2, :cond_6

    .line 10
    aget-char v9, v1, v5

    if-ne v9, v6, :cond_3

    .line 11
    iget v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    add-int/2addr v10, v3

    iput v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    .line 12
    :cond_3
    iget-boolean v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    if-eqz v10, :cond_5

    if-ne v9, v6, :cond_4

    .line 13
    iput-boolean v4, v0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    goto :goto_3

    :cond_4
    move/from16 v16, v3

    goto/16 :goto_7

    :cond_5
    :goto_3
    if-nez v8, :cond_7

    :cond_6
    move/from16 v16, v3

    goto/16 :goto_8

    .line 14
    :cond_7
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 15
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    :cond_8
    :goto_4
    move/from16 v16, v3

    goto/16 :goto_6

    .line 16
    :cond_9
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLObject;

    const/16 v11, 0x7d

    if-eqz v10, :cond_b

    if-ne v9, v11, :cond_a

    add-int/lit8 v9, v5, -0x1

    int-to-long v9, v9

    .line 17
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_4

    .line 18
    :cond_a
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto :goto_4

    .line 19
    :cond_b
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLArray;

    const/16 v12, 0x5d

    if-eqz v10, :cond_d

    if-ne v9, v12, :cond_c

    add-int/lit8 v9, v5, -0x1

    int-to-long v9, v9

    .line 20
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_4

    .line 21
    :cond_c
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto :goto_4

    .line 22
    :cond_d
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLString;

    const-wide/16 v13, 0x1

    if-eqz v10, :cond_e

    .line 23
    iget-wide v10, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v12, v10

    aget-char v12, v1, v12

    if-ne v12, v9, :cond_8

    add-long/2addr v10, v13

    .line 24
    invoke-virtual {v8, v10, v11}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v9, v5, -0x1

    int-to-long v9, v9

    .line 25
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    goto :goto_4

    .line 26
    :cond_e
    instance-of v15, v8, Landroidx/constraintlayout/core/parser/CLToken;

    if-eqz v15, :cond_10

    .line 27
    move-object v15, v8

    check-cast v15, Landroidx/constraintlayout/core/parser/CLToken;

    move/from16 v16, v3

    int-to-long v3, v5

    .line 28
    invoke-virtual {v15, v9, v3, v4}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_5

    .line 29
    :cond_f
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsing incorrect token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :cond_10
    move/from16 v16, v3

    .line 30
    :goto_5
    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    if-nez v3, :cond_11

    if-eqz v10, :cond_13

    .line 31
    :cond_11
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v10, v3

    aget-char v10, v1, v10

    const/16 v15, 0x27

    if-eq v10, v15, :cond_12

    const/16 v15, 0x22

    if-ne v10, v15, :cond_13

    :cond_12
    if-ne v10, v9, :cond_13

    add-long/2addr v3, v13

    .line 32
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    add-int/lit8 v3, v5, -0x1

    int-to-long v3, v3

    .line 33
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 34
    :cond_13
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v3

    if-nez v3, :cond_16

    if-eq v9, v11, :cond_14

    if-eq v9, v12, :cond_14

    const/16 v3, 0x2c

    if-eq v9, v3, :cond_14

    const/16 v3, 0x20

    if-eq v9, v3, :cond_14

    const/16 v3, 0x9

    if-eq v9, v3, :cond_14

    const/16 v3, 0xd

    if-eq v9, v3, :cond_14

    if-eq v9, v6, :cond_14

    const/16 v3, 0x3a

    if-ne v9, v3, :cond_16

    :cond_14
    add-int/lit8 v3, v5, -0x1

    int-to-long v3, v3

    .line 35
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    if-eq v9, v11, :cond_15

    if-ne v9, v12, :cond_16

    .line 36
    :cond_15
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    .line 37
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 38
    instance-of v9, v8, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v9, :cond_16

    .line 39
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    .line 40
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 41
    :cond_16
    :goto_6
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v3

    if-eqz v3, :cond_18

    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    if-eqz v3, :cond_17

    move-object v3, v8

    check-cast v3, Landroidx/constraintlayout/core/parser/CLKey;

    iget-object v3, v3, Landroidx/constraintlayout/core/parser/CLContainer;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 42
    :cond_17
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    :cond_18
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v16

    const/4 v4, 0x0

    goto/16 :goto_2

    :goto_8
    if-eqz v8, :cond_1a

    .line 43
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 44
    instance-of v1, v8, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v1, :cond_19

    .line 45
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    long-to-int v1, v3

    add-int/lit8 v1, v1, 0x1

    int-to-long v3, v1

    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    :cond_19
    add-int/lit8 v1, v2, -0x1

    int-to-long v3, v1

    .line 46
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    .line 47
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    goto :goto_8

    .line 48
    :cond_1a
    sget-boolean v1, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    if-eqz v1, :cond_1b

    .line 49
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b
    return-object v7

    .line 50
    :cond_1c
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string v2, "invalid json content"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1
.end method
