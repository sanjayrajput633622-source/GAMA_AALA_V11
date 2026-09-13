.class public Lcom/google/firebase/messaging/FirebaseMessaging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/FirebaseMessaging$a;
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/String; = "FirebaseMessaging"

.field public static final n:Ljava/lang/String; = "com.google.android.gms"

.field public static final o:Ljava/lang/String; = "com.google.android.gcm.intent.SEND"

.field public static final p:Ljava/lang/String; = "app"

.field public static final q:Ljava/lang/String; = "FCM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final r:J = 0x1eL

.field public static final s:J

.field public static final t:Ljava/lang/String; = ""

.field public static u:Lcom/google/firebase/messaging/f1;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "FirebaseMessaging.class"
    .end annotation
.end field

.field public static v:Lk9/b;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/b<",
            "Lj4/l;",
            ">;"
        }
    .end annotation
.end field

.field public static w:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "FirebaseMessaging.class"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final a:Lx7/g;

.field public final b:Lj9/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/firebase/messaging/k0;

.field public final e:Lcom/google/firebase/messaging/b1;

.field public final f:Lcom/google/firebase/messaging/FirebaseMessaging$a;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/messaging/k1;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/google/firebase/messaging/q0;

.field public k:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public final l:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/google/firebase/messaging/FirebaseMessaging;->s:J

    .line 10
    .line 11
    new-instance v0, Lcom/google/firebase/messaging/z;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/firebase/messaging/z;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->v:Lk9/b;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lx7/g;Lj9/a;Lk9/b;Lg9/d;Lcom/google/firebase/messaging/q0;Lcom/google/firebase/messaging/k0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2    # Lj9/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/g;",
            "Lj9/a;",
            "Lk9/b<",
            "Lj4/l;",
            ">;",
            "Lg9/d;",
            "Lcom/google/firebase/messaging/q0;",
            "Lcom/google/firebase/messaging/k0;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z

    .line 11
    sput-object p3, Lcom/google/firebase/messaging/FirebaseMessaging;->v:Lk9/b;

    .line 12
    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 13
    iput-object p2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj9/a;

    .line 14
    new-instance p3, Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-direct {p3, p0, p4}, Lcom/google/firebase/messaging/FirebaseMessaging$a;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lg9/d;)V

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 15
    invoke-virtual {p1}, Lx7/g;->n()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 16
    new-instance p4, Lcom/google/firebase/messaging/q;

    invoke-direct {p4}, Lcom/google/firebase/messaging/q;-><init>()V

    iput-object p4, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->l:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 17
    iput-object p5, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/messaging/q0;

    .line 18
    iput-object p6, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/k0;

    .line 19
    new-instance v0, Lcom/google/firebase/messaging/b1;

    invoke-direct {v0, p7}, Lcom/google/firebase/messaging/b1;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/b1;

    .line 20
    iput-object p8, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/Executor;

    .line 21
    iput-object p9, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    .line 22
    invoke-virtual {p1}, Lx7/g;->n()Landroid/content/Context;

    move-result-object p1

    .line 23
    instance-of p7, p1, Landroid/app/Application;

    if-eqz p7, :cond_0

    .line 24
    check-cast p1, Landroid/app/Application;

    .line 25
    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 27
    new-instance p1, Lcom/google/firebase/messaging/u;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/u;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p2, p1}, Lj9/a;->a(Lj9/a$a;)V

    .line 28
    :cond_1
    new-instance p1, Lcom/google/firebase/messaging/v;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/v;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p8, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    invoke-static {}, Lcom/google/firebase/messaging/o;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 30
    invoke-static {p0, p5, p6, p3, p1}, Lcom/google/firebase/messaging/k1;->f(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/q0;Lcom/google/firebase/messaging/k0;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/android/gms/tasks/Task;

    .line 31
    new-instance p2, Lcom/google/firebase/messaging/w;

    invoke-direct {p2, p0}, Lcom/google/firebase/messaging/w;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-virtual {p1, p8, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 32
    new-instance p1, Lcom/google/firebase/messaging/x;

    invoke-direct {p1, p0}, Lcom/google/firebase/messaging/x;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    invoke-interface {p8, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lx7/g;Lj9/a;Lk9/b;Lk9/b;Ll9/j;Lk9/b;Lg9/d;)V
    .locals 9
    .param p2    # Lj9/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/g;",
            "Lj9/a;",
            "Lk9/b<",
            "Lw9/i;",
            ">;",
            "Lk9/b<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Ll9/j;",
            "Lk9/b<",
            "Lj4/l;",
            ">;",
            "Lg9/d;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/google/firebase/messaging/q0;

    .line 2
    invoke-virtual {p1}, Lx7/g;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/google/firebase/messaging/q0;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lx7/g;Lj9/a;Lk9/b;Lk9/b;Ll9/j;Lk9/b;Lg9/d;Lcom/google/firebase/messaging/q0;)V

    return-void
.end method

.method public constructor <init>(Lx7/g;Lj9/a;Lk9/b;Lk9/b;Ll9/j;Lk9/b;Lg9/d;Lcom/google/firebase/messaging/q0;)V
    .locals 10
    .param p2    # Lj9/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/g;",
            "Lj9/a;",
            "Lk9/b<",
            "Lw9/i;",
            ">;",
            "Lk9/b<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;",
            "Ll9/j;",
            "Lk9/b<",
            "Lj4/l;",
            ">;",
            "Lg9/d;",
            "Lcom/google/firebase/messaging/q0;",
            ")V"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/firebase/messaging/k0;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v2, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/messaging/k0;-><init>(Lx7/g;Lcom/google/firebase/messaging/q0;Lk9/b;Lk9/b;Ll9/j;)V

    .line 5
    invoke-static {}, Lcom/google/firebase/messaging/o;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 6
    invoke-static {}, Lcom/google/firebase/messaging/o;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 7
    invoke-static {}, Lcom/google/firebase/messaging/o;->c()Ljava/util/concurrent/Executor;

    move-result-object v9

    move-object v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, v0

    move-object v0, p0

    .line 8
    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Lx7/g;Lj9/a;Lk9/b;Lg9/d;Lcom/google/firebase/messaging/q0;Lcom/google/firebase/messaging/k0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static E()Lj4/l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->v:Lk9/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lk9/b;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj4/l;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/Void;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/k0;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->Q()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p1, v0, p0}, Lcom/google/firebase/messaging/y0;->f(Landroid/content/Context;Lcom/google/firebase/messaging/k0;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/f1$a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->z(Landroid/content/Context;)Lcom/google/firebase/messaging/f1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->A()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/messaging/q0;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/google/firebase/messaging/q0;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/google/firebase/messaging/f1;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p1, p2, Lcom/google/firebase/messaging/f1$a;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/firebase/messaging/FirebaseMessaging;->H(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->I()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->S()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->H(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->r()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj9/a;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/google/firebase/messaging/q0;->c(Lx7/g;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "FCM"

    .line 13
    .line 14
    invoke-interface {v0, p0, v1}, Lj9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic g(Ljava/lang/String;Lcom/google/firebase/messaging/k1;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/k1;->u(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static declared-synchronized getInstance(Lx7/g;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .param p0    # Lx7/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lx7/g;->l(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 11
    .line 12
    const-string v1, "Firebase Messaging component is not present"

    .line 13
    .line 14
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p0
.end method

.method public static synthetic h()Lj4/l;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public static synthetic i(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/cloudmessaging/CloudMessage;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/cloudmessaging/CloudMessage;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/firebase/messaging/o0;->y(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->F()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static synthetic k()Lj4/l;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public static synthetic l(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/f1$a;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/k0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/k0;->g()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->h:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v2, Lcom/google/firebase/messaging/a0;

    .line 10
    .line 11
    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/messaging/a0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/f1$a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static synthetic m(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/firebase/messaging/k1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->I()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/messaging/k1;->q()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static synthetic n(Ljava/lang/String;Lcom/google/firebase/messaging/k1;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/k1;->r(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/k0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/messaging/k0;->c()Lcom/google/android/gms/tasks/Task;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->z(Landroid/content/Context;)Lcom/google/firebase/messaging/f1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->A()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/google/firebase/messaging/q0;->c(Lx7/g;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, v1, p0}, Lcom/google/firebase/messaging/f1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static synthetic p(Lcom/google/firebase/messaging/FirebaseMessaging;)Lx7/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->S()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized s()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->u:Lcom/google/firebase/messaging/f1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v1
.end method

.method public static t()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/messaging/y;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->v:Lk9/b;

    .line 7
    .line 8
    return-void
.end method

.method public static declared-synchronized y()Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lx7/g;->p()Lx7/g;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance(Lx7/g;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v1
.end method

.method public static declared-synchronized z(Landroid/content/Context;)Lcom/google/firebase/messaging/f1;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->u:Lcom/google/firebase/messaging/f1;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/firebase/messaging/f1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/f1;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->u:Lcom/google/firebase/messaging/f1;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->u:Lcom/google/firebase/messaging/f1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx7/g;->r()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "[DEFAULT]"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 19
    .line 20
    invoke-virtual {v0}, Lx7/g;->t()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public B()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj9/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lj9/a;->c()Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    new-instance v2, Lcom/google/firebase/messaging/c0;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/c0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public C()Lcom/google/firebase/messaging/f1$a;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->z(Landroid/content/Context;)Lcom/google/firebase/messaging/f1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->A()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/google/firebase/messaging/q0;->c(Lx7/g;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/f1;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/messaging/f1$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public D()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/messaging/k1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/k0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/k0;->f()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v2, Lcom/google/firebase/messaging/d0;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/google/firebase/messaging/d0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/w0;->c(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/k0;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->Q()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/firebase/messaging/y0;->f(Landroid/content/Context;Lcom/google/firebase/messaging/k0;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->Q()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->F()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final H(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lx7/g;->r()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "[DEFAULT]"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "FirebaseMessaging"

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 25
    .line 26
    invoke-virtual {v0}, Lx7/g;->r()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 30
    .line 31
    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "token"

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/google/firebase/messaging/n;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct {p1, v1}, Lcom/google/firebase/messaging/n;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/n;->g(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public J()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/messaging/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/q0;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/w0;->d(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public L(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5
    .param p1    # Lcom/google/firebase/messaging/RemoteMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getTo()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    const-string v1, "com.google.android.gcm.intent.SEND"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/content/Intent;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "com.google.example.invalidpackage"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/high16 v4, 0x4000000

    .line 32
    .line 33
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "app"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string v1, "com.google.android.gms"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/RemoteMessage;->populateSendMessageIntent(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 51
    .line 52
    const-string v1, "com.google.android.gtalkservice.permission.GTALK_SERVICE"

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string v0, "Missing \'to\'"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public M(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->f:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->e(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public N(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/firebase/messaging/o0;->B(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Lcom/google/firebase/messaging/k0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->Q()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p1, v0, v1}, Lcom/google/firebase/messaging/y0;->f(Landroid/content/Context;Lcom/google/firebase/messaging/k0;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public O(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/firebase/messaging/w0;->e(Ljava/util/concurrent/Executor;Landroid/content/Context;Z)Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Landroidx/credentials/a;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/credentials/a;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/google/firebase/messaging/b0;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/b0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public declared-synchronized P(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public final Q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/messaging/w0;->c(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/firebase/messaging/w0;->d(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 17
    .line 18
    const-class v2, Lz7/a;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lx7/g;->l(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    invoke-static {}, Lcom/google/firebase/messaging/o0;->a()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessaging;->v:Lk9/b;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    return v2

    .line 39
    :cond_2
    return v1
.end method

.method public final declared-synchronized R()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->U(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method

.method public final S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj9/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lj9/a;->getToken()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->C()Lcom/google/firebase/messaging/f1$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->V(Lcom/google/firebase/messaging/f1$a;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->R()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public T(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TaskMainThread"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    new-instance v1, Lcom/google/firebase/messaging/s;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/s;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public declared-synchronized U(J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    mul-long/2addr v0, p1

    .line 5
    const-wide/16 v2, 0x1e

    .line 6
    .line 7
    :try_start_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sget-wide v2, Lcom/google/firebase/messaging/FirebaseMessaging;->s:J

    .line 12
    .line 13
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    new-instance v2, Lcom/google/firebase/messaging/g1;

    .line 18
    .line 19
    invoke-direct {v2, p0, v0, v1}, Lcom/google/firebase/messaging/g1;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->w(Ljava/lang/Runnable;J)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public V(Lcom/google/firebase/messaging/f1$a;)Z
    .locals 1
    .param p1    # Lcom/google/firebase/messaging/f1$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->j:Lcom/google/firebase/messaging/q0;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/q0;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/f1$a;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public W(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TaskMainThread"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lcom/google/android/gms/tasks/Task;

    .line 2
    .line 3
    new-instance v1, Lcom/google/firebase/messaging/e0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/google/firebase/messaging/e0;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public r()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj9/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface {v0}, Lj9/a;->c()Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    :goto_0
    new-instance v1, Ljava/io/IOException;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->C()Lcom/google/firebase/messaging/f1$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->V(Lcom/google/firebase/messaging/f1$a;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v0, v0, Lcom/google/firebase/messaging/f1$a;->a:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lx7/g;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/google/firebase/messaging/q0;->c(Lx7/g;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->e:Lcom/google/firebase/messaging/b1;

    .line 45
    .line 46
    new-instance v3, Lcom/google/firebase/messaging/f0;

    .line 47
    .line 48
    invoke-direct {v3, p0, v1, v0}, Lcom/google/firebase/messaging/f0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/f1$a;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/messaging/b1;->b(Ljava/lang/String;Lcom/google/firebase/messaging/b1$a;)Lcom/google/android/gms/tasks/Task;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :try_start_1
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 60
    .line 61
    return-object v0

    .line 62
    :catch_2
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :catch_3
    move-exception v0

    .line 65
    :goto_1
    new-instance v1, Ljava/io/IOException;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v1
.end method

.method public u()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->b:Lj9/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    new-instance v2, Lcom/google/firebase/messaging/g0;

    .line 13
    .line 14
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/g0;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/FirebaseMessaging;->C()Lcom/google/firebase/messaging/f1$a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/google/firebase/messaging/o;->f()Ljava/util/concurrent/ExecutorService;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Lcom/google/firebase/messaging/t;

    .line 47
    .line 48
    invoke-direct {v2, p0, v0}, Lcom/google/firebase/messaging/t;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method public v()Z
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/messaging/o0;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public w(Ljava/lang/Runnable;J)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->w:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    new-instance v2, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 11
    .line 12
    const-string v3, "TAG"

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v3, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->w:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/messaging/FirebaseMessaging;->w:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public x()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method
