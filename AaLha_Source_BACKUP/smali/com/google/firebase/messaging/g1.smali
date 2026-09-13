.class public Lcom/google/firebase/messaging/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/g1$a;
    }
.end annotation


# instance fields
.field public final X:J

.field public final Y:Landroid/os/PowerManager$WakeLock;

.field public final Z:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public e0:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThreadPoolCreation"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;J)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidWakeLockTag"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 9
    .line 10
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v7, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;

    .line 14
    .line 15
    const-string v1, "firebase-iid-executor"

    .line 16
    .line 17
    invoke-direct {v7, v1}, Lcom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    const-wide/16 v3, 0x1e

    .line 23
    .line 24
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/firebase/messaging/g1;->e0:Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 30
    .line 31
    iput-wide p2, p0, Lcom/google/firebase/messaging/g1;->X:J

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->b()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "power"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/os/PowerManager;

    .line 44
    .line 45
    const/4 p2, 0x1

    .line 46
    const-string p3, "fiid-sync"

    .line 47
    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/google/firebase/messaging/g1;->Y:Landroid/os/PowerManager$WakeLock;

    .line 53
    .line 54
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/messaging/g1;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    return-object p0
.end method

.method public static c()Z
    .locals 4

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
    move-result v2

    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x17

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    return v0
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->x()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->b()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "connectivity"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    return v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method public e()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->r()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const-string v1, "FirebaseMessaging"

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    return v0

    .line 22
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lcom/google/firebase/messaging/k0;->i(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    return v0

    .line 43
    :cond_2
    throw v1
.end method

.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WakelockTimeout"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/messaging/c1;->b()Lcom/google/firebase/messaging/c1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->b()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/c1;->e(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/messaging/g1;->Y:Landroid/os/PowerManager$WakeLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->P(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->J()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->P(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/google/firebase/messaging/c1;->b()Lcom/google/firebase/messaging/c1;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->b()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/c1;->e(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/messaging/g1;->Y:Landroid/os/PowerManager$WakeLock;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_3

    .line 62
    :catch_0
    move-exception v1

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/firebase/messaging/c1;->b()Lcom/google/firebase/messaging/c1;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->b()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/c1;->d(Landroid/content/Context;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->d()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    new-instance v1, Lcom/google/firebase/messaging/g1$a;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/google/firebase/messaging/g1$a;-><init>(Lcom/google/firebase/messaging/g1;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/google/firebase/messaging/g1$a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/google/firebase/messaging/c1;->b()Lcom/google/firebase/messaging/c1;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->b()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/c1;->e(Landroid/content/Context;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->e()Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    iget-object v1, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->P(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 120
    .line 121
    iget-wide v2, p0, Lcom/google/firebase/messaging/g1;->X:J

    .line 122
    .line 123
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/messaging/FirebaseMessaging;->U(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-static {}, Lcom/google/firebase/messaging/c1;->b()Lcom/google/firebase/messaging/c1;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->b()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/c1;->e(Landroid/content/Context;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/google/firebase/messaging/g1;->Z:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->P(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lcom/google/firebase/messaging/c1;->b()Lcom/google/firebase/messaging/c1;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->b()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/c1;->e(Landroid/content/Context;)Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_4

    .line 162
    .line 163
    iget-object v0, p0, Lcom/google/firebase/messaging/g1;->Y:Landroid/os/PowerManager$WakeLock;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    .line 167
    .line 168
    :cond_4
    return-void

    .line 169
    :goto_3
    invoke-static {}, Lcom/google/firebase/messaging/c1;->b()Lcom/google/firebase/messaging/c1;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p0}, Lcom/google/firebase/messaging/g1;->b()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/c1;->e(Landroid/content/Context;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_5

    .line 182
    .line 183
    iget-object v1, p0, Lcom/google/firebase/messaging/g1;->Y:Landroid/os/PowerManager$WakeLock;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 186
    .line 187
    .line 188
    :cond_5
    throw v0
.end method
