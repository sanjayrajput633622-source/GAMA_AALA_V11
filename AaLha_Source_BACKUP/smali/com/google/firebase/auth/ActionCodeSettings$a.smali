.class public Lcom/google/firebase/auth/ActionCodeSettings$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/ActionCodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Z

.field public g:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lg8/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/ActionCodeSettings$a;-><init>()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/google/firebase/auth/ActionCodeSettings$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/google/firebase/auth/ActionCodeSettings$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/google/firebase/auth/ActionCodeSettings$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/google/firebase/auth/ActionCodeSettings$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/google/firebase/auth/ActionCodeSettings$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/google/firebase/auth/ActionCodeSettings$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/google/firebase/auth/ActionCodeSettings$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->d:Z

    return p0
.end method

.method public static bridge synthetic t(Lcom/google/firebase/auth/ActionCodeSettings$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->f:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/google/firebase/auth/ActionCodeSettings;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->a:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/firebase/auth/ActionCodeSettings;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/auth/ActionCodeSettings;-><init>(Lcom/google/firebase/auth/ActionCodeSettings$a;Lg8/q0;)V

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Cannot build ActionCodeSettings with null URL. Call #setUrl(String) before calling build()"

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->g:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->f:Z

    .line 3
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->h:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public g(Ljava/lang/String;ZLjava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->c:Ljava/lang/String;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->d:Z

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->e:Ljava/lang/String;

    .line 7
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->g:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public i(Z)Lcom/google/firebase/auth/ActionCodeSettings$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->f:Z

    .line 3
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->b:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->h:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeSettings$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/ActionCodeSettings$a;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method
