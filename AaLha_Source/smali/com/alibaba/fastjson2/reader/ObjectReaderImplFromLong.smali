.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final creator:Lcom/alibaba/fastjson2/function/LongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/LongFunction<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/LongFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/LongFunction;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;->creator:Lcom/alibaba/fastjson2/function/LongFunction;

    .line 6
    return-void
.end method


# virtual methods
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

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
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->objectClass:Ljava/lang/Class;

    .line 11
    .line 12
    const-class p3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    if-ne p2, p3, :cond_2

    .line 15
    .line 16
    const/16 p2, -0x6e

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 20
    move-result p2

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 26
    move-result-wide p2

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const-wide p4, -0x16176b52da9e7fc2L    # -1.505228865156308E202

    .line 32
    .line 33
    cmp-long p2, p2, p4

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p3

    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;->creator:Lcom/alibaba/fastjson2/function/LongFunction;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 56
    move-result-wide p3

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, p3, p4}, Lcom/alibaba/fastjson2/function/LongFunction;->apply(J)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

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
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;->creator:Lcom/alibaba/fastjson2/function/LongFunction;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 14
    move-result-wide p3

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p3, p4}, Lcom/alibaba/fastjson2/function/LongFunction;->apply(J)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
