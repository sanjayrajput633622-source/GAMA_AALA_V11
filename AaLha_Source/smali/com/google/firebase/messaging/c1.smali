.class public Lcom/google/firebase/messaging/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final e:I = -0x1

.field public static final f:I = 0x1f4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final g:I = 0x194

.field public static final h:I = 0x191

.field public static final i:I = 0x192

.field public static final j:I = 0x193

.field public static final k:Ljava/lang/String; = "com.google.firebase.MESSAGING_EVENT"

.field public static final l:Ljava/lang/String; = "wrapped_intent"

.field public static final m:Ljava/lang/String; = "this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

.field public static n:Lcom/google/firebase/messaging/c1;


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/firebase/messaging/c1;->a:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/firebase/messaging/c1;->b:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/messaging/c1;->c:Ljava/lang/Boolean;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/firebase/messaging/c1;->d:Ljava/util/Queue;

    .line 17
    .line 18
    return-void
.end method

.method public static declared-synchronized b()Lcom/google/firebase/messaging/c1;
    .locals 2

    .line 1
    const-class v0, Lcom/google/firebase/messaging/c1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/c1;->n:Lcom/google/firebase/messaging/c1;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/firebase/messaging/c1;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/firebase/messaging/c1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/firebase/messaging/c1;->n:Lcom/google/firebase/messaging/c1;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/messaging/c1;->n:Lcom/google/firebase/messaging/c1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method public static g(Lcom/google/firebase/messaging/c1;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sput-object p0, Lcom/google/firebase/messaging/c1;->n:Lcom/google/firebase/messaging/c1;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/c1;->f(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "FirebaseMessaging"

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/c1;->e(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/google/firebase/messaging/n1;->j(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    if-nez p1, :cond_2

    .line 38
    .line 39
    const/16 p1, 0x194

    .line 40
    .line 41
    return p1

    .line 42
    :cond_2
    const/4 p1, -0x1

    .line 43
    return p1

    .line 44
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    const/16 p1, 0x192

    .line 48
    .line 49
    return p1

    .line 50
    :catch_1
    const/16 p1, 0x191

    .line 51
    .line 52
    return p1
.end method

.method public c()Landroid/content/Intent;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/c1;->d:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Intent;

    .line 8
    .line 9
    return-object v0
.end method

.method public d(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/c1;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/firebase/messaging/c1;->c:Ljava/lang/Boolean;

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/c1;->b:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    const-string p1, "FirebaseMessaging"

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/messaging/c1;->c:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public e(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/c1;->b:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-string v0, "android.permission.WAKE_LOCK"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/firebase/messaging/c1;->b:Ljava/lang/Boolean;

    .line 21
    .line 22
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/c1;->b:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    const-string p1, "FirebaseMessaging"

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/messaging/c1;->b:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public final declared-synchronized f(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/c1;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p2, :cond_5

    .line 19
    .line 20
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const-string v0, "."

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object p1, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/google/firebase/messaging/c1;->a:Ljava/lang/String;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    iget-object p1, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/google/firebase/messaging/c1;->a:Ljava/lang/String;

    .line 79
    .line 80
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/messaging/c1;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    monitor-exit p0

    .line 83
    return-object p1

    .line 84
    :cond_4
    :goto_1
    monitor-exit p0

    .line 85
    return-object v0

    .line 86
    :cond_5
    :goto_2
    monitor-exit p0

    .line 87
    return-object v0

    .line 88
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p1
.end method

.method public h(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "FirebaseMessaging"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/messaging/c1;->d:Ljava/util/Queue;

    .line 8
    .line 9
    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    new-instance p2, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    .line 15
    .line 16
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/c1;->a(Landroid/content/Context;Landroid/content/Intent;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method
