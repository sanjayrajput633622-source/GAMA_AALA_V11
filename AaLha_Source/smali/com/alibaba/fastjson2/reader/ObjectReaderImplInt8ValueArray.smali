.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "[B",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final features:J

.field final format:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;

    .line 9
    .line 10
    const-string v0, "[B"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->HASH_TYPE:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/function/Function;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "[B",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->format:Ljava/lang/String;

    .line 7
    const-string v0, "base64"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->features:J

    .line 8
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->format:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->features:J

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 4
    move-result p2

    .line 5
    .line 6
    new-array p2, p2, [B

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    const/4 p3, 0x0

    .line 12
    move v0, p3

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    move v1, p3

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    instance-of v2, v1, Ljava/lang/Number;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Number;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    .line 36
    move-result v1

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    check-cast v1, Ljava/lang/Byte;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    .line 61
    move-result v1

    .line 62
    .line 63
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 64
    .line 65
    aput-byte v1, p2, v0

    .line 66
    move v0, v2

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    const-string p3, "can not cast to byte "

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    move-result-object p3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p1

    .line 95
    .line 96
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_4
    return-object p2
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    const/16 p2, -0x6e

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 12
    move-result-wide p2

    .line 13
    .line 14
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->HASH_TYPE:J

    .line 15
    .line 16
    cmp-long p4, p2, p4

    .line 17
    .line 18
    if-eqz p4, :cond_1

    .line 19
    .line 20
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->HASH_TYPE:J

    .line 21
    .line 22
    cmp-long p2, p2, p4

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string p4, "not support autoType : "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p2

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isBinary()Z

    .line 56
    move-result p2

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBinary()[B

    .line 62
    move-result-object p1

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 67
    move-result p2

    .line 68
    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    .line 77
    move-result-object p1

    .line 78
    goto :goto_2

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 82
    move-result p2

    .line 83
    const/4 p3, -0x1

    .line 84
    .line 85
    if-ne p2, p3, :cond_4

    .line 86
    const/4 p1, 0x0

    .line 87
    return-object p1

    .line 88
    .line 89
    :cond_4
    new-array p3, p2, [B

    .line 90
    const/4 p4, 0x0

    .line 91
    .line 92
    :goto_1
    if-ge p4, p2, :cond_5

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 96
    move-result p5

    .line 97
    int-to-byte p5, p5

    .line 98
    .line 99
    aput-byte p5, p3, p4

    .line 100
    .line 101
    add-int/lit8 p4, p4, 0x1

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object p1, p3

    .line 104
    .line 105
    :goto_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 106
    .line 107
    if-eqz p2, :cond_6

    .line 108
    .line 109
    .line 110
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    :cond_6
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    return-object p3

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_6

    .line 15
    .line 16
    const/16 p2, 0x10

    .line 17
    .line 18
    new-array p2, p2, [B

    .line 19
    const/4 p3, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 23
    move-result p4

    .line 24
    .line 25
    if-eqz p4, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    :cond_1
    return-object p1

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 45
    move-result p4

    .line 46
    .line 47
    if-nez p4, :cond_5

    .line 48
    .line 49
    add-int/lit8 p4, p3, 0x1

    .line 50
    array-length p5, p2

    .line 51
    .line 52
    sub-int p5, p4, p5

    .line 53
    .line 54
    if-lez p5, :cond_4

    .line 55
    array-length p5, p2

    .line 56
    .line 57
    shr-int/lit8 v0, p5, 0x1

    .line 58
    add-int/2addr p5, v0

    .line 59
    .line 60
    sub-int v0, p5, p4

    .line 61
    .line 62
    if-gez v0, :cond_3

    .line 63
    move p5, p4

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 71
    move-result p5

    .line 72
    int-to-byte p5, p5

    .line 73
    .line 74
    aput-byte p5, p2, p3

    .line 75
    move p3, p4

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 79
    .line 80
    const-string p3, "input end"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p2

    .line 89
    .line 90
    .line 91
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 92
    move-result p2

    .line 93
    .line 94
    if-eqz p2, :cond_b

    .line 95
    .line 96
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->features:J

    .line 97
    or-long/2addr p4, v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 101
    move-result-wide p4

    .line 102
    .line 103
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 104
    .line 105
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 106
    and-long/2addr p4, v0

    .line 107
    .line 108
    const-wide/16 v0, 0x0

    .line 109
    .line 110
    cmp-long p2, p4, v0

    .line 111
    .line 112
    if-eqz p2, :cond_7

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBase64()[B

    .line 116
    move-result-object p3

    .line 117
    goto :goto_1

    .line 118
    .line 119
    .line 120
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 125
    move-result p4

    .line 126
    .line 127
    if-eqz p4, :cond_8

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_8
    const-string p3, ";base64,"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 134
    move-result p3

    .line 135
    const/4 p4, -0x1

    .line 136
    .line 137
    if-eq p3, p4, :cond_a

    .line 138
    .line 139
    add-int/lit8 p3, p3, 0x8

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    .line 145
    .line 146
    invoke-static {}, Lcom/alibaba/fastjson2/n;->a()Ljava/util/Base64$Decoder;

    .line 147
    move-result-object p2

    .line 148
    .line 149
    .line 150
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/o;->a(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B

    .line 151
    move-result-object p3

    .line 152
    .line 153
    :goto_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 154
    .line 155
    if-eqz p1, :cond_9

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-result-object p1

    .line 160
    return-object p1

    .line 161
    :cond_9
    return-object p3

    .line 162
    .line 163
    :cond_a
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 164
    .line 165
    new-instance p4, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    const-string p5, "illegal input : "

    .line 171
    .line 172
    .line 173
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object p2

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    .line 186
    .line 187
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 188
    throw p3

    .line 189
    .line 190
    :cond_b
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 191
    .line 192
    const-string p3, "TODO"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    .line 198
    .line 199
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p2
.end method
