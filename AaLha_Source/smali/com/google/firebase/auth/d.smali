.class public final Lcom/google/firebase/auth/d;
.super Lh8/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh8/n0<",
        "Ljava/lang/Void;",
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
    iput-boolean p2, p0, Lcom/google/firebase/auth/d;->a:Z

    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/firebase/auth/d;->b:Lcom/google/firebase/auth/FirebaseUser;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/firebase/auth/d;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/auth/d;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lh8/n0;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 8
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/auth/d;->a:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/d;->d:Lcom/google/firebase/auth/FirebaseAuth;

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
    iget-object v3, p0, Lcom/google/firebase/auth/d;->b:Lcom/google/firebase/auth/FirebaseUser;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/firebase/auth/d;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 20
    .line 21
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/d;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 24
    .line 25
    .line 26
    invoke-direct {v6, v0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 27
    move-object v5, p1

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    move-object v5, p1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/firebase/auth/d;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/firebase/auth/d;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/firebase/auth/d;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 51
    move-object v1, v0

    .line 52
    .line 53
    iget-object v0, v1, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->j0(Lcom/google/firebase/auth/FirebaseAuth;)Lx7/g;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/firebase/auth/d;->b:Lcom/google/firebase/auth/FirebaseUser;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/google/firebase/auth/d;->b:Lcom/google/firebase/auth/FirebaseUser;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    new-instance v7, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 72
    .line 73
    iget-object v6, p0, Lcom/google/firebase/auth/d;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 74
    .line 75
    .line 76
    invoke-direct {v7, v6}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 77
    move-object v6, v5

    .line 78
    move-object v5, p1

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method
