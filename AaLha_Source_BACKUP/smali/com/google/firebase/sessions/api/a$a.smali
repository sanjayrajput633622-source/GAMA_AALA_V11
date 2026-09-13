.class public final Lcom/google/firebase/sessions/api/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/sync/Mutex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/google/firebase/sessions/api/SessionSubscriber;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/Mutex;Lcom/google/firebase/sessions/api/SessionSubscriber;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/sync/Mutex;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/sessions/api/SessionSubscriber;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "mutex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/sessions/api/a$a;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p2, p0, Lcom/google/firebase/sessions/api/a$a;->b:Lcom/google/firebase/sessions/api/SessionSubscriber;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/Mutex;Lcom/google/firebase/sessions/api/SessionSubscriber;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/sessions/api/a$a;-><init>(Lkotlinx/coroutines/sync/Mutex;Lcom/google/firebase/sessions/api/SessionSubscriber;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/sessions/api/a$a;Lkotlinx/coroutines/sync/Mutex;Lcom/google/firebase/sessions/api/SessionSubscriber;ILjava/lang/Object;)Lcom/google/firebase/sessions/api/a$a;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/google/firebase/sessions/api/a$a;->a:Lkotlinx/coroutines/sync/Mutex;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/google/firebase/sessions/api/a$a;->b:Lcom/google/firebase/sessions/api/SessionSubscriber;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/api/a$a;->c(Lkotlinx/coroutines/sync/Mutex;Lcom/google/firebase/sessions/api/SessionSubscriber;)Lcom/google/firebase/sessions/api/a$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/sync/Mutex;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/api/a$a;->a:Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method

.method public final b()Lcom/google/firebase/sessions/api/SessionSubscriber;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/api/a$a;->b:Lcom/google/firebase/sessions/api/SessionSubscriber;

    return-object v0
.end method

.method public final c(Lkotlinx/coroutines/sync/Mutex;Lcom/google/firebase/sessions/api/SessionSubscriber;)Lcom/google/firebase/sessions/api/a$a;
    .locals 1
    .param p1    # Lkotlinx/coroutines/sync/Mutex;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/sessions/api/SessionSubscriber;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "mutex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/sessions/api/a$a;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/sessions/api/a$a;-><init>(Lkotlinx/coroutines/sync/Mutex;Lcom/google/firebase/sessions/api/SessionSubscriber;)V

    return-object v0
.end method

.method public final e()Lkotlinx/coroutines/sync/Mutex;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/api/a$a;->a:Lkotlinx/coroutines/sync/Mutex;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/api/a$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/api/a$a;

    iget-object v1, p0, Lcom/google/firebase/sessions/api/a$a;->a:Lkotlinx/coroutines/sync/Mutex;

    iget-object v3, p1, Lcom/google/firebase/sessions/api/a$a;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/sessions/api/a$a;->b:Lcom/google/firebase/sessions/api/SessionSubscriber;

    iget-object p1, p1, Lcom/google/firebase/sessions/api/a$a;->b:Lcom/google/firebase/sessions/api/SessionSubscriber;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f()Lcom/google/firebase/sessions/api/SessionSubscriber;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/api/a$a;->b:Lcom/google/firebase/sessions/api/SessionSubscriber;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g(Lcom/google/firebase/sessions/api/SessionSubscriber;)V
    .locals 0
    .param p1    # Lcom/google/firebase/sessions/api/SessionSubscriber;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/sessions/api/a$a;->b:Lcom/google/firebase/sessions/api/SessionSubscriber;

    .line 2
    .line 3
    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/sessions/api/a$a;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/api/a$a;->b:Lcom/google/firebase/sessions/api/SessionSubscriber;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dependency(mutex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/api/a$a;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subscriber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/api/a$a;->b:Lcom/google/firebase/sessions/api/SessionSubscriber;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
