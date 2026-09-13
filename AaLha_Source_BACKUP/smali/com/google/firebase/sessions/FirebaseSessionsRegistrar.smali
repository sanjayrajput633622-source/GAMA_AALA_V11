.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LIBRARY_NAME:Ljava/lang/String; = "fire-sessions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final appContext:Li8/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li8/g0<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final backgroundDispatcher:Li8/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li8/g0<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final blockingDispatcher:Li8/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li8/g0<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final firebaseApp:Li8/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li8/g0<",
            "Lx7/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final firebaseInstallationsApi:Li8/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li8/g0<",
            "Ll9/j;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final firebaseSessionsComponent:Li8/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li8/g0<",
            "Lcom/google/firebase/sessions/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final transportFactory:Li8/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li8/g0<",
            "Lj4/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

    .line 8
    .line 9
    const-class v0, Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Li8/g0;->b(Ljava/lang/Class;)Li8/g0;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "unqualified(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Li8/g0;

    .line 21
    .line 22
    const-class v0, Lx7/g;

    .line 23
    .line 24
    invoke-static {v0}, Li8/g0;->b(Ljava/lang/Class;)Li8/g0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Li8/g0;

    .line 32
    .line 33
    const-class v0, Ll9/j;

    .line 34
    .line 35
    invoke-static {v0}, Li8/g0;->b(Ljava/lang/Class;)Li8/g0;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Li8/g0;

    .line 43
    .line 44
    const-class v0, Ld8/a;

    .line 45
    .line 46
    const-class v2, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 47
    .line 48
    invoke-static {v0, v2}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v3, "qualified(...)"

    .line 53
    .line 54
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Li8/g0;

    .line 58
    .line 59
    const-class v0, Ld8/b;

    .line 60
    .line 61
    invoke-static {v0, v2}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Li8/g0;

    .line 69
    .line 70
    const-class v0, Lj4/l;

    .line 71
    .line 72
    invoke-static {v0}, Li8/g0;->b(Ljava/lang/Class;)Li8/g0;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Li8/g0;

    .line 80
    .line 81
    const-class v0, Lcom/google/firebase/sessions/b;

    .line 82
    .line 83
    invoke-static {v0}, Li8/g0;->b(Ljava/lang/Class;)Li8/g0;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Li8/g0;

    .line 91
    .line 92
    :try_start_0
    sget-object v0, Landroidx/datastore/core/MultiProcessDataStoreFactory;->INSTANCE:Landroidx/datastore/core/MultiProcessDataStoreFactory;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Li8/i;)Lcom/google/firebase/sessions/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$1(Li8/i;)Lcom/google/firebase/sessions/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAppContext$cp()Li8/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Li8/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getBackgroundDispatcher$cp()Li8/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Li8/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getBlockingDispatcher$cp()Li8/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Li8/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirebaseApp$cp()Li8/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Li8/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirebaseInstallationsApi$cp()Li8/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Li8/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirebaseSessionsComponent$cp()Li8/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Li8/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTransportFactory$cp()Li8/g0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Li8/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Li8/i;)Laa/k;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$0(Li8/i;)Laa/k;

    move-result-object p0

    return-object p0
.end method

.method private static final getComponents$lambda$0(Li8/i;)Laa/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Li8/g0;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/firebase/sessions/b;

    .line 8
    .line 9
    invoke-interface {p0}, Lcom/google/firebase/sessions/b;->b()Laa/k;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static final getComponents$lambda$1(Li8/i;)Lcom/google/firebase/sessions/b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/a;->a()Lcom/google/firebase/sessions/b$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Li8/g0;

    .line 6
    .line 7
    invoke-interface {p0, v1}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "get(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroid/content/Context;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/b$a;->c(Landroid/content/Context;)Lcom/google/firebase/sessions/b$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Li8/g0;

    .line 23
    .line 24
    invoke-interface {p0, v1}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/b$a;->d(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/b$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Li8/g0;

    .line 38
    .line 39
    invoke-interface {p0, v1}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 47
    .line 48
    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/b$a;->f(Lkotlin/coroutines/CoroutineContext;)Lcom/google/firebase/sessions/b$a;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Li8/g0;

    .line 53
    .line 54
    invoke-interface {p0, v1}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v1, Lx7/g;

    .line 62
    .line 63
    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/b$a;->a(Lx7/g;)Lcom/google/firebase/sessions/b$a;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Li8/g0;

    .line 68
    .line 69
    invoke-interface {p0, v1}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    check-cast v1, Ll9/j;

    .line 77
    .line 78
    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/b$a;->e(Ll9/j;)Lcom/google/firebase/sessions/b$a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Li8/g0;

    .line 83
    .line 84
    invoke-interface {p0, v1}, Li8/i;->i(Li8/g0;)Lk9/b;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v1, "getProvider(...)"

    .line 89
    .line 90
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, p0}, Lcom/google/firebase/sessions/b$a;->b(Lk9/b;)Lcom/google/firebase/sessions/b$a;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-interface {p0}, Lcom/google/firebase/sessions/b$a;->build()Lcom/google/firebase/sessions/b;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li8/g<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Laa/k;

    .line 2
    .line 3
    invoke-static {v0}, Li8/g;->h(Ljava/lang/Class;)Li8/g$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-sessions"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Li8/g$b;->h(Ljava/lang/String;)Li8/g$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Li8/g0;

    .line 14
    .line 15
    invoke-static {v2}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Laa/r;

    .line 24
    .line 25
    invoke-direct {v2}, Laa/r;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Li8/g$b;->f(Li8/l;)Li8/g$b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Li8/g$b;->e()Li8/g$b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Li8/g$b;->d()Li8/g;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-class v2, Lcom/google/firebase/sessions/b;

    .line 41
    .line 42
    invoke-static {v2}, Li8/g;->h(Ljava/lang/Class;)Li8/g$b;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "fire-sessions-component"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Li8/g$b;->h(Ljava/lang/String;)Li8/g$b;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Li8/g0;

    .line 53
    .line 54
    invoke-static {v3}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Li8/g0;

    .line 63
    .line 64
    invoke-static {v3}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Li8/g0;

    .line 73
    .line 74
    invoke-static {v3}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Li8/g0;

    .line 83
    .line 84
    invoke-static {v3}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Li8/g0;

    .line 93
    .line 94
    invoke-static {v3}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Li8/g0;

    .line 103
    .line 104
    invoke-static {v3}, Li8/w;->n(Li8/g0;)Li8/w;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Laa/s;

    .line 113
    .line 114
    invoke-direct {v3}, Laa/s;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Li8/g$b;->f(Li8/l;)Li8/g$b;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Li8/g$b;->d()Li8/g;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const-string v3, "3.0.3"

    .line 126
    .line 127
    invoke-static {v1, v3}, Lw9/h;->b(Ljava/lang/String;Ljava/lang/String;)Li8/g;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const/4 v3, 0x3

    .line 132
    new-array v3, v3, [Li8/g;

    .line 133
    .line 134
    const/4 v4, 0x0

    .line 135
    aput-object v0, v3, v4

    .line 136
    .line 137
    const/4 v0, 0x1

    .line 138
    aput-object v2, v3, v0

    .line 139
    .line 140
    const/4 v0, 0x2

    .line 141
    aput-object v1, v3, v0

    .line 142
    .line 143
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    return-object v0
.end method
