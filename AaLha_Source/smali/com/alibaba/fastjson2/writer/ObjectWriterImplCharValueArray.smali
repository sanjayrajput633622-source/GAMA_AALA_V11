.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;

.field static final JSONB_TYPE_HASH:J

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field private final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;

    .line 9
    .line 10
    const-string v0, "[C"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 14
    move-result-object v1

    .line 15
    .line 16
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->JSONB_TYPE_HASH:J

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[C>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 6
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

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
    check-cast p2, [C

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    check-cast p2, [C

    .line 16
    .line 17
    :goto_0
    iget-boolean p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    const/4 p3, 0x0

    .line 21
    array-length p4, p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([CII)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_1
    new-instance p3, Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([C)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    .line 4
    move-result p3

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 9
    .line 10
    sget-wide p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->JSONB_TYPE_HASH:J

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 14
    .line 15
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, [C

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    check-cast p2, [C

    .line 29
    :goto_0
    const/4 p3, 0x0

    .line 30
    array-length p4, p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([CII)V

    .line 34
    return-void
.end method
