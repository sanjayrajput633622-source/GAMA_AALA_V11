.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getComponents$0(Li8/i;)Lz7/a;
    .locals 3

    .line 1
    .line 2
    const-class v0, Lx7/g;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Li8/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lx7/g;

    .line 9
    .line 10
    const-class v1, Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v1}, Li8/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroid/content/Context;

    .line 17
    .line 18
    const-class v2, Lg9/d;

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v2}, Li8/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    check-cast p0, Lg9/d;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, p0}, Lz7/b;->j(Lx7/g;Landroid/content/Context;Lg9/d;)Lz7/a;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic zza(Li8/i;)Lz7/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Li8/i;)Lz7/a;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li8/g<",
            "*>;>;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lz7/a;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Li8/g;->h(Ljava/lang/Class;)Li8/g$b;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-class v1, Lx7/g;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Li8/w;->m(Ljava/lang/Class;)Li8/w;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-class v1, Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Li8/w;->m(Ljava/lang/Class;)Li8/w;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-class v1, Lg9/d;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Li8/w;->m(Ljava/lang/Class;)Li8/w;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sget-object v1, La8/b;->a:La8/b;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Li8/g$b;->f(Li8/l;)Li8/g$b;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Li8/g$b;->e()Li8/g$b;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Li8/g$b;->d()Li8/g;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    const-string v1, "fire-analytics"

    .line 53
    .line 54
    const-string v2, "23.0.0"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v2}, Lw9/h;->b(Ljava/lang/String;Ljava/lang/String;)Li8/g;

    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x2

    .line 60
    .line 61
    new-array v2, v2, [Li8/g;

    .line 62
    const/4 v3, 0x0

    .line 63
    .line 64
    aput-object v0, v2, v3

    .line 65
    const/4 v0, 0x1

    .line 66
    .line 67
    aput-object v1, v2, v0

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method
