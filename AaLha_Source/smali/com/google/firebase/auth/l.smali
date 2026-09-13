.class public final Lcom/google/firebase/auth/l;
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
.field public final synthetic a:Lcom/google/firebase/auth/FirebaseUser;

.field public final synthetic b:Lcom/google/firebase/auth/EmailAuthCredential;

.field public final synthetic c:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/google/firebase/auth/l;->a:Lcom/google/firebase/auth/FirebaseUser;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/firebase/auth/l;->b:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/firebase/auth/l;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lh8/n0;-><init>()V

    .line 13
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
    iget-object v0, p0, Lcom/google/firebase/auth/l;->c:Lcom/google/firebase/auth/FirebaseAuth;

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
    iget-object v3, p0, Lcom/google/firebase/auth/l;->a:Lcom/google/firebase/auth/FirebaseUser;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/google/firebase/auth/l;->b:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 16
    .line 17
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/l;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 20
    .line 21
    .line 22
    invoke-direct {v6, v0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 23
    move-object v5, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method
