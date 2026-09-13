.class public Lcom/google/firebase/messaging/s1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/messaging/s1$a;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/messaging/s1$a;->a:Landroid/content/Intent;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/ScheduledFuture;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/messaging/s1$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/s1$a;->a:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/messaging/s1$a;->d()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/q1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/q1;-><init>(Lcom/google/firebase/messaging/s1$a;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x14

    .line 7
    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/messaging/s1$a;->e()Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/google/firebase/messaging/r1;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/google/firebase/messaging/r1;-><init>(Ljava/util/concurrent/ScheduledFuture;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/s1$a;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public e()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/s1$a;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
