.class public Lcom/google/firebase/auth/internal/GenericIdpActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaes;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# static fields
.field public static Y:J

.field public static final Z:Lh8/f1;


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
    sput-object v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->Z:Lh8/f1;

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
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->X:Z

    .line 7
    return-void
.end method

.method public static synthetic B(Lcom/google/firebase/auth/internal/GenericIdpActivity;Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 5
    .param p0    # Lcom/google/firebase/auth/internal/GenericIdpActivity;
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
    if-eqz v0, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 44
    .line 45
    .line 46
    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    check-cast p2, Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 60
    return-void

    .line 61
    .line 62
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    check-cast p2, Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    .line 73
    const-string p2, "com.android.browser.application_id"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    const/high16 p1, 0x40000000    # 2.0f

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    .line 83
    const/high16 p1, 0x10000000

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaer;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzaes;Ljava/lang/String;)V

    .line 94
    return-void
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

.method public static z(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v4

    .line 38
    .line 39
    if-nez v4, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :catch_0
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    sput-wide v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->Y:J

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->X:Z

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
    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->C(Landroid/content/Intent;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Lh8/k0;->c(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    sget-object p1, Lcom/google/firebase/auth/internal/GenericIdpActivity;->Z:Lh8/f1;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lh8/f1;->b(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    return-void
.end method

.method public final C(Landroid/content/Intent;)Z
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

.method public final D()V
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    sput-wide v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->Y:J

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->X:Z

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
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->C(Landroid/content/Intent;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string v0, "WEB_CONTEXT_CANCELED"

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lh8/n;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lh8/k0;->c(Landroid/content/Context;Lcom/google/android/gms/common/api/Status;)V

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    sget-object v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->Z:Lh8/f1;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lh8/f1;->b(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 48
    return-void
.end method

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
    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN"

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
    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_LINK"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v1, "com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const-string v1, "android.intent.action.VIEW"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->D()V

    .line 47
    return-void

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 55
    move-result-wide v0

    .line 56
    .line 57
    sget-wide v2, Lcom/google/firebase/auth/internal/GenericIdpActivity;->Y:J

    .line 58
    .line 59
    sub-long v2, v0, v2

    .line 60
    .line 61
    const-wide/16 v4, 0x7530

    .line 62
    .line 63
    cmp-long v2, v2, v4

    .line 64
    .line 65
    if-gez v2, :cond_1

    .line 66
    return-void

    .line 67
    .line 68
    :cond_1
    sput-wide v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->Y:J

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    const-string v0, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 76
    move-result p1

    .line 77
    .line 78
    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->X:Z

    .line 79
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
    if-eqz v0, :cond_7

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
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->A(Lcom/google/android/gms/common/api/Status;)V

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
    if-eqz v4, :cond_6

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
    if-eqz v5, :cond_6

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    move-result-object v5

    .line 74
    .line 75
    const-string v6, "encryptionEnabled"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 79
    move-result v0

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lh8/r1;->b()Lh8/r1;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p0, v5, v4}, Lh8/r1;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lh8/u1;

    .line 87
    move-result-object v2

    .line 88
    .line 89
    if-nez v2, :cond_1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->D()V

    .line 93
    .line 94
    :cond_1
    if-eqz v0, :cond_2

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Lh8/u1;->a()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    .line 105
    invoke-static {v4}, Lx7/g;->q(Ljava/lang/String;)Lx7/g;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lx7/g;->t()Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v4}, Lh8/t1;->a(Landroid/content/Context;Ljava/lang/String;)Lh8/t1;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v3}, Lh8/t1;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzajb;-><init>(Lh8/u1;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lh8/u1;->e()Ljava/lang/String;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lh8/u1;->b()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzajb;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzajb;

    .line 135
    .line 136
    const-string v4, "com.google.firebase.auth.internal.NONGMSCORE_SIGN_IN"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v4

    .line 141
    .line 142
    if-nez v4, :cond_4

    .line 143
    .line 144
    const-string v4, "com.google.firebase.auth.internal.NONGMSCORE_LINK"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    move-result v4

    .line 149
    .line 150
    if-nez v4, :cond_4

    .line 151
    .line 152
    const-string v4, "com.google.firebase.auth.internal.NONGMSCORE_REAUTHENTICATE"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v4

    .line 157
    .line 158
    if-eqz v4, :cond_3

    .line 159
    goto :goto_0

    .line 160
    .line 161
    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->D()V

    .line 163
    return-void

    .line 164
    .line 165
    :cond_4
    :goto_0
    const-wide/16 v4, 0x0

    .line 166
    .line 167
    sput-wide v4, Lcom/google/firebase/auth/internal/GenericIdpActivity;->Y:J

    .line 168
    .line 169
    iput-boolean v1, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->X:Z

    .line 170
    .line 171
    new-instance v1, Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 175
    .line 176
    const-string v4, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST"

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToIntentExtra(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    .line 180
    .line 181
    const-string v4, "com.google.firebase.auth.internal.OPERATION"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    .line 186
    const-string v4, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v1}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->C(Landroid/content/Intent;)Z

    .line 193
    move-result v1

    .line 194
    .line 195
    if-nez v1, :cond_5

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 199
    move-result-object v1

    .line 200
    .line 201
    .line 202
    invoke-static {v1, v0, v2, v3}, Lh8/k0;->d(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/zzajb;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    goto :goto_1

    .line 204
    .line 205
    :cond_5
    sget-object v0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->Z:Lh8/f1;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, p0}, Lh8/f1;->b(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 212
    return-void

    .line 213
    .line 214
    .line 215
    :cond_6
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->D()V

    .line 216
    return-void

    .line 217
    .line 218
    :cond_7
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->X:Z

    .line 219
    .line 220
    if-nez v0, :cond_9

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 224
    move-result-object v4

    .line 225
    .line 226
    .line 227
    :try_start_0
    invoke-static {p0, v4}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    .line 228
    move-result-object v0

    .line 229
    .line 230
    .line 231
    invoke-static {v0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([B)Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 238
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 242
    move-result-object v0

    .line 243
    .line 244
    const-string v3, "com.google.firebase.auth.KEY_FIREBASE_APP_NAME"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    move-result-object v0

    .line 249
    .line 250
    .line 251
    invoke-static {v0}, Lx7/g;->q(Ljava/lang/String;)Lx7/g;

    .line 252
    move-result-object v7

    .line 253
    .line 254
    .line 255
    invoke-static {v7}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lx7/g;)Lcom/google/firebase/auth/FirebaseAuth;

    .line 256
    move-result-object v0

    .line 257
    .line 258
    .line 259
    invoke-static {v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;->zza(Lx7/g;)Z

    .line 260
    move-result v3

    .line 261
    .line 262
    if-nez v3, :cond_8

    .line 263
    .line 264
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 268
    move-result-object v6

    .line 269
    move-object v8, p0

    .line 270
    .line 271
    .line 272
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeq;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Lx7/g;Lcom/google/android/gms/internal/firebase-auth-api/zzaes;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->H0()Ljava/util/concurrent/Executor;

    .line 276
    move-result-object v0

    .line 277
    .line 278
    new-array v1, v1, [Ljava/lang/Void;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 282
    goto :goto_2

    .line 283
    :cond_8
    move-object v8, p0

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7}, Lx7/g;->s()Lx7/q;

    .line 287
    move-result-object v1

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Lx7/q;->i()Ljava/lang/String;

    .line 291
    move-result-object v1

    .line 292
    .line 293
    .line 294
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    move-result-object v1

    .line 296
    .line 297
    .line 298
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 299
    move-result-object v1

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 303
    move-result-object v1

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 307
    move-result-object v3

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->x(Landroid/net/Uri$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 311
    move-result-object v1

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 315
    move-result-object v1

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->C0()Lk9/b;

    .line 319
    move-result-object v0

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v1, v4, v0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->zza(Landroid/net/Uri;Ljava/lang/String;Lk9/b;)V

    .line 323
    goto :goto_2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    move-object v8, p0

    .line 326
    .line 327
    .line 328
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    invoke-static {p0, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaer;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzaes;Ljava/lang/String;)V

    .line 332
    .line 333
    :goto_2
    iput-boolean v2, v8, Lcom/google/firebase/auth/internal/GenericIdpActivity;->X:Z

    .line 334
    return-void

    .line 335
    :cond_9
    move-object v8, p0

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->D()V

    .line 339
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
    const-string v0, "com.google.firebase.auth.internal.KEY_STARTED_SIGN_IN"

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/google/firebase/auth/internal/GenericIdpActivity;->X:Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    return-void
.end method

.method public final x(Landroid/net/Uri$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v2, p2

    .line 7
    .line 8
    const-string v3, "com.google.firebase.auth.KEY_API_KEY"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    const-string v4, "com.google.firebase.auth.KEY_PROVIDER_ID"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v11

    .line 19
    .line 20
    const-string v4, "com.google.firebase.auth.KEY_TENANT_ID"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v12

    .line 25
    .line 26
    const-string v4, "com.google.firebase.auth.KEY_FIREBASE_APP_NAME"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v13

    .line 31
    .line 32
    const-string v4, "com.google.firebase.auth.KEY_PROVIDER_SCOPES"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 36
    move-result-object v4

    .line 37
    const/4 v14, 0x0

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    move-result v5

    .line 44
    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    const-string v5, ","

    .line 48
    .line 49
    .line 50
    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v4, v14

    .line 54
    .line 55
    :goto_0
    const-string v5, "com.google.firebase.auth.KEY_PROVIDER_CUSTOM_PARAMS"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 59
    move-result-object v5

    .line 60
    .line 61
    .line 62
    invoke-static {v5}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->z(Landroid/os/Bundle;)Ljava/lang/String;

    .line 63
    move-result-object v15

    .line 64
    .line 65
    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 71
    move-result-object v8

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 75
    move-result-object v5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaer;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaes;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v9

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 87
    move-result-object v10

    .line 88
    .line 89
    const-string v5, "com.google.firebase.auth.internal.CLIENT_VERSION"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lh8/r1;->b()Lh8/r1;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    move-object/from16 v7, p3

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {v5 .. v13}, Lh8/r1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v13}, Lx7/g;->q(Ljava/lang/String;)Lx7/g;

    .line 110
    move-result-object v5

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 114
    move-result-object v6

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Lx7/g;->t()Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 119
    .line 120
    .line 121
    invoke-static {v6, v5}, Lh8/t1;->a(Landroid/content/Context;Ljava/lang/String;)Lh8/t1;

    .line 122
    move-result-object v5

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Lh8/t1;->b()Ljava/lang/String;

    .line 126
    move-result-object v5

    .line 127
    .line 128
    .line 129
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    move-result v6

    .line 131
    .line 132
    if-eqz v6, :cond_1

    .line 133
    .line 134
    const-string v1, "Failed to generate/retrieve public encryption key for Generic IDP flow."

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Lh8/n;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->A(Lcom/google/android/gms/common/api/Status;)V

    .line 142
    return-object v14

    .line 143
    .line 144
    :cond_1
    if-nez v9, :cond_2

    .line 145
    return-object v14

    .line 146
    .line 147
    :cond_2
    const-string v6, "eid"

    .line 148
    .line 149
    const-string v7, "p"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    move-result-object v6

    .line 154
    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v10, "X"

    .line 158
    .line 159
    .line 160
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    .line 169
    const-string v7, "v"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v7, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    const-string v6, "authType"

    .line 176
    .line 177
    const-string v7, "signInWithRedirect"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    move-result-object v2

    .line 182
    .line 183
    const-string v6, "apiKey"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v6, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 187
    move-result-object v2

    .line 188
    .line 189
    const-string v3, "providerId"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v3, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    const-string v3, "sessionId"

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 199
    move-result-object v2

    .line 200
    .line 201
    const-string v3, "eventId"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 205
    move-result-object v2

    .line 206
    .line 207
    const-string v3, "apn"

    .line 208
    .line 209
    move-object/from16 v7, p3

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    move-result-object v2

    .line 214
    .line 215
    const-string v3, "sha1Cert"

    .line 216
    .line 217
    move-object/from16 v6, p4

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v3, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    const-string v3, "publicKey"

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 227
    .line 228
    .line 229
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    move-result v2

    .line 231
    .line 232
    if-nez v2, :cond_3

    .line 233
    .line 234
    const-string v2, "scopes"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 238
    .line 239
    .line 240
    :cond_3
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 241
    move-result v2

    .line 242
    .line 243
    if-nez v2, :cond_4

    .line 244
    .line 245
    const-string v2, "customParameters"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 249
    .line 250
    .line 251
    :cond_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    move-result v2

    .line 253
    .line 254
    if-nez v2, :cond_5

    .line 255
    .line 256
    const-string v2, "tid"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 260
    :cond_5
    return-object v1
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
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->x(Landroid/net/Uri$Builder;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

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

    :catch_0
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

    .line 11
    invoke-interface {p3}, Lk9/b;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf8/c;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 12
    invoke-interface {p3, v0}, Lf8/c;->a(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p3

    new-instance v0, Lh8/f0;

    invoke-direct {v0, p1}, Lh8/f0;-><init>(Landroid/net/Uri;)V

    .line 13
    invoke-virtual {p3, v0}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 15
    :goto_0
    new-instance p3, Lh8/g0;

    invoke-direct {p3, p0, p2}, Lh8/g0;-><init>(Lcom/google/firebase/auth/internal/GenericIdpActivity;Ljava/lang/String;)V

    .line 16
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

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->D()V

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->A(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
