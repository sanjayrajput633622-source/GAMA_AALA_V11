.class public final Lcom/google/firebase/auth/i;
.super Lcom/google/firebase/auth/PhoneAuthProvider$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/c;

.field public final synthetic b:Lh8/m1;

.field public final synthetic c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

.field public final synthetic d:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/c;Lh8/m1;Lcom/google/firebase/auth/PhoneAuthProvider$a;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/google/firebase/auth/i;->a:Lcom/google/firebase/auth/c;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/firebase/auth/i;->b:Lh8/m1;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/firebase/auth/i;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/auth/i;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$a;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public final onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/i;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/i;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V

    .line 6
    return-void
.end method

.method public final onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/i;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 6
    return-void
.end method

.method public final onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Ljava/lang/Exception;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/firebase/auth/i;->a:Lcom/google/firebase/auth/c;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/c;->d(Z)V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/google/firebase/auth/i;->a:Lcom/google/firebase/auth/c;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/auth/c;->l()Ljava/lang/String;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/firebase/auth/i;->a:Lcom/google/firebase/auth/c;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->p0(Lcom/google/firebase/auth/c;)V

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/i;->b:Lh8/m1;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lh8/m1;->c()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zzb(Ljava/lang/Exception;)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/firebase/auth/i;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->w0()Lh8/v0;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    const-string v2, "PHONE_PROVIDER"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lh8/v0;->d(Ljava/lang/String;)Z

    .line 53
    move-result v0

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/firebase/auth/i;->b:Lh8/m1;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lh8/m1;->b()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v0

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/firebase/auth/i;->a:Lcom/google/firebase/auth/c;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/c;->f(Z)V

    .line 73
    .line 74
    iget-object p1, p0, Lcom/google/firebase/auth/i;->a:Lcom/google/firebase/auth/c;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/firebase/auth/c;->l()Ljava/lang/String;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/google/firebase/auth/i;->a:Lcom/google/firebase/auth/c;

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->p0(Lcom/google/firebase/auth/c;)V

    .line 83
    return-void

    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/i;->a:Lcom/google/firebase/auth/c;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->l()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/google/firebase/auth/i;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    .line 97
    return-void

    .line 98
    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/auth/i;->a:Lcom/google/firebase/auth/c;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->l()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/firebase/auth/i;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    .line 111
    return-void
.end method
