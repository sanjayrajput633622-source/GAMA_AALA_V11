.class public final Lcom/google/firebase/analytics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;",
            "Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/analytics/a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->ANALYTICS_STORAGE:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/analytics/a;->c:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_USER_DATA:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/analytics/a;->d:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    sget-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;->AD_PERSONALIZATION:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentType;

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_3
    return-object v0
.end method

.method public final b()Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->d:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-object v0
.end method

.method public final c()Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-object v0
.end method

.method public final d()Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->c:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-object v0
.end method

.method public final e()Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-object v0
.end method

.method public final f(Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/analytics/a;->d:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-void
.end method

.method public final g(Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-void
.end method

.method public final h(Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/analytics/a;->c:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-void
.end method

.method public final i(Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;)V
    .locals 0
    .param p1    # Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/analytics/a;->b:Lcom/google/firebase/analytics/FirebaseAnalytics$ConsentStatus;

    return-void
.end method
