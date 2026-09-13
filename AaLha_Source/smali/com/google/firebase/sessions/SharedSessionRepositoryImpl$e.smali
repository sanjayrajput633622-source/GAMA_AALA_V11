.class public final Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->r(Ljava/lang/String;Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.sessions.SharedSessionRepositoryImpl"
    f = "SharedSessionRepository.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xc7
    }
    m = "notifySubscribers"
    n = {
        "sessionId",
        "type"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public X:Ljava/lang/Object;

.field public Y:Ljava/lang/Object;

.field public synthetic Z:Ljava/lang/Object;

.field public final synthetic e0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

.field public f0:I


# direct methods
.method public constructor <init>(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->e0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->Z:Ljava/lang/Object;

    iget p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->f0:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->f0:I

    iget-object p1, p0, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$e;->e0:Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;->l(Lcom/google/firebase/sessions/SharedSessionRepositoryImpl;Ljava/lang/String;Lcom/google/firebase/sessions/SharedSessionRepositoryImpl$NotificationType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
