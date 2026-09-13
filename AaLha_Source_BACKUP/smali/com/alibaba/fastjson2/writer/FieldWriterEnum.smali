.class Lcom/alibaba/fastjson2/writer/FieldWriterEnum;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# instance fields
.field final enumConstants:[Ljava/lang/Enum;

.field final enumType:Ljava/lang/Class;

.field final hashCodes:[J

.field final hashCodesSymbolCache:[J

.field final utf16ValueCache:[[C

.field final utf8ValueCache:[[B

.field final valueNameCacheUTF16:[[C

.field final valueNameCacheUTF8:[[B


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 4
    move-object p1, p0

    .line 5
    .line 6
    iput-object p8, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumType:Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p8}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, [Ljava/lang/Enum;

    .line 13
    .line 14
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumConstants:[Ljava/lang/Enum;

    .line 15
    array-length p3, p2

    .line 16
    .line 17
    new-array p3, p3, [J

    .line 18
    .line 19
    iput-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodes:[J

    .line 20
    array-length p2, p2

    .line 21
    .line 22
    new-array p2, p2, [J

    .line 23
    .line 24
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodesSymbolCache:[J

    .line 25
    const/4 p2, 0x0

    .line 26
    .line 27
    :goto_0
    iget-object p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumConstants:[Ljava/lang/Enum;

    .line 28
    array-length p4, p3

    .line 29
    .line 30
    if-ge p2, p4, :cond_0

    .line 31
    .line 32
    iget-object p4, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodes:[J

    .line 33
    .line 34
    aget-object p3, p3, p2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    .line 41
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 42
    move-result-wide p5

    .line 43
    .line 44
    aput-wide p5, p4, p2

    .line 45
    .line 46
    add-int/lit8 p2, p2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    array-length p2, p3

    .line 49
    .line 50
    new-array p2, p2, [[B

    .line 51
    .line 52
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->valueNameCacheUTF8:[[B

    .line 53
    array-length p2, p3

    .line 54
    .line 55
    new-array p2, p2, [[C

    .line 56
    .line 57
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->valueNameCacheUTF16:[[C

    .line 58
    array-length p2, p3

    .line 59
    .line 60
    new-array p2, p2, [[B

    .line 61
    .line 62
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->utf8ValueCache:[[B

    .line 63
    array-length p2, p3

    .line 64
    .line 65
    new-array p2, p2, [[C

    .line 66
    .line 67
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->utf16ValueCache:[[C

    .line 68
    return-void
.end method

.method private getBytes(I)[B
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 7
    array-length v2, v1

    .line 8
    add-int/2addr v2, v0

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 20
    array-length v1, v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    .line 24
    return-object v0
.end method

.method private getChars(I)[C
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 7
    array-length v2, v1

    .line 8
    add-int/2addr v2, v0

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 12
    move-result-object v0

    .line 13
    array-length v1, v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 20
    array-length v1, v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    .line 24
    return-object v0
.end method

.method private getNameBytes(I)[B
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumConstants:[Ljava/lang/Enum;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 17
    array-length v1, v0

    .line 18
    array-length v2, p1

    .line 19
    add-int/2addr v1, v2

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF8:[B

    .line 28
    array-length v2, v1

    .line 29
    .line 30
    const/16 v3, 0x22

    .line 31
    .line 32
    aput-byte v3, v0, v2

    .line 33
    array-length v1, v1

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    array-length v2, p1

    .line 37
    const/4 v4, 0x0

    .line 38
    .line 39
    :goto_0
    if-ge v4, v2, :cond_0

    .line 40
    .line 41
    aget-byte v5, p1, v4

    .line 42
    .line 43
    add-int/lit8 v6, v1, 0x1

    .line 44
    .line 45
    aput-byte v5, v0, v1

    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    move v1, v6

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    array-length p1, v0

    .line 51
    .line 52
    add-int/lit8 p1, p1, -0x1

    .line 53
    .line 54
    aput-byte v3, v0, p1

    .line 55
    return-object v0
.end method

.method private getNameChars(I)[C
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->enumConstants:[Ljava/lang/Enum;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 11
    array-length v1, v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result v2

    .line 16
    add-int/2addr v1, v2

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 25
    array-length v1, v1

    .line 26
    .line 27
    const/16 v2, 0x22

    .line 28
    .line 29
    aput-char v2, v0, v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    move-result v1

    .line 34
    .line 35
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameWithColonUTF16:[C

    .line 36
    array-length v3, v3

    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v4, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 43
    array-length p1, v0

    .line 44
    .line 45
    add-int/lit8 p1, p1, -0x1

    .line 46
    .line 47
    aput-char v2, v0, p1

    .line 48
    return-object v0
.end method

.method private writeJSONBToString(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;Lcom/alibaba/fastjson2/SymbolTable;)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eqz p3, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    move-result v1

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v4, v2, v4

    .line 14
    .line 15
    const/16 v5, 0x20

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 23
    move-result p3

    .line 24
    int-to-long v2, p3

    .line 25
    shl-long/2addr v2, v5

    .line 26
    int-to-long v4, v1

    .line 27
    or-long/2addr v2, v4

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    long-to-int v4, v2

    .line 32
    .line 33
    if-ne v4, v1, :cond_1

    .line 34
    .line 35
    shr-long v1, v2, v5

    .line 36
    long-to-int p3, v1

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 43
    move-result p3

    .line 44
    int-to-long v2, p3

    .line 45
    shl-long/2addr v2, v5

    .line 46
    int-to-long v4, v1

    .line 47
    or-long/2addr v2, v4

    .line 48
    .line 49
    iput-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move p3, v0

    .line 52
    .line 53
    :goto_0
    if-eq p3, v0, :cond_3

    .line 54
    neg-int p3, p3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_3
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameJSONB:[B

    .line 61
    .line 62
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p3, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private writeSymbolNameOrdinal(Lcom/alibaba/fastjson2/JSONWriter;ILcom/alibaba/fastjson2/SymbolTable;)Z
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodesSymbolCache:[J

    .line 7
    .line 8
    aget-wide v2, v1, p2

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v1, v2, v4

    .line 13
    .line 14
    const/16 v6, 0x20

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodes:[J

    .line 19
    .line 20
    aget-wide v2, v1, p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 24
    move-result v1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodesSymbolCache:[J

    .line 27
    int-to-long v7, v1

    .line 28
    shl-long/2addr v7, v6

    .line 29
    int-to-long v9, v0

    .line 30
    or-long/2addr v7, v9

    .line 31
    .line 32
    aput-wide v7, v2, p2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    long-to-int v1, v2

    .line 35
    .line 36
    if-ne v1, v0, :cond_1

    .line 37
    .line 38
    shr-long v1, v2, v6

    .line 39
    long-to-int v1, v1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodes:[J

    .line 43
    .line 44
    aget-wide v2, v1, p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 48
    move-result v1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->hashCodesSymbolCache:[J

    .line 51
    int-to-long v7, v1

    .line 52
    shl-long/2addr v7, v6

    .line 53
    int-to-long v9, v0

    .line 54
    or-long/2addr v7, v9

    .line 55
    .line 56
    aput-wide v7, v2, p2

    .line 57
    .line 58
    :goto_0
    if-ltz v1, :cond_6

    .line 59
    .line 60
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 61
    .line 62
    cmp-long p2, v2, v4

    .line 63
    const/4 v4, -0x1

    .line 64
    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 71
    move-result p2

    .line 72
    .line 73
    if-eq p2, v4, :cond_4

    .line 74
    int-to-long v2, p2

    .line 75
    shl-long/2addr v2, v6

    .line 76
    int-to-long v5, v0

    .line 77
    or-long/2addr v2, v5

    .line 78
    .line 79
    iput-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    long-to-int p2, v2

    .line 82
    .line 83
    if-ne p2, v0, :cond_3

    .line 84
    .line 85
    shr-long p2, v2, v6

    .line 86
    long-to-int p2, p2

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_3
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 93
    move-result p2

    .line 94
    int-to-long v2, p2

    .line 95
    shl-long/2addr v2, v6

    .line 96
    int-to-long v5, v0

    .line 97
    or-long/2addr v2, v5

    .line 98
    .line 99
    iput-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 100
    .line 101
    :cond_4
    :goto_1
    if-eq p2, v4, :cond_5

    .line 102
    neg-int p2, p2

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    .line 106
    goto :goto_2

    .line 107
    .line 108
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameJSONB:[B

    .line 109
    .line 110
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    .line 114
    .line 115
    :goto_2
    const/16 p2, 0x79

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(B)V

    .line 119
    neg-int p2, v1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 123
    const/4 p1, 0x1

    .line 124
    return p1

    .line 125
    :cond_6
    const/4 p1, 0x0

    .line 126
    return p1
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/lang/Enum;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 15
    move-result-wide v3

    .line 16
    or-long/2addr v1, v3

    .line 17
    .line 18
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 19
    .line 20
    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 21
    and-long/2addr v1, v3

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long p2, v1, v3

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 34
    return v0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    .line 38
    :cond_1
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeEnum(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V

    .line 48
    :goto_0
    return v0
.end method

.method public final writeEnum(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 10

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
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

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
    if-nez v2, :cond_b

    .line 18
    .line 19
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UnquoteFieldName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 28
    .line 29
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 30
    and-long/2addr v2, v0

    .line 31
    .line 32
    cmp-long v2, v2, v4

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v6, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    move v2, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v2, v3

    .line 40
    .line 41
    :goto_0
    iget-boolean v7, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    .line 42
    .line 43
    if-nez v7, :cond_2

    .line 44
    .line 45
    iget-boolean v8, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    .line 46
    .line 47
    if-eqz v8, :cond_2

    .line 48
    move v3, v6

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 52
    move-result v6

    .line 53
    .line 54
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingOrdinal:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 55
    .line 56
    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 57
    and-long/2addr v0, v8

    .line 58
    .line 59
    cmp-long v0, v0, v4

    .line 60
    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    if-nez v2, :cond_6

    .line 64
    .line 65
    if-eqz v7, :cond_4

    .line 66
    .line 67
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->utf8ValueCache:[[B

    .line 68
    .line 69
    aget-object v0, p2, v6

    .line 70
    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getBytes(I)[B

    .line 75
    move-result-object v0

    .line 76
    .line 77
    aput-object v0, p2, v6

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    .line 81
    return-void

    .line 82
    .line 83
    :cond_4
    if-eqz v3, :cond_6

    .line 84
    .line 85
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->utf16ValueCache:[[C

    .line 86
    .line 87
    aget-object v0, p2, v6

    .line 88
    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getChars(I)[C

    .line 93
    move-result-object v0

    .line 94
    .line 95
    aput-object v0, p2, v6

    .line 96
    .line 97
    .line 98
    :cond_5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    .line 99
    return-void

    .line 100
    .line 101
    .line 102
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 106
    return-void

    .line 107
    .line 108
    :cond_7
    if-nez v2, :cond_b

    .line 109
    .line 110
    if-eqz v7, :cond_9

    .line 111
    .line 112
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->valueNameCacheUTF8:[[B

    .line 113
    .line 114
    aget-object v0, p2, v6

    .line 115
    .line 116
    if-nez v0, :cond_8

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getNameBytes(I)[B

    .line 120
    move-result-object v0

    .line 121
    .line 122
    aput-object v0, p2, v6

    .line 123
    .line 124
    .line 125
    :cond_8
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    .line 126
    return-void

    .line 127
    .line 128
    :cond_9
    if-eqz v3, :cond_b

    .line 129
    .line 130
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->valueNameCacheUTF16:[[C

    .line 131
    .line 132
    aget-object v0, p2, v6

    .line 133
    .line 134
    if-nez v0, :cond_a

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->getNameChars(I)[C

    .line 138
    move-result-object v0

    .line 139
    .line 140
    aput-object v0, p2, v6

    .line 141
    .line 142
    .line 143
    :cond_a
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    .line 144
    return-void

    .line 145
    .line 146
    .line 147
    :cond_b
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 151
    move-result-object p2

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final writeEnumJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;)V
    .locals 9

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    goto :goto_1

    .line 4
    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 12
    .line 13
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 14
    .line 15
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 16
    .line 17
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 18
    or-long/2addr v4, v2

    .line 19
    and-long/2addr v4, v0

    .line 20
    .line 21
    const-wide/16 v6, 0x0

    .line 22
    .line 23
    cmp-long v4, v4, v6

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    move v4, v8

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v4, v5

    .line 31
    :goto_0
    and-long/2addr v0, v2

    .line 32
    .line 33
    cmp-long v0, v0, v6

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    move v5, v8

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 40
    move-result v0

    .line 41
    .line 42
    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    if-nez v5, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeSymbolNameOrdinal(Lcom/alibaba/fastjson2/JSONWriter;ILcom/alibaba/fastjson2/SymbolTable;)Z

    .line 52
    move-result v2

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    :goto_1
    return-void

    .line 56
    .line 57
    :cond_3
    if-eqz v5, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1, p2, v1}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;->writeJSONBToString(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Enum;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 61
    return-void

    .line 62
    .line 63
    :cond_4
    if-eqz v4, :cond_9

    .line 64
    const/4 p2, -0x1

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 70
    move-result v2

    .line 71
    .line 72
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 73
    .line 74
    cmp-long v5, v3, v6

    .line 75
    .line 76
    const/16 v6, 0x20

    .line 77
    .line 78
    if-nez v5, :cond_5

    .line 79
    .line 80
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 84
    move-result v1

    .line 85
    int-to-long v3, v1

    .line 86
    shl-long/2addr v3, v6

    .line 87
    int-to-long v5, v2

    .line 88
    or-long/2addr v3, v5

    .line 89
    .line 90
    iput-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    long-to-int v5, v3

    .line 93
    .line 94
    if-ne v5, v2, :cond_6

    .line 95
    .line 96
    shr-long v1, v3, v6

    .line 97
    long-to-int v1, v1

    .line 98
    goto :goto_2

    .line 99
    .line 100
    :cond_6
    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 104
    move-result v1

    .line 105
    int-to-long v3, v1

    .line 106
    shl-long/2addr v3, v6

    .line 107
    int-to-long v5, v2

    .line 108
    or-long/2addr v3, v5

    .line 109
    .line 110
    iput-wide v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameSymbolCache:J

    .line 111
    goto :goto_2

    .line 112
    :cond_7
    move v1, p2

    .line 113
    .line 114
    :goto_2
    if-eq v1, p2, :cond_8

    .line 115
    neg-int p2, v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(I)V

    .line 119
    goto :goto_3

    .line 120
    .line 121
    :cond_8
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->nameJSONB:[B

    .line 122
    .line 123
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([BJ)V

    .line 127
    .line 128
    .line 129
    :goto_3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 130
    return-void

    .line 131
    .line 132
    .line 133
    :cond_9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public final writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, Ljava/lang/Enum;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeEnum(Ljava/lang/Enum;)V

    .line 10
    return-void
.end method
