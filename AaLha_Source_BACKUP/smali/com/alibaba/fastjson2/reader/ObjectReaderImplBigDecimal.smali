.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;


# instance fields
.field private converter:Lcom/alibaba/fastjson2/function/Function;

.field final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/math/BigDecimal;",
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
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/math/BigDecimal;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    new-instance v1, Lcom/alibaba/fastjson2/function/impl/ToAny;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/function/impl/ToAny;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->converter:Lcom/alibaba/fastjson2/function/Function;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 15
    return-void
.end method


# virtual methods
.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    const-string p2, "value"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    const-string p2, "$numberDecimal"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    :cond_0
    instance-of p1, p2, Ljava/math/BigDecimal;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->converter:Lcom/alibaba/fastjson2/function/Function;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    :cond_1
    check-cast p2, Ljava/math/BigDecimal;

    .line 27
    .line 28
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_2
    return-object p2
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBigDecimal()Ljava/math/BigDecimal;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    :cond_0
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBigDecimal()Ljava/math/BigDecimal;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    :cond_0
    return-object p1
.end method
