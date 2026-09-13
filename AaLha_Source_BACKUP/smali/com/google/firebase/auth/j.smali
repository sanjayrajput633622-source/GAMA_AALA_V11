.class public final Lcom/google/firebase/auth/j;
.super Lcom/google/firebase/auth/PhoneAuthProvider$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/PhoneAuthProvider$a;

.field public final synthetic b:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthProvider$a;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/google/firebase/auth/j;->a:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/auth/j;->b:Lcom/google/firebase/auth/FirebaseAuth;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$a;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public final onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/firebase/auth/j;->a:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/j;->b:Lcom/google/firebase/auth/FirebaseAuth;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->B0(Lcom/google/firebase/auth/FirebaseAuth;)Lh8/f;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lh8/f;->e()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/google/firebase/auth/PhoneAuthProvider;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 26
    return-void
.end method

.method public final onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/j;->a:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 6
    return-void
.end method

.method public final onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/j;->a:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    .line 6
    return-void
.end method
