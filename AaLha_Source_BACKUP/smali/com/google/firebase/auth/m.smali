.class public final Lcom/google/firebase/auth/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic X:Lcom/google/firebase/auth/FirebaseAuth$a;

.field public final synthetic Y:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p2, p0, Lcom/google/firebase/auth/m;->X:Lcom/google/firebase/auth/FirebaseAuth$a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/auth/m;->Y:Lcom/google/firebase/auth/FirebaseAuth;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/m;->X:Lcom/google/firebase/auth/FirebaseAuth$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/auth/m;->Y:Lcom/google/firebase/auth/FirebaseAuth;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth$a;->a(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 8
    return-void
.end method
