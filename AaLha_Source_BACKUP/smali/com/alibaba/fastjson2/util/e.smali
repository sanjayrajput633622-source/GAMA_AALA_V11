.class public final synthetic Lcom/alibaba/fastjson2/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/alibaba/fastjson2/util/e;->c:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/util/e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/alibaba/fastjson2/util/e;->c:Ljava/lang/reflect/Method;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->e(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method
