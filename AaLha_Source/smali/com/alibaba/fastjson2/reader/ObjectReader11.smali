.class public Lcom/alibaba/fastjson2/reader/ObjectReader11;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader10:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final hashCode0:J

.field final hashCode0LCase:J

.field final hashCode1:J

.field final hashCode10:J

.field final hashCode10LCase:J

.field final hashCode1LCase:J

.field final hashCode2:J

.field final hashCode2LCase:J

.field final hashCode3:J

.field final hashCode3LCase:J

.field final hashCode4:J

.field final hashCode4LCase:J

.field final hashCode5:J

.field final hashCode5LCase:J

.field final hashCode6:J

.field final hashCode6LCase:J

.field final hashCode7:J

.field final hashCode7LCase:J

.field final hashCode8:J

.field final hashCode8LCase:J

.field final hashCode9:J

.field final hashCode9LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader10:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader4:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader5:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader6:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader7:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader8:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader9:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v9, 0x0

    .line 2
    const/4 v10, 0x0

    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move-wide/from16 v4, p4

    .line 11
    .line 12
    move-object/from16 v6, p6

    .line 13
    .line 14
    move-object/from16 v7, p7

    .line 15
    .line 16
    move-object/from16 v11, p8

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 20
    const/4 p1, 0x0

    .line 21
    .line 22
    aget-object p1, p8, p1

    .line 23
    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 25
    const/4 v1, 0x1

    .line 26
    .line 27
    aget-object v1, p8, v1

    .line 28
    .line 29
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 30
    const/4 v2, 0x2

    .line 31
    .line 32
    aget-object v2, p8, v2

    .line 33
    .line 34
    iput-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 35
    const/4 v3, 0x3

    .line 36
    .line 37
    aget-object v3, p8, v3

    .line 38
    .line 39
    iput-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 40
    const/4 v4, 0x4

    .line 41
    .line 42
    aget-object v4, p8, v4

    .line 43
    .line 44
    iput-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 45
    const/4 v5, 0x5

    .line 46
    .line 47
    aget-object v5, p8, v5

    .line 48
    .line 49
    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 50
    const/4 v6, 0x6

    .line 51
    .line 52
    aget-object v6, p8, v6

    .line 53
    .line 54
    iput-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 55
    const/4 v7, 0x7

    .line 56
    .line 57
    aget-object v7, p8, v7

    .line 58
    .line 59
    iput-object v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 60
    .line 61
    const/16 v8, 0x8

    .line 62
    .line 63
    aget-object v8, p8, v8

    .line 64
    .line 65
    iput-object v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 66
    .line 67
    const/16 v9, 0x9

    .line 68
    .line 69
    aget-object v9, p8, v9

    .line 70
    .line 71
    iput-object v9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 72
    .line 73
    const/16 v10, 0xa

    .line 74
    .line 75
    aget-object v10, p8, v10

    .line 76
    .line 77
    iput-object v10, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader10:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 78
    .line 79
    iget-wide v11, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 80
    .line 81
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode0:J

    .line 82
    .line 83
    iget-wide v11, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 84
    .line 85
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode1:J

    .line 86
    .line 87
    iget-wide v11, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 88
    .line 89
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode2:J

    .line 90
    .line 91
    iget-wide v11, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 92
    .line 93
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode3:J

    .line 94
    .line 95
    iget-wide v11, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 96
    .line 97
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode4:J

    .line 98
    .line 99
    iget-wide v11, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 100
    .line 101
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode5:J

    .line 102
    .line 103
    iget-wide v11, v6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 104
    .line 105
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode6:J

    .line 106
    .line 107
    iget-wide v11, v7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 108
    .line 109
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode7:J

    .line 110
    .line 111
    iget-wide v11, v8, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 112
    .line 113
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode8:J

    .line 114
    .line 115
    iget-wide v11, v9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 116
    .line 117
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode9:J

    .line 118
    .line 119
    iget-wide v11, v10, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 120
    .line 121
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode10:J

    .line 122
    .line 123
    iget-wide v11, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 124
    .line 125
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode0LCase:J

    .line 126
    .line 127
    iget-wide v11, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 128
    .line 129
    iput-wide v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode1LCase:J

    .line 130
    .line 131
    iget-wide v1, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 132
    .line 133
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode2LCase:J

    .line 134
    .line 135
    iget-wide v1, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 136
    .line 137
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode3LCase:J

    .line 138
    .line 139
    iget-wide v1, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 140
    .line 141
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode4LCase:J

    .line 142
    .line 143
    iget-wide v1, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 144
    .line 145
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode5LCase:J

    .line 146
    .line 147
    iget-wide v1, v6, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 148
    .line 149
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode6LCase:J

    .line 150
    .line 151
    iget-wide v1, v7, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 152
    .line 153
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode7LCase:J

    .line 154
    .line 155
    iget-wide v1, v8, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 156
    .line 157
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode8LCase:J

    .line 158
    .line 159
    iget-wide v1, v9, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 160
    .line 161
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode9LCase:J

    .line 162
    .line 163
    iget-wide v1, v10, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 164
    .line 165
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode10LCase:J

    .line 166
    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode0:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode1:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode2:J

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode3:J

    .line 30
    .line 31
    cmp-long v0, p1, v0

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode4:J

    .line 39
    .line 40
    cmp-long v0, p1, v0

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode5:J

    .line 48
    .line 49
    cmp-long v0, p1, v0

    .line 50
    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode6:J

    .line 57
    .line 58
    cmp-long v0, p1, v0

    .line 59
    .line 60
    if-nez v0, :cond_6

    .line 61
    .line 62
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 63
    return-object p1

    .line 64
    .line 65
    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode7:J

    .line 66
    .line 67
    cmp-long v0, p1, v0

    .line 68
    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 72
    return-object p1

    .line 73
    .line 74
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode8:J

    .line 75
    .line 76
    cmp-long v0, p1, v0

    .line 77
    .line 78
    if-nez v0, :cond_8

    .line 79
    .line 80
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 81
    return-object p1

    .line 82
    .line 83
    :cond_8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode9:J

    .line 84
    .line 85
    cmp-long v0, p1, v0

    .line 86
    .line 87
    if-nez v0, :cond_9

    .line 88
    .line 89
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 90
    return-object p1

    .line 91
    .line 92
    :cond_9
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode10:J

    .line 93
    .line 94
    cmp-long p1, p1, v0

    .line 95
    .line 96
    if-nez p1, :cond_a

    .line 97
    .line 98
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader10:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 99
    return-object p1

    .line 100
    :cond_a
    const/4 p1, 0x0

    .line 101
    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode0LCase:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode1LCase:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode2LCase:J

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode3LCase:J

    .line 30
    .line 31
    cmp-long v0, p1, v0

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode4LCase:J

    .line 39
    .line 40
    cmp-long v0, p1, v0

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode5LCase:J

    .line 48
    .line 49
    cmp-long v0, p1, v0

    .line 50
    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode6LCase:J

    .line 57
    .line 58
    cmp-long v0, p1, v0

    .line 59
    .line 60
    if-nez v0, :cond_6

    .line 61
    .line 62
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader6:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 63
    return-object p1

    .line 64
    .line 65
    :cond_6
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode7LCase:J

    .line 66
    .line 67
    cmp-long v0, p1, v0

    .line 68
    .line 69
    if-nez v0, :cond_7

    .line 70
    .line 71
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader7:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 72
    return-object p1

    .line 73
    .line 74
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode8LCase:J

    .line 75
    .line 76
    cmp-long v0, p1, v0

    .line 77
    .line 78
    if-nez v0, :cond_8

    .line 79
    .line 80
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader8:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 81
    return-object p1

    .line 82
    .line 83
    :cond_8
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode9LCase:J

    .line 84
    .line 85
    cmp-long v0, p1, v0

    .line 86
    .line 87
    if-nez v0, :cond_9

    .line 88
    .line 89
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader9:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 90
    return-object p1

    .line 91
    .line 92
    :cond_9
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->hashCode10LCase:J

    .line 93
    .line 94
    cmp-long p1, p1, v0

    .line 95
    .line 96
    if-nez p1, :cond_a

    .line 97
    .line 98
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader11;->fieldReader10:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 99
    return-object p1

    .line 100
    :cond_a
    const/4 p1, 0x0

    .line 101
    return-object p1
.end method
