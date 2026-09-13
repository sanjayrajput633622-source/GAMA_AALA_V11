.class public Lcom/google/firebase/auth/PhoneAuthProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/PhoneAuthProvider$a;,
        Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "phone"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "phone"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthProvider;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/firebase/auth/PhoneAuthCredential;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b()Lcom/google/firebase/auth/PhoneAuthProvider;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/auth/PhoneAuthProvider;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lx7/g;->p()Lx7/g;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lx7/g;)Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/google/firebase/auth/PhoneAuthProvider;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 14
    return-object v0
.end method

.method public static c(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/PhoneAuthProvider;
    .locals 1
    .param p0    # Lcom/google/firebase/auth/FirebaseAuth;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/auth/PhoneAuthProvider;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/PhoneAuthProvider;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 6
    return-object v0
.end method

.method public static d(Lcom/google/firebase/auth/c;)V
    .locals 0
    .param p0    # Lcom/google/firebase/auth/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->p0(Lcom/google/firebase/auth/c;)V

    .line 7
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/firebase/auth/PhoneAuthProvider$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthProvider;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/auth/c;->b(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/c$a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/c$a;->h(Ljava/lang/String;)Lcom/google/firebase/auth/c$a;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, p4}, Lcom/google/firebase/auth/c$a;->i(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/c$a;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/c$a;->c(Landroid/app/Activity;)Lcom/google/firebase/auth/c$a;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p6}, Lcom/google/firebase/auth/c$a;->d(Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/c$a;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/auth/c$a;->a()Lcom/google/firebase/auth/c;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/firebase/auth/PhoneAuthProvider;->d(Lcom/google/firebase/auth/c;)V

    .line 34
    return-void
.end method

.method public f(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$a;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/google/firebase/auth/PhoneAuthProvider$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthProvider;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/firebase/auth/c;->b(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/c$a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/c$a;->h(Ljava/lang/String;)Lcom/google/firebase/auth/c$a;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2, p4}, Lcom/google/firebase/auth/c$a;->i(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/c$a;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p5}, Lcom/google/firebase/auth/c$a;->c(Landroid/app/Activity;)Lcom/google/firebase/auth/c$a;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p6}, Lcom/google/firebase/auth/c$a;->d(Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/c$a;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    if-eqz p7, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p7}, Lcom/google/firebase/auth/c$a;->e(Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/c$a;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/c$a;->a()Lcom/google/firebase/auth/c;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/firebase/auth/PhoneAuthProvider;->d(Lcom/google/firebase/auth/c;)V

    .line 39
    return-void
.end method
