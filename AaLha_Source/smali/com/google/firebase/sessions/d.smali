.class public final Lcom/google/firebase/sessions/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/c;


# annotations
.annotation build Lda/a;
.end annotation

.annotation build Lda/h;
    value = {
        "com.google.firebase.annotations.concurrent.Blocking"
    }
.end annotation

.annotation build Lda/i;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lda/c<",
        "Landroidx/datastore/core/DataStore<",
        "Lcom/google/firebase/sessions/settings/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/sessions/d;->a:Ljavax/inject/Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/sessions/d;->b:Ljavax/inject/Provider;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/sessions/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;)",
            "Lcom/google/firebase/sessions/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/d;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)Landroidx/datastore/core/DataStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/settings/a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/b$b;->a:Lcom/google/firebase/sessions/b$b$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/sessions/b$b$a;->j(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)Landroidx/datastore/core/DataStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lda/e;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/datastore/core/DataStore;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public b()Landroidx/datastore/core/DataStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/settings/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/d;->a:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/firebase/sessions/d;->b:Ljavax/inject/Provider;

    .line 10
    .line 11
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/google/firebase/sessions/d;->c(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)Landroidx/datastore/core/DataStore;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/sessions/d;->b()Landroidx/datastore/core/DataStore;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
