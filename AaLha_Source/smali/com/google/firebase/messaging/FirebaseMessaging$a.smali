.class public Lcom/google/firebase/messaging/FirebaseMessaging$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/FirebaseMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "firebase_messaging_auto_init_enabled"

.field public static final g:Ljava/lang/String; = "com.google.firebase.messaging"

.field public static final h:Ljava/lang/String; = "auto_init"


# instance fields
.field public final a:Lg9/d;

.field public b:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public c:Lg9/b;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg9/b<",
            "Lx7/c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final synthetic e:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lg9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->e:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->a:Lg9/d;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/FirebaseMessaging$a;Lg9/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->c()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->e:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->q(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->d()Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->d:Ljava/lang/Boolean;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Lcom/google/firebase/messaging/h0;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/h0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging$a;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->c:Lg9/b;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->a:Lg9/d;

    .line 24
    .line 25
    const-class v2, Lx7/c;

    .line 26
    .line 27
    invoke-interface {v1, v2, v0}, Lg9/d;->c(Ljava/lang/Class;Lg9/b;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->b()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->d:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->e:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->p(Lcom/google/firebase/messaging/FirebaseMessaging;)Lx7/g;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lx7/g;->A()Z

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_0
    monitor-exit p0

    .line 27
    return v0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "firebase_messaging_auto_init_enabled"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->e:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->p(Lcom/google/firebase/messaging/FirebaseMessaging;)Lx7/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lx7/g;->n()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "com.google.firebase.messaging"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v4, "auto_init"

    .line 21
    .line 22
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/16 v3, 0x80

    .line 48
    .line 49
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object v0

    .line 76
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 77
    return-object v0
.end method

.method public declared-synchronized e(Z)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->b()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->c:Lg9/b;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->a:Lg9/d;

    .line 10
    .line 11
    const-class v2, Lx7/c;

    .line 12
    .line 13
    invoke-interface {v1, v2, v0}, Lg9/d;->b(Ljava/lang/Class;Lg9/b;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->c:Lg9/b;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->e:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->p(Lcom/google/firebase/messaging/FirebaseMessaging;)Lx7/g;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lx7/g;->n()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "com.google.firebase.messaging"

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "auto_init"

    .line 44
    .line 45
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->e:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->q(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging$a;->d:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p1
.end method
