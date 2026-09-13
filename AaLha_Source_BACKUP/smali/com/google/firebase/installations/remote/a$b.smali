.class public final Lcom/google/firebase/installations/remote/a$b;
.super Lcom/google/firebase/installations/remote/InstallationResponse$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/remote/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/firebase/installations/remote/TokenResult;

.field public e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/InstallationResponse$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/installations/remote/InstallationResponse;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/InstallationResponse$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/remote/a$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/remote/a$b;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/remote/a$b;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->b()Lcom/google/firebase/installations/remote/TokenResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/remote/a$b;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse;->e()Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/installations/remote/InstallationResponse;Lcom/google/firebase/installations/remote/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/remote/a$b;-><init>(Lcom/google/firebase/installations/remote/InstallationResponse;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/installations/remote/InstallationResponse;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/firebase/installations/remote/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/installations/remote/a$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/installations/remote/a$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/firebase/installations/remote/a$b;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/firebase/installations/remote/a$b;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/firebase/installations/remote/a$b;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/installations/remote/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/installations/remote/TokenResult;Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;Lcom/google/firebase/installations/remote/a$a;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public b(Lcom/google/firebase/installations/remote/TokenResult;)Lcom/google/firebase/installations/remote/InstallationResponse$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->d:Lcom/google/firebase/installations/remote/TokenResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)Lcom/google/firebase/installations/remote/InstallationResponse$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->e:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/a$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
