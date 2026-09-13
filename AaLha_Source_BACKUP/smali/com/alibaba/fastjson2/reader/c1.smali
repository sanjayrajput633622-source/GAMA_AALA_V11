.class public final synthetic Lcom/alibaba/fastjson2/reader/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object v0
.end method
