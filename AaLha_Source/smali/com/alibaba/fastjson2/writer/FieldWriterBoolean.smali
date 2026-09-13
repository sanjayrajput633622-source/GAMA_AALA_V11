.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# instance fields
.field final utf16Value0:[C

.field final utf16Value1:[C

.field final utf16ValueFalse:[C

.field final utf16ValueTrue:[C

.field final utf8Value0:[B

.field final utf8Value1:[B

.field final utf8ValueFalse:[B

.field final utf8ValueTrue:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 4
    move-object p1, p0

    .line 5
    .line 6
    iget-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 7
    array-length p3, p2

    .line 8
    .line 9
    add-int/lit8 p3, p3, 0x4

    .line 10
    .line 11
    .line 12
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 13
    move-result-object p2

    .line 14
    .line 15
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 16
    array-length p4, p3

    .line 17
    .line 18
    const/16 p5, 0x74

    .line 19
    .line 20
    aput-byte p5, p2, p4

    .line 21
    array-length p4, p3

    .line 22
    .line 23
    add-int/lit8 p4, p4, 0x1

    .line 24
    .line 25
    const/16 p6, 0x72

    .line 26
    .line 27
    aput-byte p6, p2, p4

    .line 28
    array-length p4, p3

    .line 29
    .line 30
    add-int/lit8 p4, p4, 0x2

    .line 31
    .line 32
    const/16 p7, 0x75

    .line 33
    .line 34
    aput-byte p7, p2, p4

    .line 35
    array-length p4, p3

    .line 36
    .line 37
    add-int/lit8 p4, p4, 0x3

    .line 38
    .line 39
    const/16 p8, 0x65

    .line 40
    .line 41
    aput-byte p8, p2, p4

    .line 42
    .line 43
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8ValueTrue:[B

    .line 44
    array-length p2, p3

    .line 45
    .line 46
    add-int/lit8 p2, p2, 0x5

    .line 47
    .line 48
    .line 49
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 50
    move-result-object p2

    .line 51
    .line 52
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 53
    array-length p4, p3

    .line 54
    .line 55
    const/16 p9, 0x66

    .line 56
    .line 57
    aput-byte p9, p2, p4

    .line 58
    array-length p4, p3

    .line 59
    .line 60
    add-int/lit8 p4, p4, 0x1

    .line 61
    .line 62
    const/16 p10, 0x61

    .line 63
    .line 64
    aput-byte p10, p2, p4

    .line 65
    array-length p4, p3

    .line 66
    .line 67
    add-int/lit8 p4, p4, 0x2

    .line 68
    .line 69
    const/16 v0, 0x6c

    .line 70
    .line 71
    aput-byte v0, p2, p4

    .line 72
    array-length p4, p3

    .line 73
    .line 74
    add-int/lit8 p4, p4, 0x3

    .line 75
    .line 76
    const/16 v1, 0x73

    .line 77
    .line 78
    aput-byte v1, p2, p4

    .line 79
    array-length p4, p3

    .line 80
    .line 81
    add-int/lit8 p4, p4, 0x4

    .line 82
    .line 83
    aput-byte p8, p2, p4

    .line 84
    .line 85
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8ValueFalse:[B

    .line 86
    array-length p2, p3

    .line 87
    .line 88
    add-int/lit8 p2, p2, 0x1

    .line 89
    .line 90
    .line 91
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 92
    move-result-object p2

    .line 93
    .line 94
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 95
    array-length p4, p3

    .line 96
    .line 97
    const/16 v2, 0x31

    .line 98
    .line 99
    aput-byte v2, p2, p4

    .line 100
    .line 101
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8Value1:[B

    .line 102
    array-length p2, p3

    .line 103
    .line 104
    add-int/lit8 p2, p2, 0x1

    .line 105
    .line 106
    .line 107
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 108
    move-result-object p2

    .line 109
    .line 110
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 111
    array-length p3, p3

    .line 112
    .line 113
    const/16 p4, 0x30

    .line 114
    .line 115
    aput-byte p4, p2, p3

    .line 116
    .line 117
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8Value0:[B

    .line 118
    .line 119
    iget-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 120
    array-length p3, p2

    .line 121
    .line 122
    add-int/lit8 p3, p3, 0x4

    .line 123
    .line 124
    .line 125
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 126
    move-result-object p2

    .line 127
    .line 128
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 129
    array-length v3, p3

    .line 130
    .line 131
    aput-char p5, p2, v3

    .line 132
    array-length p5, p3

    .line 133
    .line 134
    add-int/lit8 p5, p5, 0x1

    .line 135
    .line 136
    aput-char p6, p2, p5

    .line 137
    array-length p5, p3

    .line 138
    .line 139
    add-int/lit8 p5, p5, 0x2

    .line 140
    .line 141
    aput-char p7, p2, p5

    .line 142
    array-length p5, p3

    .line 143
    .line 144
    add-int/lit8 p5, p5, 0x3

    .line 145
    .line 146
    aput-char p8, p2, p5

    .line 147
    .line 148
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16ValueTrue:[C

    .line 149
    array-length p2, p3

    .line 150
    .line 151
    add-int/lit8 p2, p2, 0x5

    .line 152
    .line 153
    .line 154
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 155
    move-result-object p2

    .line 156
    .line 157
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 158
    array-length p5, p3

    .line 159
    .line 160
    aput-char p9, p2, p5

    .line 161
    array-length p5, p3

    .line 162
    .line 163
    add-int/lit8 p5, p5, 0x1

    .line 164
    .line 165
    aput-char p10, p2, p5

    .line 166
    array-length p5, p3

    .line 167
    .line 168
    add-int/lit8 p5, p5, 0x2

    .line 169
    .line 170
    aput-char v0, p2, p5

    .line 171
    array-length p5, p3

    .line 172
    .line 173
    add-int/lit8 p5, p5, 0x3

    .line 174
    .line 175
    aput-char v1, p2, p5

    .line 176
    array-length p5, p3

    .line 177
    .line 178
    add-int/lit8 p5, p5, 0x4

    .line 179
    .line 180
    aput-char p8, p2, p5

    .line 181
    .line 182
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16ValueFalse:[C

    .line 183
    array-length p2, p3

    .line 184
    .line 185
    add-int/lit8 p2, p2, 0x1

    .line 186
    .line 187
    .line 188
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 189
    move-result-object p2

    .line 190
    .line 191
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 192
    array-length p5, p3

    .line 193
    .line 194
    aput-char v2, p2, p5

    .line 195
    .line 196
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16Value1:[C

    .line 197
    array-length p2, p3

    .line 198
    .line 199
    add-int/lit8 p2, p2, 0x1

    .line 200
    .line 201
    .line 202
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 203
    move-result-object p2

    .line 204
    .line 205
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 206
    array-length p3, p3

    .line 207
    .line 208
    aput-char p4, p2, p3

    .line 209
    .line 210
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16Value0:[C

    .line 211
    return-void
.end method


# virtual methods
.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolean;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolean;

    .line 3
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object p2

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    if-nez p2, :cond_2

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 18
    move-result-wide v6

    .line 19
    or-long/2addr v4, v6

    .line 20
    .line 21
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 22
    .line 23
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 24
    .line 25
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 26
    .line 27
    iget-wide v8, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 28
    or-long/2addr v6, v8

    .line 29
    .line 30
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 31
    .line 32
    iget-wide v8, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 33
    or-long/2addr v6, v8

    .line 34
    and-long/2addr v6, v4

    .line 35
    .line 36
    cmp-long v6, v6, v2

    .line 37
    .line 38
    if-nez v6, :cond_0

    .line 39
    return v0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 43
    .line 44
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 45
    and-long/2addr v4, v6

    .line 46
    .line 47
    cmp-long p2, v4, v2

    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBooleanNull()V

    .line 57
    :goto_0
    return v1

    .line 58
    .line 59
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 60
    .line 61
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 62
    .line 63
    if-ne v4, v5, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result v4

    .line 68
    .line 69
    if-nez v4, :cond_3

    .line 70
    .line 71
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 75
    move-result-wide v4

    .line 76
    .line 77
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 78
    .line 79
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 80
    and-long/2addr v4, v6

    .line 81
    .line 82
    cmp-long v2, v4, v2

    .line 83
    .line 84
    if-eqz v2, :cond_3

    .line 85
    return v0

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    move-result p2

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->writeBool(Lcom/alibaba/fastjson2/JSONWriter;Z)V

    .line 93
    return v1

    .line 94
    :catch_0
    move-exception p2

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 98
    move-result p1

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    return v0

    .line 102
    :cond_4
    throw p2
.end method

.method public final writeBool(Lcom/alibaba/fastjson2/JSONWriter;Z)V
    .locals 6

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 9
    .line 10
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 11
    and-long/2addr v2, v0

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v2, v2, v4

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    const-string p2, "true"

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    const-string p2, "false"

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_1
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    .line 34
    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 38
    .line 39
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 40
    and-long/2addr v0, v2

    .line 41
    .line 42
    cmp-long v0, v0, v4

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8Value1:[B

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8Value0:[B

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_3
    if-eqz p2, :cond_4

    .line 55
    .line 56
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8ValueTrue:[B

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf8ValueFalse:[B

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    .line 63
    return-void

    .line 64
    .line 65
    :cond_5
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    .line 66
    .line 67
    if-eqz v2, :cond_9

    .line 68
    .line 69
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 70
    .line 71
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 72
    and-long/2addr v0, v2

    .line 73
    .line 74
    cmp-long v0, v0, v4

    .line 75
    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16Value1:[C

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_6
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16Value0:[C

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_7
    if-eqz p2, :cond_8

    .line 87
    .line 88
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16ValueTrue:[C

    .line 89
    goto :goto_2

    .line 90
    .line 91
    :cond_8
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterBoolean;->utf16ValueFalse:[C

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    .line 95
    return-void

    .line 96
    .line 97
    .line 98
    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 102
    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/lang/Boolean;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 20
    return-void
.end method
