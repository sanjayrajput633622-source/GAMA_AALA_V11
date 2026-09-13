.class public final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/google/firebase/sessions/i;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/google/firebase/sessions/i;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.sessions.SharedSessionRepositoryImpl$appForeground$1$1"
    f = "SharedSessionRepository.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public X:I

.field public synthetic Y:Ljava/lang/Object;

.field public final synthetic Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/firebase/sessions/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/i;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/sessions/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

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

    new-instance v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;

    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    invoke-direct {v0, v1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Y:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/firebase/sessions/i;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->b(Lcom/google/firebase/sessions/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->X:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Y:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lcom/google/firebase/sessions/i;

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->k(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->i(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 29
    .line 30
    invoke-static {v2, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->j(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/w;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3}, Laa/w;->e()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/w;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i;->h()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v3, v4}, Laa/w;->g(Ljava/util/Map;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i;->h()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :goto_0
    const/4 v4, 0x0

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    move-object v5, v4

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/sessions/i;->i()Lcom/google/firebase/sessions/j;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    :goto_1
    if-nez p1, :cond_5

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-eqz v2, :cond_4

    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/w;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-interface {p1, v3}, Laa/w;->g(Ljava/util/Map;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v4, 0x3

    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/google/firebase/sessions/i;->f(Lcom/google/firebase/sessions/i;Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/i;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_4
    return-object v0

    .line 104
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/m0;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v5}, Laa/m0;->a(Lcom/google/firebase/sessions/j;)Lcom/google/firebase/sessions/j;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->f(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/j0;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v1, p1}, Laa/j0;->a(Lcom/google/firebase/sessions/j;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d$a;->Z:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/w;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-interface {v1}, Laa/w;->h()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1, v4, v3}, Lcom/google/firebase/sessions/i;->e(Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;)Lcom/google/firebase/sessions/i;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1

    .line 137
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 138
    .line 139
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 140
    .line 141
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p1
.end method
