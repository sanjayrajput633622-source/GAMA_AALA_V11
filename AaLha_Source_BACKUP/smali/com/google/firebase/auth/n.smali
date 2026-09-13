.class public final Lcom/google/firebase/auth/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic X:Lcom/google/firebase/auth/FirebaseAuth;

.field public final synthetic Y:Lr9/c;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lr9/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/n;->X:Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/firebase/auth/n;->Y:Lr9/c;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/n;->X:Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lh8/a;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/firebase/auth/n;->Y:Lr9/c;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Lh8/a;->a(Lr9/c;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/n;->X:Lcom/google/firebase/auth/FirebaseAuth;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    check-cast v1, Lcom/google/firebase/auth/FirebaseAuth$b;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/google/firebase/auth/n;->X:Lcom/google/firebase/auth/FirebaseAuth;

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v2}, Lcom/google/firebase/auth/FirebaseAuth$b;->a(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method
