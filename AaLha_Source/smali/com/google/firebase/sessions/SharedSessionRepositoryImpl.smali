.class public final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laa/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;,
        Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSharedSessionRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedSessionRepository.kt\ncom/google/firebase/sessions/SharedSessionRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,257:1\n1863#2,2:258\n*S KotlinDebug\n*F\n+ 1 SharedSessionRepository.kt\ncom/google/firebase/sessions/SharedSessionRepositoryImpl\n*L\n199#1:258,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSharedSessionRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedSessionRepository.kt\ncom/google/firebase/sessions/SharedSessionRepositoryImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,257:1\n1863#2,2:258\n*S KotlinDebug\n*F\n+ 1 SharedSessionRepository.kt\ncom/google/firebase/sessions/SharedSessionRepositoryImpl\n*L\n199#1:258,2\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lea/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Laa/m0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Laa/j0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Laa/t0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/datastore/core/DataStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Laa/w;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/google/firebase/sessions/i;

.field public j:Z

.field public k:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lea/h;Laa/m0;Laa/j0;Laa/t0;Landroidx/datastore/core/DataStore;Laa/w;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1
    .param p1    # Lea/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Laa/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Laa/j0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Laa/t0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/datastore/core/DataStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Laa/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/coroutines/CoroutineContext;
        .annotation runtime Ld8/a;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea/h;",
            "Laa/m0;",
            "Laa/j0;",
            "Laa/t0;",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/i;",
            ">;",
            "Laa/w;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    const-string v0, "sessionsSettings"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionGenerator"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionFirelogPublisher"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "timeProvider"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "sessionDataStore"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "processDataManager"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "backgroundDispatcher"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->b:Lea/h;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->c:Laa/m0;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d:Laa/j0;

    .line 44
    .line 45
    iput-object p4, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->e:Laa/t0;

    .line 46
    .line 47
    iput-object p5, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->f:Landroidx/datastore/core/DataStore;

    .line 48
    .line 49
    iput-object p6, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g:Laa/w;

    .line 50
    .line 51
    iput-object p7, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->h:Lkotlin/coroutines/CoroutineContext;

    .line 52
    .line 53
    sget-object p1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;->GENERAL:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->k:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 56
    .line 57
    const-string p1, ""

    .line 58
    .line 59
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->l:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p7}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    new-instance p5, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$a;

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    invoke-direct {p5, p0, p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$a;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    const/4 p6, 0x3

    .line 72
    const/4 p7, 0x0

    .line 73
    const/4 p3, 0x0

    .line 74
    const/4 p4, 0x0

    .line 75
    invoke-static/range {p2 .. p7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static final synthetic d(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g:Laa/w;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Landroidx/datastore/core/DataStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->f:Landroidx/datastore/core/DataStore;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/j0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->d:Laa/j0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/m0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->c:Laa/m0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;)Laa/t0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->e:Laa/t0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->o(Lcom/google/firebase/sessions/i;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic j(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->p(Lcom/google/firebase/sessions/i;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic k(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->q(Lcom/google/firebase/sessions/i;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic l(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Ljava/lang/String;Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->r(Ljava/lang/String;Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->i:Lcom/google/firebase/sessions/i;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->m()Lcom/google/firebase/sessions/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g:Laa/w;

    .line 14
    .line 15
    invoke-interface {v1}, Laa/w;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->q(Lcom/google/firebase/sessions/i;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->p(Lcom/google/firebase/sessions/i;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->h:Lkotlin/coroutines/CoroutineContext;

    .line 33
    .line 34
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v5, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {v5, p0, v0, v1}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$d;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lcom/google/firebase/sessions/i;Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    const/4 v6, 0x3

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->i:Lcom/google/firebase/sessions/i;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g:Laa/w;

    .line 10
    .line 11
    invoke-interface {v0}, Laa/w;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->h:Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v4, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {v4, p0, v0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$c;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final m()Lcom/google/firebase/sessions/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->i:Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "localSessionData"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final n()Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->k:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o(Lcom/google/firebase/sessions/i;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/sessions/i;->h()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g:Laa/w;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Laa/w;->c(Ljava/util/Map;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public final p(Lcom/google/firebase/sessions/i;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/sessions/i;->h()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g:Laa/w;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Laa/w;->b(Ljava/util/Map;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g:Laa/w;

    .line 16
    .line 17
    invoke-interface {v0}, Laa/w;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    :cond_0
    return p1

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->g:Laa/w;

    .line 22
    .line 23
    invoke-interface {p1}, Laa/w;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public final q(Lcom/google/firebase/sessions/i;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/sessions/i;->g()Lcom/google/firebase/sessions/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->e:Laa/t0;

    .line 9
    .line 10
    invoke-interface {v2}, Laa/t0;->b()Lcom/google/firebase/sessions/k;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/firebase/sessions/k;->g(Lcom/google/firebase/sessions/k;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-object v0, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->b:Lea/h;

    .line 19
    .line 20
    invoke-virtual {v0}, Lea/h;->b()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-static {v2, v3, v4, v5}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/firebase/sessions/i;->i()Lcom/google/firebase/sessions/j;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/sessions/j;->h()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    :cond_1
    return v1

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/sessions/i;->i()Lcom/google/firebase/sessions/j;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/firebase/sessions/j;->h()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    return v1
.end method

.method public final r(Ljava/lang/String;Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->f0:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->f0:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;-><init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->Z:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->f0:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->Y:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p2, p1

    .line 41
    check-cast p2, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 42
    .line 43
    iget-object p1, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->X:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->k:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 63
    .line 64
    iget-object p3, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->l:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    if-eqz p3, :cond_3

    .line 71
    .line 72
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->l:Ljava/lang/String;

    .line 76
    .line 77
    sget-object p3, Lcom/google/firebase/sessions/api/a;->a:Lcom/google/firebase/sessions/api/a;

    .line 78
    .line 79
    iput-object p1, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->X:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object p2, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->Y:Ljava/lang/Object;

    .line 82
    .line 83
    iput v3, v0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->f0:I

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Lcom/google/firebase/sessions/api/a;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    if-ne p3, v1, :cond_4

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_4
    :goto_1
    check-cast p3, Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    check-cast p3, Ljava/lang/Iterable;

    .line 99
    .line 100
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/google/firebase/sessions/api/SessionSubscriber;

    .line 115
    .line 116
    new-instance v1, Lcom/google/firebase/sessions/api/SessionSubscriber$a;

    .line 117
    .line 118
    invoke-direct {v1, p1}, Lcom/google/firebase/sessions/api/SessionSubscriber$a;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/api/SessionSubscriber;->c(Lcom/google/firebase/sessions/api/SessionSubscriber$a;)V

    .line 122
    .line 123
    .line 124
    sget-object v1, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$b;->a:[I

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    aget v1, v1, v2

    .line 131
    .line 132
    if-eq v1, v3, :cond_6

    .line 133
    .line 134
    const/4 v2, 0x2

    .line 135
    if-ne v1, v2, :cond_5

    .line 136
    .line 137
    invoke-interface {v0}, Lcom/google/firebase/sessions/api/SessionSubscriber;->b()Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 146
    .line 147
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 148
    .line 149
    .line 150
    throw p1

    .line 151
    :cond_6
    invoke-interface {v0}, Lcom/google/firebase/sessions/api/SessionSubscriber;->b()Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 160
    .line 161
    return-object p1
.end method

.method public final s(Lcom/google/firebase/sessions/i;)V
    .locals 1
    .param p1    # Lcom/google/firebase/sessions/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->i:Lcom/google/firebase/sessions/i;

    .line 7
    .line 8
    return-void
.end method

.method public final t(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;)V
    .locals 1
    .param p1    # Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->k:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;

    .line 7
    .line 8
    return-void
.end method
