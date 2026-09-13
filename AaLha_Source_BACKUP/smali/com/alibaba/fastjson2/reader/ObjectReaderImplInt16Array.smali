.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;

    .line 8
    .line 9
    const-string v0, "[Short"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;->HASH_TYPE:J

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, [Ljava/lang/Short;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 4
    move-result p2

    .line 5
    .line 6
    new-array p2, p2, [Ljava/lang/Short;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    const/4 p3, 0x0

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    check-cast v0, Ljava/lang/Number;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 39
    move-result-object v0

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    const-class v3, Ljava/lang/Short;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    check-cast v0, Ljava/lang/Short;

    .line 61
    .line 62
    :goto_1
    add-int/lit8 v1, p3, 0x1

    .line 63
    .line 64
    aput-object v0, p2, p3

    .line 65
    move p3, v1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string p3, "can not cast to Short "

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-result-object p3

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p1

    .line 94
    :cond_3
    return-object p2
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

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
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;->HASH_TYPE:J

    .line 15
    .line 16
    cmp-long p4, p2, p4

    .line 17
    .line 18
    if-eqz p4, :cond_1

    .line 19
    .line 20
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->HASH_TYPE:J

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
    const-string p4, "not support type "

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 41
    move-result-object p4

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p2

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 60
    move-result p2

    .line 61
    const/4 p3, -0x1

    .line 62
    const/4 p4, 0x0

    .line 63
    .line 64
    if-ne p2, p3, :cond_2

    .line 65
    return-object p4

    .line 66
    .line 67
    :cond_2
    new-array p3, p2, [Ljava/lang/Short;

    .line 68
    const/4 p5, 0x0

    .line 69
    .line 70
    :goto_1
    if-ge p5, p2, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    if-nez v0, :cond_3

    .line 77
    move-object v0, p4

    .line 78
    goto :goto_2

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    .line 82
    move-result v0

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    :goto_2
    aput-object v0, p3, p5

    .line 89
    .line 90
    add-int/lit8 p5, p5, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    return-object p3
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
    new-array p2, p2, [Ljava/lang/Short;

    .line 19
    const/4 p3, 0x0

    .line 20
    move p4, p3

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 24
    move-result p5

    .line 25
    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 30
    .line 31
    .line 32
    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 38
    move-result p5

    .line 39
    .line 40
    if-nez p5, :cond_5

    .line 41
    .line 42
    add-int/lit8 p5, p4, 0x1

    .line 43
    array-length v0, p2

    .line 44
    .line 45
    sub-int v0, p5, v0

    .line 46
    .line 47
    if-lez v0, :cond_3

    .line 48
    array-length v0, p2

    .line 49
    .line 50
    shr-int/lit8 v1, v0, 0x1

    .line 51
    add-int/2addr v0, v1

    .line 52
    .line 53
    sub-int v1, v0, p5

    .line 54
    .line 55
    if-gez v1, :cond_2

    .line 56
    move v0, p5

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    check-cast p2, [Ljava/lang/Short;

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    move v0, p3

    .line 70
    goto :goto_1

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    .line 74
    move-result v0

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    aput-object v0, p2, p4

    .line 81
    move p4, p5

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 85
    .line 86
    const-string p3, "input end"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p2

    .line 95
    .line 96
    .line 97
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 98
    move-result p2

    .line 99
    .line 100
    if-eqz p2, :cond_8

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 108
    move-result p4

    .line 109
    .line 110
    if-eqz p4, :cond_7

    .line 111
    return-object p3

    .line 112
    .line 113
    :cond_7
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 114
    .line 115
    new-instance p4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    const-string p5, "not support input "

    .line 121
    .line 122
    .line 123
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p3

    .line 139
    .line 140
    :cond_8
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 141
    .line 142
    const-string p3, "TODO"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    .line 149
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p2
.end method
