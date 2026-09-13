.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li8/l;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/FirebaseCommonKtxRegistrar$d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li8/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;->b(Li8/i;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Li8/i;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 2

    .line 1
    .line 2
    const-class v0, Ld8/d;

    .line 3
    .line 4
    const-class v1, Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    const-string v0, "get(...)"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
