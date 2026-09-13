.class public abstract Lcom/google/firebase/logger/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/logger/Logger$a;,
        Lcom/google/firebase/logger/Logger$b;,
        Lcom/google/firebase/logger/Logger$c;,
        Lcom/google/firebase/logger/Logger$Level;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/firebase/logger/Logger$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/logger/Logger;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public c:Lcom/google/firebase/logger/Logger$Level;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/logger/Logger$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/logger/Logger$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/logger/Logger;->d:Lcom/google/firebase/logger/Logger$b;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/firebase/logger/Logger;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/google/firebase/logger/Logger$Level;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/logger/Logger;->a:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/google/firebase/logger/Logger;->b:Z

    .line 5
    iput-object p3, p0, Lcom/google/firebase/logger/Logger;->c:Lcom/google/firebase/logger/Logger$Level;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/google/firebase/logger/Logger$Level;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;-><init>(Ljava/lang/String;ZLcom/google/firebase/logger/Logger$Level;)V

    return-void
.end method

.method public static final C(Ljava/lang/String;ZLcom/google/firebase/logger/Logger$Level;)Lcom/google/firebase/logger/Logger$c;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/logger/Logger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/logger/Logger;->d:Lcom/google/firebase/logger/Logger$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/logger/Logger$b;->c(Ljava/lang/String;ZLcom/google/firebase/logger/Logger$Level;)Lcom/google/firebase/logger/Logger$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/logger/Logger;->E(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: verbose"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic I(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->G(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: verbose"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic N(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/logger/Logger;->K(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: warn"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic O(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->M(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: warn"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static final synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/logger/Logger;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic f(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/logger/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: debug"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic g(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: debug"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic l(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/logger/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: error"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic m(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->k(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: error"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static final o(Ljava/lang/String;ZLcom/google/firebase/logger/Logger$Level;)Lcom/google/firebase/logger/Logger;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/logger/Logger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/logger/Logger;->d:Lcom/google/firebase/logger/Logger$b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/firebase/logger/Logger$b;->a(Ljava/lang/String;ZLcom/google/firebase/logger/Logger$Level;)Lcom/google/firebase/logger/Logger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/logger/Logger;->s(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: info"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic w(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->u(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string p1, "Super calls with default arguments not supported in this target, function: info"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static synthetic z(Lcom/google/firebase/logger/Logger;Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-nez p6, :cond_1

    .line 2
    .line 3
    and-int/lit8 p5, p5, 0x4

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    new-array p3, p3, [Ljava/lang/Object;

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/logger/Logger;->y(Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 16
    .line 17
    const-string p1, "Super calls with default arguments not supported in this target, function: logIfAble"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/logger/Logger;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public final B(Lcom/google/firebase/logger/Logger$Level;)V
    .locals 1
    .param p1    # Lcom/google/firebase/logger/Logger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/firebase/logger/Logger;->c:Lcom/google/firebase/logger/Logger$Level;

    .line 7
    .line 8
    return-void
.end method

.method public final D(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/google/firebase/logger/Logger;->H(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final E(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v2, Lcom/google/firebase/logger/Logger$Level;->VERBOSE:Lcom/google/firebase/logger/Logger$Level;

    .line 7
    .line 8
    const/4 v6, 0x4

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v5, p2

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/google/firebase/logger/Logger;->z(Lcom/google/firebase/logger/Logger;Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final varargs F(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/logger/Logger;->I(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final G(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/logger/Logger$Level;->VERBOSE:Lcom/google/firebase/logger/Logger$Level;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->y(Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final J(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/google/firebase/logger/Logger;->N(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final K(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v2, Lcom/google/firebase/logger/Logger$Level;->WARN:Lcom/google/firebase/logger/Logger$Level;

    .line 7
    .line 8
    const/4 v6, 0x4

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v5, p2

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/google/firebase/logger/Logger;->z(Lcom/google/firebase/logger/Logger;Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final varargs L(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/logger/Logger;->O(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final M(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/logger/Logger$Level;->WARN:Lcom/google/firebase/logger/Logger$Level;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->y(Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/google/firebase/logger/Logger;->f(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v2, Lcom/google/firebase/logger/Logger$Level;->DEBUG:Lcom/google/firebase/logger/Logger$Level;

    .line 7
    .line 8
    const/4 v6, 0x4

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v5, p2

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/google/firebase/logger/Logger;->z(Lcom/google/firebase/logger/Logger;Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/logger/Logger;->g(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final e(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/logger/Logger$Level;->DEBUG:Lcom/google/firebase/logger/Logger$Level;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->y(Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final h(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/google/firebase/logger/Logger;->l(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v2, Lcom/google/firebase/logger/Logger$Level;->ERROR:Lcom/google/firebase/logger/Logger$Level;

    .line 7
    .line 8
    const/4 v6, 0x4

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v5, p2

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/google/firebase/logger/Logger;->z(Lcom/google/firebase/logger/Logger;Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final varargs j(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/logger/Logger;->m(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final k(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/logger/Logger$Level;->ERROR:Lcom/google/firebase/logger/Logger$Level;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->y(Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/logger/Logger;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final p()Lcom/google/firebase/logger/Logger$Level;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/logger/Logger;->c:Lcom/google/firebase/logger/Logger$Level;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/logger/Logger;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/google/firebase/logger/Logger;->v(Lcom/google/firebase/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final s(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v2, Lcom/google/firebase/logger/Logger$Level;->INFO:Lcom/google/firebase/logger/Logger$Level;

    .line 7
    .line 8
    const/4 v6, 0x4

    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v5, p2

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/google/firebase/logger/Logger;->z(Lcom/google/firebase/logger/Logger;Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final varargs t(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/logger/Logger;->w(Lcom/google/firebase/logger/Logger;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final u(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/firebase/logger/Logger$Level;->INFO:Lcom/google/firebase/logger/Logger$Level;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/firebase/logger/Logger;->y(Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public abstract x(Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I
    .param p1    # Lcom/google/firebase/logger/Logger$Level;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final y(Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/logger/Logger;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/logger/Logger;->c:Lcom/google/firebase/logger/Logger$Level;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/logger/Logger$Level;->getPriority$com_google_firebase_firebase_common()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/logger/Logger$Level;->getPriority$com_google_firebase_firebase_common()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-le v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/firebase/logger/Logger;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/firebase/logger/Logger$Level;->getPriority$com_google_firebase_firebase_common()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/firebase/logger/Logger;->x(Lcom/google/firebase/logger/Logger$Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return p1
.end method
