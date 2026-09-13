.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;

.field static final TYPE_HASH:J


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "[C",
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
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;

    .line 9
    .line 10
    const-string v0, "[C"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->TYPE_HASH:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "[C",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, [C

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 8
    return-void
.end method


# virtual methods
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
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->TYPE_HASH:J

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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 50
    move-result p2

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 65
    move-result p2

    .line 66
    const/4 p3, -0x1

    .line 67
    .line 68
    if-ne p2, p3, :cond_3

    .line 69
    const/4 p1, 0x0

    .line 70
    return-object p1

    .line 71
    .line 72
    :cond_3
    new-array p3, p2, [C

    .line 73
    const/4 p4, 0x0

    .line 74
    move p5, p4

    .line 75
    .line 76
    :goto_1
    if-ge p5, p2, :cond_5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 86
    move-result v0

    .line 87
    int-to-char v0, v0

    .line 88
    .line 89
    aput-char v0, p3, p5

    .line 90
    goto :goto_2

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p4}, Ljava/lang/String;->charAt(I)C

    .line 98
    move-result v0

    .line 99
    .line 100
    aput-char v0, p3, p5

    .line 101
    .line 102
    :goto_2
    add-int/lit8 p5, p5, 0x1

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_6
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
    .line 6
    if-eqz p2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 12
    move-result p2

    .line 13
    .line 14
    const/16 p3, 0x22

    .line 15
    .line 16
    if-ne p2, p3, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    :cond_1
    return-object p1

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 37
    move-result p2

    .line 38
    .line 39
    if-eqz p2, :cond_9

    .line 40
    .line 41
    const/16 p2, 0x10

    .line 42
    .line 43
    new-array p2, p2, [C

    .line 44
    const/4 p3, 0x0

    .line 45
    move p4, p3

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 49
    move-result p5

    .line 50
    .line 51
    if-eqz p5, :cond_4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 55
    .line 56
    .line 57
    invoke-static {p2, p4}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 61
    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    :cond_3
    return-object p1

    .line 68
    .line 69
    :cond_4
    add-int/lit8 p5, p4, 0x1

    .line 70
    array-length v0, p2

    .line 71
    .line 72
    sub-int v0, p5, v0

    .line 73
    .line 74
    if-lez v0, :cond_6

    .line 75
    array-length v0, p2

    .line 76
    .line 77
    shr-int/lit8 v1, v0, 0x1

    .line 78
    add-int/2addr v0, v1

    .line 79
    .line 80
    sub-int v1, v0, p5

    .line 81
    .line 82
    if-gez v1, :cond_5

    .line 83
    move v0, p5

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 87
    move-result-object p2

    .line 88
    .line 89
    .line 90
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 97
    move-result v0

    .line 98
    int-to-char v0, v0

    .line 99
    .line 100
    aput-char v0, p2, p4

    .line 101
    :goto_1
    move p4, p5

    .line 102
    goto :goto_0

    .line 103
    .line 104
    .line 105
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    if-nez v0, :cond_8

    .line 109
    move v0, p3

    .line 110
    goto :goto_2

    .line 111
    .line 112
    .line 113
    :cond_8
    invoke-virtual {v0, p3}, Ljava/lang/String;->charAt(I)C

    .line 114
    move-result v0

    .line 115
    .line 116
    :goto_2
    aput-char v0, p2, p4

    .line 117
    goto :goto_1

    .line 118
    .line 119
    :cond_9
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 120
    .line 121
    const-string p3, "TODO"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    .line 128
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p2
.end method
