.class public final Lcom/google/firebase/sessions/api/a$b;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/api/a;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.sessions.api.FirebaseSessionsDependencies"
    f = "FirebaseSessionsDependencies.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x6e
    }
    m = "getRegisteredSubscribers$com_google_firebase_firebase_sessions"
    n = {
        "destination$iv$iv",
        "subscriberName",
        "$this$withLock_u24default$iv"
    }
    s = {
        "L$0",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field public X:Ljava/lang/Object;

.field public Y:Ljava/lang/Object;

.field public Z:Ljava/lang/Object;

.field public e0:Ljava/lang/Object;

.field public f0:Ljava/lang/Object;

.field public g0:Ljava/lang/Object;

.field public synthetic h0:Ljava/lang/Object;

.field public final synthetic i0:Lcom/google/firebase/sessions/api/a;

.field public j0:I


# direct methods
.method public constructor <init>(Lcom/google/firebase/sessions/api/a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/api/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/sessions/api/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/api/a$b;->i0:Lcom/google/firebase/sessions/api/a;

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

    iput-object p1, p0, Lcom/google/firebase/sessions/api/a$b;->h0:Ljava/lang/Object;

    iget p1, p0, Lcom/google/firebase/sessions/api/a$b;->j0:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/firebase/sessions/api/a$b;->j0:I

    iget-object p1, p0, Lcom/google/firebase/sessions/api/a$b;->i0:Lcom/google/firebase/sessions/api/a;

    invoke-virtual {p1, p0}, Lcom/google/firebase/sessions/api/a;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
