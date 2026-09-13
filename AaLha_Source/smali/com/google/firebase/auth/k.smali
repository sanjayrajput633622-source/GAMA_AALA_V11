.class public final Lcom/google/firebase/auth/k;
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

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/google/firebase/auth/k;->a:Ljava/lang/String;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/firebase/auth/k;->b:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/firebase/auth/k;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lh8/n0;-><init>()V

    .line 13
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
    iget-object v0, p0, Lcom/google/firebase/auth/k;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->j0(Lcom/google/firebase/auth/FirebaseAuth;)Lx7/g;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/firebase/auth/k;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/google/firebase/auth/k;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/firebase/auth/k;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->G0(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    .line 23
    new-instance v7, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/firebase/auth/k;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 26
    .line 27
    .line 28
    invoke-direct {v7, v0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 29
    move-object v6, p1

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
