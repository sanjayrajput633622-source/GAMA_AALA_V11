.class public final Lcom/google/firebase/auth/FirebaseAuth$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/t;
.implements Lh8/o1;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/FirebaseAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$d;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Lcom/google/firebase/auth/FirebaseUser;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth$d;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->o0(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V

    .line 16
    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x4273

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    .line 12
    move-result v0

    .line 13
    .line 14
    const/16 v1, 0x427d

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    .line 20
    move-result v0

    .line 21
    .line 22
    const/16 v1, 0x426d

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    .line 28
    move-result p1

    .line 29
    .line 30
    const/16 v0, 0x42c3

    .line 31
    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void

    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth$d;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->I()V

    .line 40
    return-void
.end method
