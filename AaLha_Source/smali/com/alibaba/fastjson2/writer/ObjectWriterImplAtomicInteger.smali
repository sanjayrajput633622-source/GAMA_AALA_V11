.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field final defineClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;

    .line 9
    .line 10
    const-string v0, "AtomicInteger"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->JSONB_TYPE_NAME_BYTES:[B

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->defineClass:Ljava/lang/Class;

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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 16
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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    .line 12
    move-result p3

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->JSONB_TYPE_NAME_BYTES:[B

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide p4, 0x6925ac96039ae7baL    # 3.24033204513211E198

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    .line 28
    move-result p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 32
    return-void
.end method
