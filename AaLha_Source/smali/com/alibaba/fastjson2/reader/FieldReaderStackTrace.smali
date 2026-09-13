.class public Lcom/alibaba/fastjson2/reader/FieldReaderStackTrace;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p12}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 4
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 9
    and-long/2addr v0, v2

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    instance-of v0, p2, Ljava/util/Collection;

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    check-cast p2, Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    move v2, v1

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 47
    move-result v0

    .line 48
    .line 49
    if-ne v2, v0, :cond_3

    .line 50
    .line 51
    new-array p2, v1, [Ljava/lang/StackTraceElement;

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 56
    move-result v0

    .line 57
    .line 58
    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 59
    .line 60
    .line 61
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 62
    move-object p2, v0

    .line 63
    .line 64
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-void
.end method
