.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBooleanNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    move-result p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 16
    return-void
.end method
