.class public final Lcom/google/firebase/sessions/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/c;


# annotations
.annotation build Lda/a;
.end annotation

.annotation build Lda/h;
.end annotation

.annotation build Lda/i;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lda/c<",
        "Laa/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lx7/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lx7/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/sessions/c;->a:Ljavax/inject/Provider;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lx7/g;)Laa/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/b$b;->a:Lcom/google/firebase/sessions/b$b$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/firebase/sessions/b$b$a;->e(Lx7/g;)Laa/b;

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
    check-cast p0, Laa/b;

    .line 12
    .line 13
    return-object p0
.end method

.method public static b(Ljavax/inject/Provider;)Lcom/google/firebase/sessions/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lx7/g;",
            ">;)",
            "Lcom/google/firebase/sessions/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/c;-><init>(Ljavax/inject/Provider;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public c()Laa/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/c;->a:Ljavax/inject/Provider;

    .line 2
    .line 3
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx7/g;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/firebase/sessions/c;->a(Lx7/g;)Laa/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/sessions/c;->c()Laa/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
