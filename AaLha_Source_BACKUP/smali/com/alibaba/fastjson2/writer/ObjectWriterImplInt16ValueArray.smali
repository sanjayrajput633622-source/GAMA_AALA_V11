.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

.field static final JSONB_TYPE_HASH:J

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field private final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[S>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

    .line 9
    .line 10
    const-string v0, "[S"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 14
    move-result-object v1

    .line 15
    .line 16
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->JSONB_TYPE_HASH:J

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
            "[S>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 6
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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, [S

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_1
    check-cast p2, [S

    .line 20
    .line 21
    :goto_0
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 22
    .line 23
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 24
    and-long/2addr p3, p5

    .line 25
    .line 26
    const-wide/16 p5, 0x0

    .line 27
    .line 28
    cmp-long p3, p3, p5

    .line 29
    .line 30
    if-eqz p3, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([S)V

    .line 34
    return-void

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt16([S)V

    .line 38
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    .line 4
    move-result p3

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 9
    .line 10
    sget-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->JSONB_TYPE_HASH:J

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p3, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 14
    .line 15
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

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
    check-cast p2, [S

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    check-cast p2, [S

    .line 29
    .line 30
    :goto_0
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 31
    .line 32
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 33
    and-long/2addr p3, p5

    .line 34
    .line 35
    const-wide/16 p5, 0x0

    .line 36
    .line 37
    cmp-long p3, p3, p5

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([S)V

    .line 43
    return-void

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt16([S)V

    .line 47
    return-void
.end method
