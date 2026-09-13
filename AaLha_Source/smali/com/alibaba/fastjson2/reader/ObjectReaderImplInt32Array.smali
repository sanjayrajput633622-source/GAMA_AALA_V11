.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field public static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;

    .line 8
    .line 9
    const-string v0, "[Integer"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->HASH_TYPE:J

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, [Ljava/lang/Integer;

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
    new-array p2, p2, [Ljava/lang/Integer;

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
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 35
    move-result v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    const-class v3, Ljava/lang/Integer;

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
    check-cast v0, Ljava/lang/Integer;

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
    const-string p3, "can not cast to Integer "

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

.method public bridge synthetic getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->getObjectClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
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
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->HASH_TYPE:J

    .line 15
    .line 16
    cmp-long p4, p2, p4

    .line 17
    .line 18
    if-eqz p4, :cond_1

    .line 19
    .line 20
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->HASH_TYPE:J

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
    .line 63
    if-ne p2, p3, :cond_2

    .line 64
    const/4 p1, 0x0

    .line 65
    return-object p1

    .line 66
    .line 67
    :cond_2
    new-array p3, p2, [Ljava/lang/Integer;

    .line 68
    const/4 p4, 0x0

    .line 69
    .line 70
    :goto_1
    if-ge p4, p2, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    .line 74
    move-result-object p5

    .line 75
    .line 76
    aput-object p5, p3, p4

    .line 77
    .line 78
    add-int/lit8 p4, p4, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    return-object p3
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

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
    const/4 p4, 0x0

    .line 14
    .line 15
    if-eqz p2, :cond_5

    .line 16
    .line 17
    const/16 p2, 0x10

    .line 18
    .line 19
    new-array p2, p2, [Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 23
    move-result p3

    .line 24
    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 37
    move-result p3

    .line 38
    .line 39
    if-nez p3, :cond_4

    .line 40
    .line 41
    add-int/lit8 p3, p4, 0x1

    .line 42
    array-length p5, p2

    .line 43
    .line 44
    sub-int p5, p3, p5

    .line 45
    .line 46
    if-lez p5, :cond_3

    .line 47
    array-length p5, p2

    .line 48
    .line 49
    shr-int/lit8 v0, p5, 0x1

    .line 50
    add-int/2addr p5, v0

    .line 51
    .line 52
    sub-int v0, p5, p3

    .line 53
    .line 54
    if-gez v0, :cond_2

    .line 55
    move p5, p3

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    check-cast p2, [Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    .line 65
    move-result-object p5

    .line 66
    .line 67
    aput-object p5, p2, p4

    .line 68
    move p4, p3

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 72
    .line 73
    const-string p3, "input end"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p2

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 85
    move-result p2

    .line 86
    .line 87
    if-eqz p2, :cond_7

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 95
    move-result p4

    .line 96
    .line 97
    if-eqz p4, :cond_6

    .line 98
    return-object p3

    .line 99
    .line 100
    :cond_6
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 101
    .line 102
    new-instance p4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    const-string p5, "not support input "

    .line 108
    .line 109
    .line 110
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p3

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    .line 129
    move-result p2

    .line 130
    .line 131
    if-eqz p2, :cond_8

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    .line 135
    move-result-object p1

    .line 136
    const/4 p2, 0x1

    .line 137
    .line 138
    new-array p2, p2, [Ljava/lang/Integer;

    .line 139
    .line 140
    aput-object p1, p2, p4

    .line 141
    return-object p2

    .line 142
    .line 143
    :cond_8
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 144
    .line 145
    const-string p3, "TODO"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    .line 152
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 153
    throw p2
.end method
