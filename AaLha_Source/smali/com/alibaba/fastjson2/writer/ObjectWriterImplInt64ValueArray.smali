.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;

.field static final JSONB_TYPE_HASH:J

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field private final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;

    .line 9
    .line 10
    const-string v0, "[J"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 14
    move-result-object v1

    .line 15
    .line 16
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 20
    move-result-wide v0

    .line 21
    .line 22
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->JSONB_TYPE_HASH:J

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
            "[J>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 6
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

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
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 9
    .line 10
    iget-object p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 11
    .line 12
    iget-wide p3, p3, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    .line 13
    .line 14
    const-wide/16 v0, 0x4

    .line 15
    and-long/2addr p3, v0

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    cmp-long p3, p3, v0

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 24
    .line 25
    const-class p4, Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 29
    move-result-object p3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p3, 0x0

    .line 32
    .line 33
    :goto_0
    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 34
    .line 35
    if-eqz p4, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {p4, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    check-cast p2, [J

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_2
    check-cast p2, [J

    .line 45
    .line 46
    :goto_1
    if-eqz p3, :cond_5

    .line 47
    .line 48
    sget-object p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;

    .line 49
    .line 50
    if-ne p3, p4, :cond_3

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_3
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 54
    .line 55
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 56
    and-long/2addr p3, p5

    .line 57
    .line 58
    cmp-long p3, p3, v0

    .line 59
    .line 60
    if-eqz p3, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([J)V

    .line 64
    return-void

    .line 65
    .line 66
    .line 67
    :cond_4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64([J)V

    .line 68
    return-void

    .line 69
    .line 70
    :cond_5
    :goto_2
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 71
    .line 72
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 73
    and-long/2addr p3, p5

    .line 74
    .line 75
    cmp-long p3, p3, v0

    .line 76
    .line 77
    if-eqz p3, :cond_6

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([J)V

    .line 81
    return-void

    .line 82
    .line 83
    .line 84
    :cond_6
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64([J)V

    .line 85
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

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
    .line 9
    :cond_0
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    .line 10
    move-result p3

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 15
    .line 16
    sget-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->JSONB_TYPE_HASH:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 20
    .line 21
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 22
    .line 23
    if-eqz p3, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, [J

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_2
    check-cast p2, [J

    .line 33
    .line 34
    :goto_0
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 35
    .line 36
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 37
    and-long/2addr p3, p5

    .line 38
    .line 39
    const-wide/16 p5, 0x0

    .line 40
    .line 41
    cmp-long p3, p3, p5

    .line 42
    .line 43
    if-eqz p3, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([J)V

    .line 47
    return-void

    .line 48
    .line 49
    .line 50
    :cond_3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64([J)V

    .line 51
    return-void
.end method
