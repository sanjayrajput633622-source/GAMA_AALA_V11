.class public Lcom/google/firebase/auth/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/auth/b$b;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lg8/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/b$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/auth/AuthCredential;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/b$b;->a:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/auth/b$b;->b:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/firebase/auth/b$b;->c:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/firebase/auth/b$b;->d:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/auth/zze;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/zze;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/b$b;->c:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/b$b;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/auth/b$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/b$b;->c:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/firebase/auth/b$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/b$b;->b:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/b$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/b$b;->b:Ljava/lang/String;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/firebase/auth/b$b;->d:Ljava/lang/String;

    .line 5
    return-object p0
.end method
