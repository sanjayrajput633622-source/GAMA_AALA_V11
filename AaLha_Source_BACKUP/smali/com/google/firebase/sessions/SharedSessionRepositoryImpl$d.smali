.class public final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->a()V
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
    c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1"
    f = "SharedSessionRepository.kt"
    i = {}
    l = {
        0x87,
        0xba
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public X:I

.field public final synthetic Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

.field public final synthetic Z:Lcom/google/firebase/sessions/i;


# direct methods
.method public constructor <init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;",
            "Lcom/google/firebase/sessions/i;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    iput-object p2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Z:Lcom/google/firebase/sessions/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;

    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Z:Lcom/google/firebase/sessions/i;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    iget v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->X:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eq v0, v3, :cond_1

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_2

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception v0

    .line 32
    move-object p1, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :try_start_1
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->e(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Landroidx/datastore/core/DataStore;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct {v0, v4, v5}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    iput v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->X:I

    .line 52
    .line 53
    invoke-interface {p1, v0, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    if-ne p1, v1, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Z:Lcom/google/firebase/sessions/i;

    .line 66
    .line 67
    invoke-static {p1, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->k(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/m0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Z:Lcom/google/firebase/sessions/i;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i;->i()Lcom/google/firebase/sessions/j;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Laa/m0;->a(Lcom/google/firebase/sessions/j;)Lcom/google/firebase/sessions/j;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Z:Lcom/google/firebase/sessions/i;

    .line 92
    .line 93
    const/4 v7, 0x4

    .line 94
    const/4 v8, 0x0

    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v6, 0x0

    .line 97
    invoke-static/range {v3 .. v8}, Lcom/google/firebase/sessions/i;->f(Lcom/google/firebase/sessions/i;Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/i;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->s(Lcom/google/firebase/sessions/i;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->f(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/j0;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p1, v4}, Laa/j0;->a(Lcom/google/firebase/sessions/j;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->Y:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/google/firebase/sessions/j;->h()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sget-object v3, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->FALLBACK:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 120
    .line 121
    iput v2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->X:I

    .line 122
    .line 123
    invoke-static {p1, v0, v3, p0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->l(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Ljava/lang/String;Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-ne p1, v1, :cond_3

    .line 128
    .line 129
    :goto_1
    return-object v1

    .line 130
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    .line 132
    return-object p1
.end method
