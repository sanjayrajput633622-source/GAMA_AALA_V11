.class Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# instance fields
.field private final functionGet:Lcom/alibaba/fastjson2/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final functionSize:Lcom/alibaba/fastjson2/function/ToIntFunction;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/function/ToIntFunction;Lcom/alibaba/fastjson2/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/ToIntFunction;",
            "Lcom/alibaba/fastjson2/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionSize:Lcom/alibaba/fastjson2/function/ToIntFunction;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionGet:Lcom/alibaba/fastjson2/function/BiFunction;

    .line 8
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionSize:Lcom/alibaba/fastjson2/function/ToIntFunction;

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 12
    move-result p3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 16
    const/4 p4, 0x0

    .line 17
    .line 18
    :goto_0
    if-ge p4, p3, :cond_2

    .line 19
    .line 20
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionGet:Lcom/alibaba/fastjson2/function/BiFunction;

    .line 21
    .line 22
    .line 23
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p6

    .line 25
    .line 26
    .line 27
    invoke-interface {p5, p2, p6}, Lcom/alibaba/fastjson2/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p5

    .line 29
    .line 30
    check-cast p5, Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    move-result p5

    .line 35
    .line 36
    if-eqz p4, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 43
    .line 44
    add-int/lit8 p4, p4, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 49
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    .line 10
    move-result p3

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 15
    .line 16
    sget-wide p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;->JSONB_TYPE_HASH:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 20
    .line 21
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionSize:Lcom/alibaba/fastjson2/function/ToIntFunction;

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 25
    move-result p3

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 29
    const/4 p4, 0x0

    .line 30
    .line 31
    :goto_0
    if-ge p4, p3, :cond_2

    .line 32
    .line 33
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;->functionGet:Lcom/alibaba/fastjson2/function/BiFunction;

    .line 34
    .line 35
    .line 36
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object p6

    .line 38
    .line 39
    .line 40
    invoke-interface {p5, p2, p6}, Lcom/alibaba/fastjson2/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p5

    .line 42
    .line 43
    check-cast p5, Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    move-result p5

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 51
    .line 52
    add-int/lit8 p4, p4, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method
