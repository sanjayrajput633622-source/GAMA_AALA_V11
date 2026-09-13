.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;

.field static final TYPE_HASH:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;

    .line 8
    .line 9
    const-string v0, "java.lang.Class"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;->TYPE_HASH:J

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    const/16 v0, -0x6e

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    sget-wide v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;->TYPE_HASH:J

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    :cond_0
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v2, p2

    .line 22
    move-object v3, p3

    .line 23
    move-wide v4, p4

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 27
    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string p4, "not support autoType : "

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 40
    move-result-object p4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p2

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    .line 4
    move-result-wide v1

    .line 5
    .line 6
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-class v3, Ljava/lang/Class;

    .line 15
    move-wide v4, p4

    .line 16
    .line 17
    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    if-nez p3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 25
    move-result-object p3

    .line 26
    .line 27
    const-class p4, Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p3, p4, v4, v5}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    :cond_0
    if-eqz p3, :cond_2

    .line 34
    return-object p3

    .line 35
    :cond_1
    move-wide v4, p4

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 39
    move-result-object p3

    .line 40
    .line 41
    iget-wide p4, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 42
    or-long/2addr p4, v4

    .line 43
    .line 44
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 45
    .line 46
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 47
    and-long/2addr p4, v0

    .line 48
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    cmp-long p4, p4, v0

    .line 52
    .line 53
    if-eqz p4, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/String;)Ljava/lang/Class;

    .line 57
    move-result-object p4

    .line 58
    .line 59
    if-eqz p4, :cond_3

    .line 60
    return-object p4

    .line 61
    .line 62
    :cond_3
    iget-object p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 63
    .line 64
    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 65
    .line 66
    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 67
    const/4 v0, 0x0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3, v0, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    return-object p2

    .line 75
    .line 76
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 77
    .line 78
    new-instance p4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    const-string p5, "class not found "

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p2

    .line 102
    .line 103
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    const-string p4, "not support ClassForName : "

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string p3, ", you can config \'JSONReader.Feature.SupportClassForName\'"

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 130
    .line 131
    .line 132
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p2
.end method
