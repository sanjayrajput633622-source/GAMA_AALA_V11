.class public final Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field public e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->a:J

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->c:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v3, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 15
    .line 16
    iput-object v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 17
    .line 18
    sget-object v3, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->UNKNOWN_OS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 19
    .line 20
    iput-object v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 21
    .line 22
    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->f:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->g:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->h:I

    .line 28
    .line 29
    iput v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->i:I

    .line 30
    .line 31
    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->j:Ljava/lang/String;

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->k:J

    .line 34
    .line 35
    sget-object v3, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->UNKNOWN_EVENT:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 36
    .line 37
    iput-object v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 38
    .line 39
    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->m:Ljava/lang/String;

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->n:J

    .line 42
    .line 43
    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->o:Ljava/lang/String;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->a:J

    .line 6
    .line 7
    iget-object v4, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 12
    .line 13
    iget-object v7, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 14
    .line 15
    iget-object v8, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->f:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v9, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->g:Ljava/lang/String;

    .line 18
    .line 19
    iget v10, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->h:I

    .line 20
    .line 21
    iget v11, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->i:I

    .line 22
    .line 23
    iget-object v12, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->j:Ljava/lang/String;

    .line 24
    .line 25
    iget-wide v13, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->k:J

    .line 26
    .line 27
    iget-object v15, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 28
    .line 29
    move-object/from16 v16, v1

    .line 30
    .line 31
    iget-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->m:Ljava/lang/String;

    .line 32
    .line 33
    move-wide/from16 v17, v2

    .line 34
    .line 35
    move-object v3, v1

    .line 36
    iget-wide v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->n:J

    .line 37
    .line 38
    move-wide/from16 v19, v1

    .line 39
    .line 40
    iget-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->o:Ljava/lang/String;

    .line 41
    .line 42
    move-wide/from16 v21, v19

    .line 43
    .line 44
    move-object/from16 v19, v1

    .line 45
    .line 46
    move-object/from16 v1, v16

    .line 47
    .line 48
    move-object/from16 v16, v3

    .line 49
    .line 50
    move-wide/from16 v2, v17

    .line 51
    .line 52
    move-wide/from16 v17, v21

    .line 53
    .line 54
    invoke-direct/range {v1 .. v19}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Ljava/lang/String;JLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v16, v1

    .line 58
    .line 59
    return-object v16
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(J)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->k:J

    .line 2
    .line 3
    return-object p0
.end method

.method public d(J)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->n:J

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 2
    .line 3
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public l(I)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public m(J)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->a:J

    .line 2
    .line 3
    return-object p0
.end method

.method public n(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public p(I)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->i:I

    .line 2
    .line 3
    return-object p0
.end method
