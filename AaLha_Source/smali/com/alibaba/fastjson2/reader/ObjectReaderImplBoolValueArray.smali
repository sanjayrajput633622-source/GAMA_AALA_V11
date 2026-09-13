.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;

.field static final TYPE_HASH:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;

    .line 8
    .line 9
    const-string v0, "[Z"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;->TYPE_HASH:J

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, [Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
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
    sget-wide p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;->TYPE_HASH:J

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
    new-array p3, p2, [Z

    .line 58
    const/4 p4, 0x0

    .line 59
    .line 60
    :goto_1
    if-ge p4, p2, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    .line 64
    move-result p5

    .line 65
    .line 66
    aput-boolean p5, p3, p4

    .line 67
    .line 68
    add-int/lit8 p4, p4, 0x1

    .line 69
    goto :goto_1

    .line 70
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
    .line 14
    if-eqz p2, :cond_4

    .line 15
    .line 16
    const/16 p2, 0x10

    .line 17
    .line 18
    new-array p2, p2, [Z

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
    if-eqz p4, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 29
    .line 30
    .line 31
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_1
    add-int/lit8 p4, p3, 0x1

    .line 36
    array-length p5, p2

    .line 37
    .line 38
    sub-int p5, p4, p5

    .line 39
    .line 40
    if-lez p5, :cond_3

    .line 41
    array-length p5, p2

    .line 42
    .line 43
    shr-int/lit8 v0, p5, 0x1

    .line 44
    add-int/2addr p5, v0

    .line 45
    .line 46
    sub-int v0, p5, p4

    .line 47
    .line 48
    if-gez v0, :cond_2

    .line 49
    move p5, p4

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 53
    move-result-object p2

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    .line 57
    move-result p5

    .line 58
    .line 59
    aput-boolean p5, p2, p3

    .line 60
    move p3, p4

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 65
    move-result p2

    .line 66
    .line 67
    if-eqz p2, :cond_6

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 75
    move-result p4

    .line 76
    .line 77
    if-eqz p4, :cond_5

    .line 78
    return-object p3

    .line 79
    .line 80
    :cond_5
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 81
    .line 82
    new-instance p4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string p5, "not support input "

    .line 88
    .line 89
    .line 90
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p3

    .line 106
    .line 107
    :cond_6
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 108
    .line 109
    const-string p3, "TODO"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p2
.end method
