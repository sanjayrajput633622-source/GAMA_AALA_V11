.class public Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$b;,
        Lcom/google/firebase/auth/FirebaseAuth$a;,
        Lcom/google/firebase/auth/FirebaseAuth$c;,
        Lcom/google/firebase/auth/FirebaseAuth$d;,
        Lcom/google/firebase/auth/FirebaseAuth$e;
    }
.end annotation


# instance fields
.field public final A:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public B:Ljava/lang/String;

.field public final a:Lx7/g;

.field public final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

.field public f:Lcom/google/firebase/auth/FirebaseUser;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Lh8/f;

.field public final h:Ljava/lang/Object;

.field public i:Ljava/lang/String;

.field public final j:Ljava/lang/Object;

.field public k:Ljava/lang/String;

.field public l:Lh8/v0;

.field public final m:Lcom/google/android/recaptcha/RecaptchaAction;

.field public final n:Lcom/google/android/recaptcha/RecaptchaAction;

.field public final o:Lcom/google/android/recaptcha/RecaptchaAction;

.field public final p:Lcom/google/android/recaptcha/RecaptchaAction;

.field public final q:Lcom/google/android/recaptcha/RecaptchaAction;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final r:Lcom/google/android/recaptcha/RecaptchaAction;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public final s:Lh8/a1;

.field public final t:Lh8/f1;

.field public final u:Lh8/z;

.field public final v:Lk9/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/b<",
            "Lf8/c;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lk9/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk9/b<",
            "Li9/i;",
            ">;"
        }
    .end annotation
.end field

.field public x:Lh8/z0;

.field public final y:Ljava/util/concurrent/Executor;

.field public final z:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lx7/g;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lh8/a1;Lh8/f1;Lh8/z;Lk9/b;Lk9/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p8    # Ljava/util/concurrent/Executor;
        .annotation build Ld8/a;
        .end annotation
    .end param
    .param p9    # Ljava/util/concurrent/Executor;
        .annotation build Ld8/b;
        .end annotation
    .end param
    .param p10    # Ljava/util/concurrent/Executor;
        .annotation build Ld8/c;
        .end annotation
    .end param
    .param p11    # Ljava/util/concurrent/Executor;
        .annotation build Ld8/d;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/g;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzacq;",
            "Lh8/a1;",
            "Lh8/f1;",
            "Lh8/z;",
            "Lk9/b<",
            "Lf8/c;",
            ">;",
            "Lk9/b<",
            "Li9/i;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    .line 9
    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/List;

    .line 10
    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 11
    new-instance p8, Ljava/lang/Object;

    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    .line 12
    new-instance p8, Ljava/lang/Object;

    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/Object;

    .line 13
    const-string p8, "getOobCode"

    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 14
    const-string p8, "signInWithPassword"

    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 15
    const-string p8, "signUpPassword"

    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 16
    const-string p8, "sendVerificationCode"

    .line 17
    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->p:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 18
    const-string p8, "mfaSmsEnrollment"

    .line 19
    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->q:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 20
    const-string p8, "mfaSmsSignIn"

    .line 21
    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->r:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx7/g;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 24
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/a1;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lh8/a1;

    .line 25
    new-instance p2, Lh8/f;

    invoke-direct {p2}, Lh8/f;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lh8/f;

    .line 26
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh8/f1;

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->t:Lh8/f1;

    .line 27
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh8/z;

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->u:Lh8/z;

    .line 28
    iput-object p6, p0, Lcom/google/firebase/auth/FirebaseAuth;->v:Lk9/b;

    .line 29
    iput-object p7, p0, Lcom/google/firebase/auth/FirebaseAuth;->w:Lk9/b;

    .line 30
    iput-object p9, p0, Lcom/google/firebase/auth/FirebaseAuth;->y:Ljava/util/concurrent/Executor;

    .line 31
    iput-object p10, p0, Lcom/google/firebase/auth/FirebaseAuth;->z:Ljava/util/concurrent/Executor;

    .line 32
    iput-object p11, p0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 33
    invoke-virtual {p1}, Lh8/a1;->b()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p1, p3}, Lh8/a1;->a(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    const/4 p4, 0x0

    invoke-static {p0, p3, p1, p4, p4}, Lcom/google/firebase/auth/FirebaseAuth;->m0(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V

    .line 36
    :cond_0
    invoke-virtual {p2, p0}, Lh8/f1;->c(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method

.method public constructor <init>(Lx7/g;Lk9/b;Lk9/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 12
    .param p1    # Lx7/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lk9/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lk9/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Ld8/a;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Ld8/b;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Ld8/c;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Ld8/c;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Ld8/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx7/g;",
            "Lk9/b<",
            "Lf8/c;",
            ">;",
            "Lk9/b<",
            "Li9/i;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    move-object/from16 v9, p5

    move-object/from16 v0, p7

    invoke-direct {v2, p1, v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;-><init>(Lx7/g;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 2
    new-instance v3, Lh8/a1;

    .line 3
    invoke-virtual {p1}, Lx7/g;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lx7/g;->t()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lh8/a1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lh8/f1;->g()Lh8/f1;

    move-result-object v4

    .line 5
    invoke-static {}, Lh8/z;->b()Lh8/z;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    .line 6
    invoke-direct/range {v0 .. v11}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lx7/g;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lh8/a1;Lh8/f1;Lh8/z;Lk9/b;Lk9/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static bridge synthetic B0(Lcom/google/firebase/auth/FirebaseAuth;)Lh8/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lh8/f;

    .line 3
    return-object p0
.end method

.method public static bridge synthetic E0(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic G0(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static I0(Lcom/google/firebase/auth/FirebaseAuth;)Lh8/z0;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->x:Lh8/z0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lx7/g;

    .line 13
    .line 14
    new-instance v1, Lh8/z0;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lh8/z0;-><init>(Lx7/g;)V

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->x:Lh8/z0;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->x:Lh8/z0;

    .line 22
    return-object p0
.end method

.method public static bridge synthetic g0(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/PhoneAuthProvider$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->i0(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lx7/g;->p()Lx7/g;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, v1}, Lx7/g;->l(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public static getInstance(Lx7/g;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .param p0    # Lx7/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0, v0}, Lx7/g;->l(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method public static bridge synthetic j0(Lcom/google/firebase/auth/FirebaseAuth;)Lx7/g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 3
    return-object p0
.end method

.method public static k0(Lcom/google/firebase/FirebaseException;Lcom/google/firebase/auth/c;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/google/firebase/FirebaseException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/auth/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/auth/c;->i()Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/auth/c;->m()Ljava/util/concurrent/Executor;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    new-instance v0, Lg8/u0;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p2, p0}, Lg8/u0;-><init>(Lcom/google/firebase/auth/PhoneAuthProvider$a;Lcom/google/firebase/FirebaseException;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method public static l0(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 1
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v0, Lcom/google/firebase/auth/o;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/o;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public static m0(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    .line 33
    :goto_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    if-eqz p4, :cond_1

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_1
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 40
    .line 41
    if-nez p4, :cond_2

    .line 42
    move v1, v2

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p4}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 47
    move-result-object p4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 51
    move-result-object p4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p4

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    if-eqz p4, :cond_3

    .line 64
    move p4, v1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move p4, v2

    .line 67
    .line 68
    :goto_1
    if-nez v0, :cond_4

    .line 69
    move v1, v2

    .line 70
    :cond_4
    move v2, p4

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 76
    .line 77
    if-eqz p4, :cond_7

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    .line 81
    move-result-object p4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p4

    .line 90
    .line 91
    if-nez p4, :cond_5

    .line 92
    goto :goto_3

    .line 93
    .line 94
    :cond_5
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p4, v0}, Lcom/google/firebase/auth/FirebaseUser;->zza(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    .line 105
    move-result p4

    .line 106
    .line 107
    if-nez p4, :cond_6

    .line 108
    .line 109
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4}, Lcom/google/firebase/auth/FirebaseUser;->zzb()Lcom/google/firebase/auth/FirebaseUser;

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getMultiFactor()Lg8/n;

    .line 116
    move-result-object p4

    .line 117
    .line 118
    .line 119
    invoke-virtual {p4}, Lg8/n;->b()Ljava/util/List;

    .line 120
    move-result-object p4

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/util/List;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3, p4}, Lcom/google/firebase/auth/FirebaseUser;->zzc(Ljava/util/List;)V

    .line 130
    .line 131
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p4, v0}, Lcom/google/firebase/auth/FirebaseUser;->zzb(Ljava/util/List;)V

    .line 135
    goto :goto_4

    .line 136
    .line 137
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 138
    .line 139
    :goto_4
    if-eqz p3, :cond_8

    .line 140
    .line 141
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lh8/a1;

    .line 142
    .line 143
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p4, v0}, Lh8/a1;->j(Lcom/google/firebase/auth/FirebaseUser;)V

    .line 147
    .line 148
    :cond_8
    if-eqz v2, :cond_a

    .line 149
    .line 150
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 151
    .line 152
    if-eqz p4, :cond_9

    .line 153
    .line 154
    .line 155
    invoke-virtual {p4, p2}, Lcom/google/firebase/auth/FirebaseUser;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V

    .line 156
    .line 157
    :cond_9
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 158
    .line 159
    .line 160
    invoke-static {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->x0(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 161
    .line 162
    :cond_a
    if-eqz v1, :cond_b

    .line 163
    .line 164
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 165
    .line 166
    .line 167
    invoke-static {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->l0(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 168
    .line 169
    :cond_b
    if-eqz p3, :cond_c

    .line 170
    .line 171
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lh8/a1;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3, p1, p2}, Lh8/a1;->e(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V

    .line 175
    .line 176
    :cond_c
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 177
    .line 178
    if-eqz p1, :cond_d

    .line 179
    .line 180
    .line 181
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->I0(Lcom/google/firebase/auth/FirebaseAuth;)Lh8/z0;

    .line 182
    move-result-object p0

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lh8/z0;->d(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V

    .line 190
    :cond_d
    :goto_5
    return-void
.end method

.method public static p0(Lcom/google/firebase/auth/c;)V
    .locals 19
    .param p0    # Lcom/google/firebase/auth/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->q()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->e()Lcom/google/firebase/auth/FirebaseAuth;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->g()Lcom/google/firebase/auth/MultiFactorSession;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/google/firebase/auth/internal/zzam;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/firebase/auth/internal/zzam;->zzd()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->l()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    move-object v4, v2

    .line 38
    move-object v10, v4

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->j()Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    check-cast v2, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/google/firebase/auth/MultiFactorInfo;->getUid()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->getPhoneNumber()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    move-object v10, v4

    .line 63
    move-object v4, v2

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->h()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->i()Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->c()Landroid/app/Activity;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->m()Ljava/util/concurrent/Executor;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    .line 84
    invoke-static {v10, v2, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzagb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z

    .line 85
    move-result v2

    .line 86
    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/auth/internal/zzam;->zzd()Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    iget-object v1, v3, Lcom/google/firebase/auth/FirebaseAuth;->q:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 96
    :goto_1
    move-object v9, v1

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_2
    iget-object v1, v3, Lcom/google/firebase/auth/FirebaseAuth;->r:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :goto_2
    iget-object v2, v3, Lcom/google/firebase/auth/FirebaseAuth;->u:Lh8/z;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->c()Landroid/app/Activity;

    .line 106
    move-result-object v5

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseAuth;->L0()Z

    .line 110
    move-result v6

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->n()Z

    .line 114
    move-result v7

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->p()Z

    .line 118
    move-result v8

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {v2 .. v9}, Lh8/z;->a(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZZLcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    new-instance v2, Lcom/google/firebase/auth/h;

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, v3, v0, v10}, Lcom/google/firebase/auth/h;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/c;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 131
    return-void

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->e()Lcom/google/firebase/auth/FirebaseAuth;

    .line 135
    move-result-object v12

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->l()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v13

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->h()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    if-eqz v1, :cond_4

    .line 150
    goto :goto_3

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->i()Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->c()Landroid/app/Activity;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->m()Ljava/util/concurrent/Executor;

    .line 162
    move-result-object v3

    .line 163
    .line 164
    .line 165
    invoke-static {v13, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzagb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z

    .line 166
    move-result v1

    .line 167
    .line 168
    if-nez v1, :cond_5

    .line 169
    .line 170
    :goto_3
    iget-object v11, v12, Lcom/google/firebase/auth/FirebaseAuth;->u:Lh8/z;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->c()Landroid/app/Activity;

    .line 174
    move-result-object v14

    .line 175
    .line 176
    .line 177
    invoke-virtual {v12}, Lcom/google/firebase/auth/FirebaseAuth;->L0()Z

    .line 178
    move-result v15

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->n()Z

    .line 182
    move-result v16

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/google/firebase/auth/c;->p()Z

    .line 186
    move-result v17

    .line 187
    .line 188
    iget-object v1, v12, Lcom/google/firebase/auth/FirebaseAuth;->p:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 189
    .line 190
    move-object/from16 v18, v1

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {v11 .. v18}, Lh8/z;->a(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZZLcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    new-instance v2, Lg8/v0;

    .line 197
    .line 198
    .line 199
    invoke-direct {v2, v12, v0, v13}, Lg8/v0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/c;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 203
    :cond_5
    return-void
.end method

.method public static bridge synthetic v0(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method

.method public static x0(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 2
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p1, 0x0

    .line 14
    .line 15
    :goto_0
    new-instance v0, Lr9/c;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p1}, Lr9/c;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    new-instance v1, Lcom/google/firebase/auth/n;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/n;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lr9/c;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final A0(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 11
    .line 12
    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzc(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public B(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    .line 8
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public C(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    .line 8
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public final C0()Lk9/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk9/b<",
            "Lf8/c;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->v:Lk9/b;

    .line 3
    return-object v0
.end method

.method public D()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 13
    .line 14
    check-cast v0, Lcom/google/firebase/auth/internal/zzaf;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/zzaf;->zza(Z)V

    .line 19
    .line 20
    new-instance v1, Lcom/google/firebase/auth/internal/zzz;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzz;-><init>(Lcom/google/firebase/auth/internal/zzaf;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 33
    .line 34
    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lh8/o1;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final D0(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 11
    .line 12
    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzd(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public E(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    instance-of v0, p1, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    check-cast p1, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzf()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    move-object v3, p1

    .line 33
    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v1, p0

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {v1 .. v6}, Lcom/google/firebase/auth/FirebaseAuth;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_0
    move-object v1, p0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->y0(Ljava/lang/String;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 62
    .line 63
    const/16 v0, 0x42b0

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_1
    const/4 v0, 0x0

    .line 77
    const/4 v2, 0x0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, v0, v2}, Lcom/google/firebase/auth/FirebaseAuth;->R(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :cond_2
    move-object v1, p0

    .line 84
    .line 85
    instance-of v0, p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 90
    .line 91
    iget-object v0, v1, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 92
    .line 93
    iget-object v2, v1, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 94
    .line 95
    iget-object v3, v1, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 96
    .line 97
    new-instance v4, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 98
    .line 99
    .line 100
    invoke-direct {v4, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 104
    move-result-object p1

    .line 105
    return-object p1

    .line 106
    .line 107
    :cond_3
    iget-object v0, v1, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 108
    .line 109
    iget-object v2, v1, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 110
    .line 111
    iget-object v3, v1, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v4, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 114
    .line 115
    .line 116
    invoke-direct {v4, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 120
    move-result-object p1

    .line 121
    return-object p1
.end method

.method public F(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Ljava/lang/String;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final F0()Lk9/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk9/b<",
            "Li9/i;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->w:Lk9/b;

    .line 3
    return-object v0
.end method

.method public G(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/auth/FirebaseAuth;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lg8/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->E(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final H0()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->y:Ljava/util/concurrent/Executor;

    .line 3
    return-object v0
.end method

.method public I()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->K0()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->x:Lh8/z0;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lh8/z0;->b()V

    .line 11
    :cond_0
    return-void
.end method

.method public J(Landroid/app/Activity;Lg8/h;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lg8/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lg8/h;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->t:Lh8/f1;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1, v0, p0}, Lh8/f1;->d(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 22
    .line 23
    const/16 p2, 0x42a1

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p0}, Lh8/k0;->e(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lg8/h;->c(Landroid/app/Activity;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method public final J0()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->z:Ljava/util/concurrent/Executor;

    .line 3
    return-object v0
.end method

.method public K(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 29
    .line 30
    const/16 v0, 0x42b0

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zza()Lx7/g;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lx7/g;->s()Lx7/q;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lx7/q;->i()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lx7/g;->s()Lx7/q;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lx7/q;->i()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzg()Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/zzaf;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/FirebaseUser;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 90
    move-result-object p1

    .line 91
    const/4 v1, 0x1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->n0(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;Z)V

    .line 95
    const/4 p1, 0x0

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    .line 102
    :cond_3
    new-instance v0, Lcom/google/firebase/auth/FirebaseAuth$e;

    .line 103
    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth$e;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->Y(Lcom/google/firebase/auth/FirebaseUser;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    .line 112
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    const-string v0, "Cannot update current user with null user!"

    .line 115
    .line 116
    .line 117
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p1
.end method

.method public final K0()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lh8/a1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lh8/a1;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lh8/a1;->h(Lcom/google/firebase/auth/FirebaseUser;)V

    .line 16
    .line 17
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lh8/a1;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lh8/a1;->g()V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->x0(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->l0(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 29
    return-void
.end method

.method public L()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzafd;->zza()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v1
.end method

.method public final L0()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->k()Lx7/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lx7/g;->n()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza(Landroid/content/Context;)Z

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public M(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    .line 8
    const v0, 0xffff

    .line 9
    .line 10
    if-gt p2, v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    :goto_0
    const-string v1, "Port number must be in the range 0-65535"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;->zza(Lx7/g;Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public final declared-synchronized M0()Lh8/z0;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->I0(Lcom/google/firebase/auth/FirebaseAuth;)Lh8/z0;

    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public N(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzd(Lx7/g;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final O()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahr;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final P(Landroid/app/Activity;Lg8/h;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lg8/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lg8/h;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->t:Lh8/f1;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, v0, p0, p3}, Lh8/f1;->e(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 25
    .line 26
    const/16 p2, 0x42a1

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {v1, p0, p3}, Lh8/k0;->f(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Lg8/h;->a(Landroid/app/Activity;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public final Q(Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final R(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/auth/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p3, p2, p1}, Lcom/google/firebase/auth/e;-><init>(Lcom/google/firebase/auth/FirebaseAuth;ZLcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 10
    .line 11
    const-string p3, "EMAIL_PASSWORD_PROVIDER"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, p2, p1, p3}, Lh8/n0;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final S(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->Y(Lcom/google/firebase/auth/FirebaseUser;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final T(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v0, p2, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 17
    .line 18
    new-instance v0, Lcom/google/firebase/auth/l;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/auth/l;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 28
    .line 29
    const-string v1, "EMAIL_PASSWORD_PROVIDER"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0, p1, p2, v1}, Lh8/n0;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 45
    .line 46
    .line 47
    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 48
    const/4 v4, 0x0

    .line 49
    move-object v2, p1

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public final U(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/auth/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/firebase/auth/d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;ZLcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 15
    .line 16
    :goto_0
    const-string p3, "EMAIL_PASSWORD_PROVIDER"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, p1, p2, p3}, Lh8/n0;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final V(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/PhoneAuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    check-cast p2, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 17
    .line 18
    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final W(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/UserProfileChangeRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 11
    .line 12
    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/UserProfileChangeRequest;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final X(Lcom/google/firebase/auth/FirebaseUser;Lg8/o;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lg8/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lg8/o;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v0, p2, Lg8/p;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 15
    move-object v3, p2

    .line 16
    .line 17
    check-cast v3, Lg8/p;

    .line 18
    .line 19
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 20
    .line 21
    .line 22
    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p3

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lg8/p;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    move-object v3, p1

    .line 31
    move-object v4, p3

    .line 32
    .line 33
    instance-of p1, p2, Lg8/u;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 40
    move-object v2, p2

    .line 41
    .line 42
    check-cast v2, Lg8/u;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 47
    .line 48
    .line 49
    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lg8/u;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 57
    .line 58
    const/16 p2, 0x445b

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public final Y(Lcom/google/firebase/auth/FirebaseUser;Lh8/e1;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lh8/e1;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final Z(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 15
    .line 16
    .line 17
    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 18
    move-object v2, p1

    .line 19
    move-object v3, p2

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    new-instance p2, Lg8/z0;

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p0}, Lg8/z0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public a(Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lg8/k;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->a0(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final a0(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lg8/k;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 5
    .line 6
    const/16 p2, 0x4457

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzg()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lh8/i0;->a(Ljava/lang/String;)Lg8/k;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzd()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    new-instance v2, Lg8/c1;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2, p0}, Lg8/c1;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public b(Lh8/a;)V
    .locals 1
    .param p1    # Lh8/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->M0()Lh8/z0;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lh8/z0;->c(I)V

    .line 22
    return-void
.end method

.method public final b0(Lcom/google/firebase/auth/internal/zzam;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/internal/zzam;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lg8/w;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/auth/internal/zzam;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance v0, Lg8/a1;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lg8/a1;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public c(Lh8/a;)V
    .locals 1
    .param p1    # Lh8/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->M0()Lh8/z0;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lh8/z0;->c(I)V

    .line 22
    return-void
.end method

.method public final c0(Lg8/o;Lcom/google/firebase/auth/internal/zzam;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p3    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg8/o;",
            "Lcom/google/firebase/auth/internal/zzam;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v0, p1, Lg8/p;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 15
    move-object v4, p1

    .line 16
    .line 17
    check-cast v4, Lg8/p;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/google/firebase/auth/internal/zzam;->zzc()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    .line 27
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 28
    .line 29
    .line 30
    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 31
    move-object v3, p3

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lg8/p;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_0
    move-object v2, p3

    .line 38
    .line 39
    instance-of p3, p1, Lg8/u;

    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 46
    move-object v3, p1

    .line 47
    .line 48
    check-cast v3, Lg8/u;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/google/firebase/auth/internal/zzam;->zzc()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 61
    .line 62
    .line 63
    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lg8/u;Ljava/lang/String;Ljava/lang/String;Lh8/o1;)Lcom/google/android/gms/tasks/Task;

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string p2, "multiFactorAssertion must be either PhoneMultiFactorAssertion or TotpMultiFactorAssertion."

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
.end method

.method public d(Lcom/google/firebase/auth/FirebaseAuth$a;)V
    .locals 2
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v1, Lcom/google/firebase/auth/m;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/m;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$a;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public final d0(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahs;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public e(Lcom/google/firebase/auth/FirebaseAuth$b;)V
    .locals 2
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v1, Lcom/google/firebase/auth/g;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/google/firebase/auth/g;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$b;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public final e0(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    .line 12
    move-result-object p3

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public f(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/firebase/auth/p;

    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v5, p2

    .line 6
    move-object v6, p3

    .line 7
    move-object v4, p4

    .line 8
    move v3, p5

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/auth/p;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;ZLcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object p1, v1, Lcom/google/firebase/auth/FirebaseAuth;->n:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 14
    .line 15
    const-string p2, "EMAIL_PASSWORD_PROVIDER"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, v6, p1, p2}, Lh8/n0;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public g(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lg8/d;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lx7/g;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final h0(Lcom/google/firebase/auth/c;Lcom/google/firebase/auth/PhoneAuthProvider$a;Lh8/m1;)Lcom/google/firebase/auth/PhoneAuthProvider$a;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/auth/c;->n()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-object p2

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lcom/google/firebase/auth/i;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/google/firebase/auth/i;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/c;Lh8/m1;Lcom/google/firebase/auth/PhoneAuthProvider$a;)V

    .line 13
    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/auth/k;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/auth/k;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 16
    .line 17
    const-string v1, "EMAIL_PASSWORD_PROVIDER"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0, p1, p2, v1}, Lh8/n0;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final i0(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/PhoneAuthProvider$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lh8/f;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lh8/f;->g()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lh8/f;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lh8/f;->d()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p1, Lcom/google/firebase/auth/j;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p0, p2}, Lcom/google/firebase/auth/j;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthProvider$a;)V

    .line 28
    return-object p1

    .line 29
    :cond_0
    return-object p2
.end method

.method public j(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lg8/t;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzc(Lx7/g;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public k()Lx7/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 3
    return-object v0
.end method

.method public l()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->B:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public n()Lg8/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lh8/f;

    .line 3
    return-object v0
.end method

.method public final n0(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;Z)V
    .locals 1

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/auth/FirebaseAuth;->o0(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V

    .line 6
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final o0(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 p3, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/firebase/auth/FirebaseAuth;->m0(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V

    .line 5
    return-void
.end method

.method public p()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->t:Lh8/f1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lh8/f1;->a()Lcom/google/android/gms/tasks/Task;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final q0(Lcom/google/firebase/auth/c;Lh8/m1;)V
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/c;->k()Ljava/lang/Long;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide v4

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    cmp-long v1, v4, v1

    .line 15
    .line 16
    if-ltz v1, :cond_3

    .line 17
    .line 18
    const-wide/16 v1, 0x78

    .line 19
    .line 20
    cmp-long v1, v4, v1

    .line 21
    .line 22
    if-gtz v1, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/c;->l()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {p2 .. p2}, Lh8/m1;->c()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p2 .. p2}, Lh8/m1;->b()Ljava/lang/String;

    .line 38
    move-result-object v10

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p2 .. p2}, Lh8/m1;->d()Ljava/lang/String;

    .line 42
    move-result-object v9

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzac;->zzc(Ljava/lang/String;)Z

    .line 46
    move-result v2

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->w0()Lh8/v0;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->w0()Lh8/v0;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    const-string v6, "PHONE_PROVIDER"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v6}, Lh8/v0;->d(Ljava/lang/String;)Z

    .line 64
    move-result v2

    .line 65
    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    const-string v1, "NO_RECAPTCHA"

    .line 69
    :cond_0
    move-object v11, v1

    .line 70
    .line 71
    new-instance v14, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/c;->h()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 75
    move-result-object v1

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    const/4 v1, 0x1

    .line 79
    :goto_0
    move v6, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v1, 0x0

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :goto_1
    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v8, v0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->L0()Z

    .line 90
    move-result v12

    .line 91
    move-object v2, v14

    .line 92
    .line 93
    .line 94
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/c;->i()Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/auth/FirebaseAuth;->i0(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p2 .. p2}, Lh8/m1;->d()Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    move-result v2

    .line 111
    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lh8/m1;->a()Lh8/l1;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v9}, Lh8/l1;->d(Ljava/lang/String;)Lh8/l1;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v11}, Lh8/l1;->c(Ljava/lang/String;)Lh8/l1;

    .line 124
    move-result-object v2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v10}, Lh8/l1;->a(Ljava/lang/String;)Lh8/l1;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Lh8/l1;->b()Lh8/m1;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    move-object/from16 v3, p1

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->h0(Lcom/google/firebase/auth/c;Lcom/google/firebase/auth/PhoneAuthProvider$a;Lh8/m1;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 138
    move-result-object v1

    .line 139
    :goto_2
    move-object v15, v1

    .line 140
    goto :goto_3

    .line 141
    .line 142
    :cond_2
    move-object/from16 v3, p1

    .line 143
    goto :goto_2

    .line 144
    .line 145
    :goto_3
    iget-object v12, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 146
    .line 147
    iget-object v13, v0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/google/firebase/auth/c;->c()Landroid/app/Activity;

    .line 151
    move-result-object v16

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/google/firebase/auth/c;->m()Ljava/util/concurrent/Executor;

    .line 155
    move-result-object v17

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/android/gms/internal/firebase-auth-api/zzaij;Lcom/google/firebase/auth/PhoneAuthProvider$a;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V

    .line 159
    return-void

    .line 160
    .line 161
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    const-string v2, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    .line 164
    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    throw v1
.end method

.method public r()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lh8/v0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lh8/v0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Lh8/v0;-><init>(Lx7/g;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lh8/v0;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lh8/v0;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lh8/v0;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    new-instance v1, Lg8/a0;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0}, Lg8/a0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public final declared-synchronized r0(Lh8/v0;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lh8/v0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public s(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zza(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final s0(Landroid/app/Activity;Lg8/h;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lg8/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lg8/h;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->t:Lh8/f1;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, v0, p0, p3}, Lh8/f1;->e(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 25
    .line 26
    const/16 p2, 0x42a1

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-static {v1, p0, p3}, Lh8/k0;->f(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Lg8/h;->b(Landroid/app/Activity;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public t(Lcom/google/firebase/auth/FirebaseAuth$a;)V
    .locals 1
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final t0(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    instance-of p2, v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    check-cast v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 17
    .line 18
    const-string p2, "password"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/firebase/auth/AuthCredential;->getSignInMethod()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    const/4 p2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/firebase/auth/FirebaseAuth;->U(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Z)Lcom/google/android/gms/tasks/Task;

    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->y0(Ljava/lang/String;)Z

    .line 46
    move-result p2

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 51
    .line 52
    const/16 p2, 0x42b0

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_1
    const/4 p2, 0x1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, v3, p2}, Lcom/google/firebase/auth/FirebaseAuth;->U(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Z)Lcom/google/android/gms/tasks/Task;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    .line 72
    :cond_2
    instance-of p2, v3, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 73
    .line 74
    if-eqz p2, :cond_3

    .line 75
    .line 76
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 79
    move-object v7, v3

    .line 80
    .line 81
    check-cast v7, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 82
    .line 83
    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v9, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 86
    .line 87
    .line 88
    invoke-direct {v9, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 89
    move-object v6, p1

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_3
    move-object v2, p1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 98
    .line 99
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    .line 105
    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 106
    .line 107
    .line 108
    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 112
    move-result-object p1

    .line 113
    return-object p1
.end method

.method public u(Lcom/google/firebase/auth/FirebaseAuth$b;)V
    .locals 1
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public final u0(Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 11
    .line 12
    new-instance v2, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public v(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->l()Lcom/google/firebase/auth/FirebaseUser;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseUser;->getIdToken(Z)Lcom/google/android/gms/tasks/Task;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Lg8/b1;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Lg8/b1;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public w(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->x(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final declared-synchronized w0()Lh8/v0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lh8/v0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public x(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->zzb()Lcom/google/firebase/auth/ActionCodeSettings;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(I)V

    .line 21
    .line 22
    new-instance v0, Lg8/x0;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, p1, p2}, Lg8/x0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 30
    .line 31
    const-string v1, "EMAIL_PASSWORD_PROVIDER"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0, p1, p2, v1}, Lh8/n0;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public y(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/ActionCodeSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/ActionCodeSettings;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/google/firebase/auth/ActionCodeSettings;->canHandleCodeInApp()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/ActionCodeSettings;->zza(Ljava/lang/String;)V

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lg8/w0;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p1, p2}, Lg8/w0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 29
    .line 30
    const-string v1, "EMAIL_PASSWORD_PROVIDER"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0, p1, p2, v1}, Lh8/n0;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p2, "You must set canHandleCodeInApp in your ActionCodeSettings to true for Email-Link Sign-in."

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1
.end method

.method public final y0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lg8/e;->f(Ljava/lang/String;)Lg8/e;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lg8/e;->g()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public z(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "chrome-extension://"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->B:Ljava/lang/String;

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    const-string v0, "://"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    move-object v0, p1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "http://"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->B:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .line 59
    const-string v1, "FirebaseAuth"

    .line 60
    const/4 v2, 0x4

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    :cond_2
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->B:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public final z0(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->zza()Lcom/google/firebase/auth/AuthCredential;

    .line 10
    move-result-object v3

    .line 11
    .line 12
    instance-of p2, v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    check-cast v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 17
    .line 18
    const-string p2, "password"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/google/firebase/auth/AuthCredential;->getSignInMethod()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v6

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    .line 44
    move-result-object v7

    .line 45
    const/4 v9, 0x1

    .line 46
    move-object v4, p0

    .line 47
    move-object v8, p1

    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v4 .. v9}, Lcom/google/firebase/auth/FirebaseAuth;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 51
    move-result-object p1

    .line 52
    move-object p2, v4

    .line 53
    return-object p1

    .line 54
    :cond_0
    move-object p2, p0

    .line 55
    move-object v2, p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->y0(Ljava/lang/String;)Z

    .line 67
    move-result p1

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 72
    .line 73
    const/16 v0, 0x42b0

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_1
    const/4 p1, 0x1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v3, v2, p1}, Lcom/google/firebase/auth/FirebaseAuth;->R(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_2
    move-object p2, p0

    .line 93
    move-object v2, p1

    .line 94
    .line 95
    instance-of p1, v3, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    iget-object v0, p2, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 100
    .line 101
    iget-object v1, p2, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 102
    .line 103
    check-cast v3, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 104
    .line 105
    iget-object v4, p2, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 108
    .line 109
    .line 110
    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 114
    move-result-object p1

    .line 115
    return-object p1

    .line 116
    .line 117
    :cond_3
    iget-object v0, p2, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 118
    .line 119
    iget-object v1, p2, Lcom/google/firebase/auth/FirebaseAuth;->a:Lx7/g;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 126
    .line 127
    .line 128
    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzc(Lx7/g;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lh8/e1;)Lcom/google/android/gms/tasks/Task;

    .line 132
    move-result-object p1

    .line 133
    return-object p1
.end method
