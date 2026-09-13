.class public Lcom/google/firebase/auth/internal/RecaptchaActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaes;


# static fields
.field public static final Y:Ljava/lang/String; = "RecaptchaActivity"

.field public static Z:J

.field public static final e0:Lh8/f1;


# instance fields
.field public X:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lh8/f1;->g()Lh8/f1;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->e0:Lh8/f1;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->X:Z

    .line 7
    return-void
.end method

.method public static synthetic A(Lcom/google/firebase/auth/internal/RecaptchaActivity;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 5
    .param p0    # Lcom/google/firebase/auth/internal/RecaptchaActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "android.intent.action.VIEW"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    new-instance v2, Landroid/content/Intent;

    .line 25
    .line 26
    const-string v4, "android.support.customtabs.action.CustomTabsService"

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    const/high16 v2, 0x10000000

    .line 36
    .line 37
    const/high16 v3, 0x40000000    # 2.0f

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    .line 61
    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 68
    move-result-object p2

    .line 69
    .line 70
    check-cast p2, Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p0, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 74
    return-void

    .line 75
    .line 76
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    check-cast p2, Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .line 87
    const-string p2, "com.android.browser.application_id"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaer;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzaes;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private final B(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private final C()V
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    sput-wide v0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->Z:J

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->X:Z

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    const-string v1, "com.google.firebase.auth.internal.EXTRA_CANCELED"

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->B(Landroid/content/Intent;)Z

    .line 27
    .line 28
    sget-object v0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->e0:Lh8/f1;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lh8/f1;->b(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    return-void
.end method

.method private final x(Landroid/net/Uri$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    const-string v0, "com.google.firebase.auth.KEY_API_KEY"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 14
    move-result-object v5

    .line 15
    .line 16
    const-string v1, "com.google.firebase.auth.internal.CLIENT_VERSION"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "com.google.firebase.auth.internal.FIREBASE_APP_NAME"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v7

    .line 27
    .line 28
    .line 29
    invoke-static {v7}, Lx7/g;->q(Ljava/lang/String;)Lx7/g;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lx7/g;)Lcom/google/firebase/auth/FirebaseAuth;

    .line 34
    move-result-object v8

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lh8/r1;->b()Lh8/r1;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    const-string v6, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA"

    .line 45
    move-object v4, p3

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v2 .. v7}, Lh8/r1;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 52
    move-result-object p3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lx7/g;->t()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-static {p3, p2}, Lh8/t1;->a(Landroid/content/Context;Ljava/lang/String;)Lh8/t1;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lh8/t1;->b()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result p3

    .line 69
    .line 70
    if-eqz p3, :cond_0

    .line 71
    .line 72
    const-string p1, "Failed to generate/retrieve public encryption key for reCAPTCHA flow."

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lh8/n;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->z(Lcom/google/android/gms/common/api/Status;)V

    .line 80
    const/4 p1, 0x0

    .line 81
    return-object p1

    .line 82
    .line 83
    .line 84
    :cond_0
    invoke-virtual {v8}, Lcom/google/firebase/auth/FirebaseAuth;->o()Ljava/lang/String;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    .line 88
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result p3

    .line 90
    .line 91
    if-nez p3, :cond_1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8}, Lcom/google/firebase/auth/FirebaseAuth;->o()Ljava/lang/String;

    .line 95
    move-result-object p3

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza()Ljava/lang/String;

    .line 100
    move-result-object p3

    .line 101
    .line 102
    :goto_0
    const-string v2, "apiKey"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    const-string v2, "authType"

    .line 109
    .line 110
    const-string v3, "verifyApp"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    const-string v2, "apn"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    const-string v2, "hl"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    move-result-object p3

    .line 127
    .line 128
    const-string v0, "eventId"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    move-result-object p3

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v2, "X"

    .line 137
    .line 138
    .line 139
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    const-string v1, "v"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 152
    move-result-object p3

    .line 153
    .line 154
    const-string v0, "eid"

    .line 155
    .line 156
    const-string v1, "p"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 160
    move-result-object p3

    .line 161
    .line 162
    const-string v0, "appName"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, v0, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    move-result-object p3

    .line 167
    .line 168
    const-string v0, "sha1Cert"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3, v0, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 172
    move-result-object p3

    .line 173
    .line 174
    const-string p4, "publicKey"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, p4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 178
    return-object p1
.end method

.method public static synthetic y(Landroid/net/Uri;Lcom/google/android/gms/tasks/Task;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Le8/a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Le8/a;->a()Ljava/lang/Exception;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Le8/a;->a()Ljava/lang/Exception;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Le8/a;->b()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "fac="

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method private final z(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    sput-wide v0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->Z:J

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->X:Z

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lh8/d1;->c(Landroid/content/Intent;Lcom/google/android/gms/common/api/Status;)V

    .line 16
    .line 17
    const-string p1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->B(Landroid/content/Intent;)Z

    .line 24
    .line 25
    sget-object p1, Lcom/google/firebase/auth/internal/RecaptchaActivity;->e0:Lh8/f1;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lh8/f1;->b(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 32
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, "android.intent.action.VIEW"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->C()V

    .line 31
    return-void

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    sget-wide v2, Lcom/google/firebase/auth/internal/RecaptchaActivity;->Z:J

    .line 42
    .line 43
    sub-long v2, v0, v2

    .line 44
    .line 45
    const-wide/16 v4, 0x7530

    .line 46
    .line 47
    cmp-long v2, v2, v4

    .line 48
    .line 49
    if-gez v2, :cond_1

    .line 50
    return-void

    .line 51
    .line 52
    :cond_1
    sput-wide v0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->Z:J

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    const-string v0, "com.google.firebase.auth.internal.KEY_ALREADY_STARTED_RECAPTCHA_FLOW"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->X:Z

    .line 63
    :cond_2
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 7
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "android.intent.action.VIEW"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v3, "firebaseError"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 31
    move-result v4

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lh8/d1;->b(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->z(Lcom/google/android/gms/common/api/Status;)V

    .line 45
    return-void

    .line 46
    .line 47
    :cond_0
    const-string v3, "link"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 51
    move-result v4

    .line 52
    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    const-string v4, "eventId"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 59
    move-result v5

    .line 60
    .line 61
    if-eqz v5, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lh8/r1;->b()Lh8/r1;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    move-result-object v6

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v6, v7, v4}, Lh8/r1;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v5

    .line 90
    .line 91
    if-eqz v5, :cond_1

    .line 92
    .line 93
    const-string v5, "Failed to find registration for this reCAPTCHA event"

    .line 94
    .line 95
    .line 96
    invoke-static {v5}, Lh8/n;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v5}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->z(Lcom/google/android/gms/common/api/Status;)V

    .line 101
    .line 102
    :cond_1
    const-string v5, "encryptionEnabled"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 106
    move-result v0

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-static {v4}, Lx7/g;->q(Ljava/lang/String;)Lx7/g;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Lx7/g;->t()Ljava/lang/String;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v2}, Lh8/t1;->a(Landroid/content/Context;Ljava/lang/String;)Lh8/t1;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v3}, Lh8/t1;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v3

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    const-string v2, "recaptchaToken"

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    const-wide/16 v2, 0x0

    .line 141
    .line 142
    sput-wide v2, Lcom/google/firebase/auth/internal/RecaptchaActivity;->Z:J

    .line 143
    .line 144
    iput-boolean v1, p0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->X:Z

    .line 145
    .line 146
    new-instance v1, Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 150
    .line 151
    const-string v2, "com.google.firebase.auth.internal.RECAPTCHA_TOKEN"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    .line 156
    const-string v2, "com.google.firebase.auth.internal.OPERATION"

    .line 157
    .line 158
    const-string v3, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    .line 163
    const-string v2, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    invoke-direct {p0, v1}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->B(Landroid/content/Intent;)Z

    .line 170
    move-result v1

    .line 171
    .line 172
    if-nez v1, :cond_3

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v0, v3}, Lh8/k0;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    goto :goto_0

    .line 181
    .line 182
    :cond_3
    sget-object v0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->e0:Lh8/f1;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p0}, Lh8/f1;->b(Landroid/content/Context;)V

    .line 186
    .line 187
    .line 188
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 189
    return-void

    .line 190
    .line 191
    .line 192
    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->C()V

    .line 193
    return-void

    .line 194
    .line 195
    :cond_5
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->X:Z

    .line 196
    .line 197
    if-nez v0, :cond_7

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 201
    move-result-object v6

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 205
    move-result-object v4

    .line 206
    .line 207
    .line 208
    :try_start_0
    invoke-static {p0, v4}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    .line 209
    move-result-object v0

    .line 210
    .line 211
    .line 212
    invoke-static {v0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([B)Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 214
    .line 215
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 219
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    const-string v0, "com.google.firebase.auth.internal.FIREBASE_APP_NAME"

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 226
    .line 227
    .line 228
    invoke-static {v0}, Lx7/g;->q(Ljava/lang/String;)Lx7/g;

    .line 229
    move-result-object v7

    .line 230
    .line 231
    .line 232
    invoke-static {v7}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lx7/g;)Lcom/google/firebase/auth/FirebaseAuth;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    .line 236
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;->zza(Lx7/g;)Z

    .line 237
    move-result v3

    .line 238
    .line 239
    if-nez v3, :cond_6

    .line 240
    .line 241
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;

    .line 242
    move-object v8, p0

    .line 243
    .line 244
    .line 245
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lx7/g;Lcom/google/android/gms/internal/firebase-auth-api/zzaes;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->H0()Ljava/util/concurrent/Executor;

    .line 249
    move-result-object v0

    .line 250
    .line 251
    new-array v1, v1, [Ljava/lang/Void;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    goto :goto_1

    .line 256
    :cond_6
    move-object v8, p0

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Lx7/g;->s()Lx7/q;

    .line 260
    move-result-object v1

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Lx7/q;->i()Ljava/lang/String;

    .line 264
    move-result-object v1

    .line 265
    .line 266
    .line 267
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v1

    .line 269
    .line 270
    .line 271
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 272
    move-result-object v1

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 276
    move-result-object v1

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 280
    move-result-object v3

    .line 281
    .line 282
    .line 283
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->x(Landroid/net/Uri$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 284
    move-result-object v1

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 288
    move-result-object v1

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->C0()Lk9/b;

    .line 292
    move-result-object v0

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v1, v4, v0}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->zza(Landroid/net/Uri;Ljava/lang/String;Lk9/b;)V

    .line 296
    goto :goto_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    move-object v8, p0

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    invoke-static {p0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaer;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzaes;Ljava/lang/String;)V

    .line 305
    .line 306
    :goto_1
    iput-boolean v2, v8, Lcom/google/firebase/auth/internal/RecaptchaActivity;->X:Z

    .line 307
    return-void

    .line 308
    :cond_7
    move-object v8, p0

    .line 309
    .line 310
    .line 311
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->C()V

    .line 312
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "com.google.firebase.auth.internal.KEY_ALREADY_STARTED_RECAPTCHA_FLOW"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/firebase/auth/internal/RecaptchaActivity;->X:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public final zza()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "__"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "handler"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->x(Landroid/net/Uri$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    const-string v0, "firebear.identityToolkit"

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagi;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final zza(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zza;

    move-result-object v0

    const-string v1, "client-firebase-auth-api"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zza;->zza(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaes;->zza:Lcom/google/android/gms/common/logging/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error generating connection"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Landroid/net/Uri;Ljava/lang/String;Lk9/b;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lk9/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lk9/b<",
            "Lf8/c;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-interface {p3}, Lk9/b;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf8/c;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 13
    invoke-interface {p3, v0}, Lf8/c;->a(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    new-instance v0, Lh8/o0;

    invoke-direct {v0, p1}, Lh8/o0;-><init>(Landroid/net/Uri;)V

    .line 14
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 16
    :goto_0
    new-instance p3, Lh8/m0;

    invoke-direct {p3, p0, p2}, Lh8/m0;-><init>(Lcom/google/firebase/auth/internal/RecaptchaActivity;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->C()V

    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/firebase/auth/internal/RecaptchaActivity;->z(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
