.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field public static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "[I",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;

    .line 3
    .line 4
    const-class v1, [I

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    .line 9
    .line 10
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;

    .line 11
    .line 12
    const-string v0, "[I"

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->HASH_TYPE:J

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "[I",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 6
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
    new-array p2, p2, [I

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
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

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
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

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
    check-cast v1, Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result v1

    .line 62
    .line 63
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .line 64
    .line 65
    aput v1, p2, v0

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
    const-string p3, "can not cast to int "

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
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

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
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->HASH_TYPE:J

    .line 15
    .line 16
    cmp-long p4, p2, p4

    .line 17
    .line 18
    if-eqz p4, :cond_1

    .line 19
    .line 20
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->HASH_TYPE:J

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
    new-array p3, p2, [I

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
    .line 72
    aput p5, p3, p4

    .line 73
    .line 74
    add-int/lit8 p4, p4, 0x1

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :cond_4
    return-object p3
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    move-object p2, p0

    .line 10
    return-object p1

    .line 11
    :cond_0
    move-object p2, p0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    .line 15
    move-result p3

    .line 16
    const/4 p4, 0x0

    .line 17
    .line 18
    if-eqz p3, :cond_1

    .line 19
    return-object p4

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 23
    move-result p3

    .line 24
    .line 25
    if-eqz p3, :cond_7

    .line 26
    .line 27
    const/16 p3, 0x10

    .line 28
    .line 29
    new-array p3, p3, [I

    .line 30
    const/4 p4, 0x0

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 34
    move-result p5

    .line 35
    .line 36
    if-eqz p5, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 40
    .line 41
    .line 42
    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object p3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 46
    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-interface {p3, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    :cond_2
    return-object p1

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 56
    move-result p5

    .line 57
    .line 58
    if-nez p5, :cond_6

    .line 59
    .line 60
    add-int/lit8 p5, p4, 0x1

    .line 61
    array-length v0, p3

    .line 62
    .line 63
    sub-int v0, p5, v0

    .line 64
    .line 65
    if-lez v0, :cond_5

    .line 66
    array-length v0, p3

    .line 67
    .line 68
    shr-int/lit8 v1, v0, 0x1

    .line 69
    add-int/2addr v0, v1

    .line 70
    .line 71
    sub-int v1, v0, p5

    .line 72
    .line 73
    if-gez v1, :cond_4

    .line 74
    move v0, p5

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 78
    move-result-object p3

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 82
    move-result v0

    .line 83
    .line 84
    aput v0, p3, p4

    .line 85
    move p4, p5

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_6
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 89
    .line 90
    const-string p4, "input end"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p3

    .line 99
    .line 100
    .line 101
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 102
    move-result p3

    .line 103
    .line 104
    if-eqz p3, :cond_9

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 112
    move-result p5

    .line 113
    .line 114
    if-eqz p5, :cond_8

    .line 115
    return-object p4

    .line 116
    .line 117
    :cond_8
    new-instance p4, Lcom/alibaba/fastjson2/JSONException;

    .line 118
    .line 119
    new-instance p5, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    const-string v0, "not support input "

    .line 125
    .line 126
    .line 127
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p3

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    .line 141
    invoke-direct {p4, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p4

    .line 143
    .line 144
    :cond_9
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 145
    .line 146
    const-string p4, "TODO"

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    .line 153
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p3
.end method
