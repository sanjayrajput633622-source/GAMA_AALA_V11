.class public final Lcom/google/firebase/installations/remote/b$b;
.super Lcom/google/firebase/installations/remote/TokenResult$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/remote/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

.field public d:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/TokenResult$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/installations/remote/TokenResult;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/TokenResult$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/remote/b$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/installations/remote/b$b;->b:J

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->b()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/remote/b$b;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    const/4 p1, 0x1

    .line 7
    iput-byte p1, p0, Lcom/google/firebase/installations/remote/b$b;->d:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/installations/remote/TokenResult;Lcom/google/firebase/installations/remote/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/remote/b$b;-><init>(Lcom/google/firebase/installations/remote/TokenResult;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/installations/remote/TokenResult;
    .locals 8

    .line 1
    iget-byte v0, p0, Lcom/google/firebase/installations/remote/b$b;->d:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v2, Lcom/google/firebase/installations/remote/b;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/firebase/installations/remote/b$b;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget-wide v4, p0, Lcom/google/firebase/installations/remote/b$b;->b:J

    .line 11
    .line 12
    iget-object v6, p0, Lcom/google/firebase/installations/remote/b$b;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/installations/remote/b;-><init>(Ljava/lang/String;JLcom/google/firebase/installations/remote/TokenResult$ResponseCode;Lcom/google/firebase/installations/remote/b$a;)V

    .line 16
    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "Missing required properties:"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " tokenExpirationTimestamp"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public b(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/b$b;->c:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/b$b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(J)Lcom/google/firebase/installations/remote/TokenResult$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/firebase/installations/remote/b$b;->b:J

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/firebase/installations/remote/b$b;->d:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/firebase/installations/remote/b$b;->d:B

    .line 9
    .line 10
    return-object p0
.end method
