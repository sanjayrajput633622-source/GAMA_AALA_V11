.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;

.field static final TYPE_HASH:J


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "[D",
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
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;

    .line 9
    .line 10
    const-string v0, "[D"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;->TYPE_HASH:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "[D",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, [D

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 8
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
    new-array p2, p2, [D

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
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Ljava/lang/Number;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 36
    move-result-wide v0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 61
    move-result-wide v0

    .line 62
    .line 63
    :goto_1
    add-int/lit8 v2, p3, 0x1

    .line 64
    .line 65
    aput-wide v0, p2, p3

    .line 66
    move p3, v2

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
    const-string p3, "can not cast to double "

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

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
    .locals 2

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
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;->TYPE_HASH:J

    .line 15
    .line 16
    cmp-long p2, p2, p4

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string p4, "not support autoType : "

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p2

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 50
    move-result p2

    .line 51
    const/4 p3, -0x1

    .line 52
    .line 53
    if-ne p2, p3, :cond_2

    .line 54
    const/4 p1, 0x0

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_2
    new-array p3, p2, [D

    .line 58
    const/4 p4, 0x0

    .line 59
    .line 60
    :goto_1
    if-ge p4, p2, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readDoubleValue()D

    .line 64
    move-result-wide v0

    .line 65
    .line 66
    aput-wide v0, p3, p4

    .line 67
    .line 68
    add-int/lit8 p4, p4, 0x1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
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
    new-array p2, p2, [D

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
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 32
    move-result-object p1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

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
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([DI)[D

    .line 67
    move-result-object p2

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readDoubleValue()D

    .line 71
    move-result-wide v0

    .line 72
    .line 73
    aput-wide v0, p2, p3

    .line 74
    move p3, p4

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 78
    .line 79
    const-string p3, "input end"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p2

    .line 88
    .line 89
    .line 90
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 91
    move-result p2

    .line 92
    .line 93
    if-eqz p2, :cond_8

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 101
    move-result p4

    .line 102
    .line 103
    if-eqz p4, :cond_7

    .line 104
    return-object p3

    .line 105
    .line 106
    :cond_7
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 107
    .line 108
    new-instance p4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    const-string p5, "not support input "

    .line 114
    .line 115
    .line 116
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p2

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p3

    .line 132
    .line 133
    :cond_8
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 134
    .line 135
    const-string p3, "TODO"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    .line 141
    .line 142
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 143
    throw p2
.end method
