.class public final synthetic Lcom/alibaba/fastjson2/reader/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(JLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/n0;->a:J

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/n0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/n0;->a:J

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/n0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->t(JLjava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V

    return-void
.end method
