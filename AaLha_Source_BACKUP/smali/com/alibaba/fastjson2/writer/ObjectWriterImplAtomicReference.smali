.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;


# instance fields
.field final defineClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;

    .line 9
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
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;->defineClass:Ljava/lang/Class;

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
    check-cast p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 21
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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 21
    return-void
.end method
