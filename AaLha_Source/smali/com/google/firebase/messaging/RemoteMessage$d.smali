.class public Lcom/google/firebase/messaging/RemoteMessage$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/RemoteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:[Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Landroid/net/Uri;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/Integer;

.field public final q:Ljava/lang/Integer;

.field public final r:Ljava/lang/Integer;

.field public final s:[I

.field public final t:Ljava/lang/Long;

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:[J


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/r0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "gcm.n.title"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$d;->p(Lcom/google/firebase/messaging/r0;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->c:[Ljava/lang/String;

    .line 6
    const-string v0, "gcm.n.body"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage$d;->p(Lcom/google/firebase/messaging/r0;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->f:[Ljava/lang/String;

    .line 9
    const-string v0, "gcm.n.icon"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->g:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/messaging/r0;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->i:Ljava/lang/String;

    .line 11
    const-string v0, "gcm.n.tag"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->j:Ljava/lang/String;

    .line 12
    const-string v0, "gcm.n.color"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->k:Ljava/lang/String;

    .line 13
    const-string v0, "gcm.n.click_action"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->l:Ljava/lang/String;

    .line 14
    const-string v0, "gcm.n.android_channel_id"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->m:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/messaging/r0;->f()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->n:Landroid/net/Uri;

    .line 16
    const-string v0, "gcm.n.image"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->h:Ljava/lang/String;

    .line 17
    const-string v0, "gcm.n.ticker"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->o:Ljava/lang/String;

    .line 18
    const-string v0, "gcm.n.notification_priority"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->p:Ljava/lang/Integer;

    .line 19
    const-string v0, "gcm.n.visibility"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->q:Ljava/lang/Integer;

    .line 20
    const-string v0, "gcm.n.notification_count"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->r:Ljava/lang/Integer;

    .line 21
    const-string v0, "gcm.n.sticky"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->u:Z

    .line 22
    const-string v0, "gcm.n.local_only"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->v:Z

    .line 23
    const-string v0, "gcm.n.default_sound"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->w:Z

    .line 24
    const-string v0, "gcm.n.default_vibrate_timings"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->x:Z

    .line 25
    const-string v0, "gcm.n.default_light_settings"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->y:Z

    .line 26
    const-string v0, "gcm.n.event_time"

    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/r0;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->t:Ljava/lang/Long;

    .line 27
    invoke-virtual {p1}, Lcom/google/firebase/messaging/r0;->e()[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->s:[I

    .line 28
    invoke-virtual {p1}, Lcom/google/firebase/messaging/r0;->q()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->z:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/messaging/r0;Lcom/google/firebase/messaging/RemoteMessage$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/RemoteMessage$d;-><init>(Lcom/google/firebase/messaging/r0;)V

    return-void
.end method

.method public static p(Lcom/google/firebase/messaging/r0;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/r0;->g(Ljava/lang/String;)[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    array-length p1, p0

    .line 10
    new-array p1, p1, [Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    array-length v1, p0

    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    aget-object v1, p0, v0

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    aput-object v1, p1, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->q:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->f:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->t:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->h:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public m()[I
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->s:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->n:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public q()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->r:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->p:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()[J
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage$d;->z:[J

    .line 2
    .line 3
    return-object v0
.end method
