.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Li8/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li8/g0<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getAppContext$cp()Li8/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b()Li8/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li8/g0<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getBackgroundDispatcher$cp()Li8/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c()Li8/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li8/g0<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getBlockingDispatcher$cp()Li8/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d()Li8/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li8/g0<",
            "Lx7/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getFirebaseApp$cp()Li8/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final e()Li8/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li8/g0<",
            "Ll9/j;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getFirebaseInstallationsApi$cp()Li8/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final f()Li8/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li8/g0<",
            "Lcom/google/firebase/sessions/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getFirebaseSessionsComponent$cp()Li8/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final g()Li8/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li8/g0<",
            "Lj4/l;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->access$getTransportFactory$cp()Li8/g0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
