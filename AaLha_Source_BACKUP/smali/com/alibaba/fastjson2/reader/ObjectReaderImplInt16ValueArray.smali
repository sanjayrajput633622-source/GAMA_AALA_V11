.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "[S",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;

    .line 9
    .line 10
    const-string v0, "[S"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->HASH_TYPE:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "[S",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, [S

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 8
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
    new-array p2, p2, [S

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
    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

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
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

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
    check-cast v1, Ljava/lang/Short;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    .line 61
    move-result v1

    .line 62
    .line 63
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 64
    .line 65
    aput-short v1, p2, v0

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
    const-string p3, "can not cast to short "

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
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

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
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->HASH_TYPE:J

    .line 15
    .line 16
    cmp-long p4, p2, p4

    .line 17
    .line 18
    if-eqz p4, :cond_1

    .line 19
    .line 20
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;->HASH_TYPE:J

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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 56
    move-result p2

    .line 57
    const/4 p3, -0x1

    .line 58
    .line 59
    if-ne p2, p3, :cond_2

    .line 60
    const/4 p1, 0x0

    .line 61
    return-object p1

    .line 62
    .line 63
    :cond_2
    new-array p3, p2, [S

    .line 64
    const/4 p4, 0x0

    .line 65
    .line 66
    :goto_1
    if-ge p4, p2, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 70
    move-result p5

    .line 71
    int-to-short p5, p5

    .line 72
    .line 73
    aput-short p5, p3, p4

    .line 74
    .line 75
    add-int/lit8 p4, p4, 0x1

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 79
    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_4
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
    .line 14
    if-eqz p2, :cond_6

    .line 15
    .line 16
    const/16 p2, 0x10

    .line 17
    .line 18
    new-array p2, p2, [S

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
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([SI)[S

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

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
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([SI)[S

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
    int-to-short p5, p5

    .line 73
    .line 74
    aput-short p5, p2, p3

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
    if-eqz p2, :cond_8

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 102
    move-result p4

    .line 103
    .line 104
    if-eqz p4, :cond_7

    .line 105
    return-object p3

    .line 106
    .line 107
    :cond_7
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 108
    .line 109
    new-instance p4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    const-string p5, "not support input "

    .line 115
    .line 116
    .line 117
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p3

    .line 133
    .line 134
    :cond_8
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 135
    .line 136
    const-string p3, "TODO"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 144
    throw p2
.end method
