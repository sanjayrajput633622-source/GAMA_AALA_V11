.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;


# instance fields
.field private final format:Ljava/text/DecimalFormat;

.field final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;Lcom/alibaba/fastjson2/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DecimalFormat;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->format:Ljava/text/DecimalFormat;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 8
    return-void
.end method


# virtual methods
.method public getFunction()Lcom/alibaba/fastjson2/function/Function;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Ljava/math/BigDecimal;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    check-cast p2, Ljava/math/BigDecimal;

    .line 16
    .line 17
    :goto_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->format:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, p5, p6, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 21
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    check-cast p2, Ljava/math/BigDecimal;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    check-cast p2, Ljava/math/BigDecimal;

    .line 16
    .line 17
    :goto_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->format:Ljava/text/DecimalFormat;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, p5, p6, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 21
    return-void
.end method
