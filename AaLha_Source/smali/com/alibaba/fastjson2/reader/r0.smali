.class public final synthetic Lcom/alibaba/fastjson2/reader/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    check-cast p1, [J

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    return-object v0
.end method
