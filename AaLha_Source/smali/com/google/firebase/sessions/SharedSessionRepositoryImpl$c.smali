.class public final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appBackground$1"
    f = "SharedSessionRepository.kt"
    i = {}
    l = {
        0x70
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public X:I

.field public final synthetic Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;

    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->X:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    move-object p1, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_1
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->e(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Landroidx/datastore/core/DataStore;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c$a;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v1, v3, v4}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c$a;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    iput v2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->X:I

    .line 45
    .line 46
    invoke-interface {p1, v1, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->m()Lcom/google/firebase/sessions/i;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->h(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/t0;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Laa/t0;->b()Lcom/google/firebase/sessions/k;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v4, 0x5

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v1, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/sessions/i;->f(Lcom/google/firebase/sessions/i;Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/i;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->s(Lcom/google/firebase/sessions/i;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p1
.end method
