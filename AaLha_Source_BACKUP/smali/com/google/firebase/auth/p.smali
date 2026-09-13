.class public final Lcom/google/firebase/auth/p;
.super Lh8/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh8/n0<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/firebase/auth/FirebaseUser;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;ZLcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/google/firebase/auth/p;->a:Ljava/lang/String;

    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/google/firebase/auth/p;->b:Z

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/firebase/auth/p;->c:Lcom/google/firebase/auth/FirebaseUser;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/firebase/auth/p;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/google/firebase/auth/p;->e:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/firebase/auth/p;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lh8/n0;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/firebase/auth/p;->b:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/p;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->j0(Lcom/google/firebase/auth/FirebaseAuth;)Lx7/g;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/firebase/auth/p;->c:Lcom/google/firebase/auth/FirebaseUser;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    move-object v3, v0

    .line 23
    .line 24
    check-cast v3, Lcom/google/firebase/auth/FirebaseUser;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/google/firebase/auth/p;->a:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v5, p0, Lcom/google/firebase/auth/p;->d:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/google/firebase/auth/p;->e:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v8, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/firebase/auth/p;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 35
    .line 36
    .line 37
    invoke-direct {v8, v0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 38
    move-object v7, p1

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_0
    move-object v5, p1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/google/firebase/auth/p;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 47
    .line 48
    iget-object v0, p1, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->j0(Lcom/google/firebase/auth/FirebaseAuth;)Lx7/g;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/firebase/auth/p;->a:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/google/firebase/auth/p;->d:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/google/firebase/auth/p;->e:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/google/firebase/auth/p;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 63
    .line 64
    .line 65
    invoke-direct {v6, p1}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lx7/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method
