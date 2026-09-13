.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field public static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "[J",
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
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;

    .line 3
    .line 4
    const-class v1, [J

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)V

    .line 9
    .line 10
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;

    .line 11
    .line 12
    const-string v0, "[J"

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 16
    move-result-wide v0

    .line 17
    .line 18
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->HASH_TYPE:J

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
            "[J",
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
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

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
    new-array p2, p2, [J

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
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

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
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

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
    check-cast v0, Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

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
    const-string p3, "can not cast to long "

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
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

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
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64ValueArray()[J

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    :cond_0
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64ValueArray()[J

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    :cond_0
    return-object p1
.end method
