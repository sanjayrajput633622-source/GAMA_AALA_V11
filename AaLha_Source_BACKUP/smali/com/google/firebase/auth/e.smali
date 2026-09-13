.class public final Lcom/google/firebase/auth/e;
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
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/firebase/auth/FirebaseUser;

.field public final synthetic c:Lcom/google/firebase/auth/EmailAuthCredential;

.field public final synthetic d:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;ZLcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p2, p0, Lcom/google/firebase/auth/e;->a:Z

    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/firebase/auth/e;->b:Lcom/google/firebase/auth/FirebaseUser;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/firebase/auth/e;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/auth/e;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lh8/n0;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 7
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
    iget-boolean v0, p0, Lcom/google/firebase/auth/e;->a:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/e;->d:Lcom/google/firebase/auth/FirebaseAuth;

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
    iget-object v0, p0, Lcom/google/firebase/auth/e;->b:Lcom/google/firebase/auth/FirebaseUser;

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
    iget-object v4, p0, Lcom/google/firebase/auth/e;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 27
    .line 28
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/firebase/auth/e;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 31
    .line 32
    .line 33
    invoke-direct {v6, v0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 34
    move-object v5, p1

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_0
    move-object v5, p1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/firebase/auth/e;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 43
    .line 44
    iget-object v0, p1, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->j0(Lcom/google/firebase/auth/FirebaseAuth;)Lx7/g;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/firebase/auth/e;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 51
    .line 52
    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/google/firebase/auth/e;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1, v1, v5, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method
