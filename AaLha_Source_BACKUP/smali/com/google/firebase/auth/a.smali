.class public final Lcom/google/firebase/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/auth/ActionCodeSettings;
    .locals 2
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/auth/ActionCodeSettings$a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/auth/ActionCodeSettings;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "init"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/firebase/auth/ActionCodeSettings;->newBuilder()Lcom/google/firebase/auth/ActionCodeSettings$a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "newBuilder(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/auth/ActionCodeSettings$a;->a()Lcom/google/firebase/auth/ActionCodeSettings;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    const-string v0, "build(...)"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    return-object p0
.end method

.method public static final b(Lx7/d;Lx7/g;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .param p0    # Lx7/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lx7/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p0, "app"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lx7/g;)Lcom/google/firebase/auth/FirebaseAuth;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const-string p1, "getInstance(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    return-object p0
.end method

.method public static final c(Lx7/d;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .param p0    # Lx7/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    const-string v0, "getInstance(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-object p0
.end method

.method public static final d(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/auth/AuthCredential;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/auth/b$b;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/auth/AuthCredential;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "providerId"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "init"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/firebase/auth/b;->h(Ljava/lang/String;)Lcom/google/firebase/auth/b$b;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const-string v0, "newCredentialBuilder(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/firebase/auth/b$b;->a()Lcom/google/firebase/auth/AuthCredential;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    const-string p1, "build(...)"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    return-object p0
.end method

.method public static final e(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/auth/b;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/auth/b$a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/auth/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "providerId"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "firebaseAuth"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "init"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Lcom/google/firebase/auth/b;->g(Ljava/lang/String;Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/b$a;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    const-string p1, "newBuilder(...)"

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/auth/b$a;->c()Lcom/google/firebase/auth/b;

    .line 31
    move-result-object p0

    .line 32
    .line 33
    const-string p1, "build(...)"

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    return-object p0
.end method

.method public static final f(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/auth/b;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/auth/b$a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/auth/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "providerId"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "init"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lcom/google/firebase/auth/b;->f(Ljava/lang/String;)Lcom/google/firebase/auth/b$a;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    const-string v0, "newBuilder(...)"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/firebase/auth/b$a;->c()Lcom/google/firebase/auth/b;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    const-string p1, "build(...)"

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    return-object p0
.end method

.method public static final g(Lkotlin/jvm/functions/Function1;)Lcom/google/firebase/auth/UserProfileChangeRequest;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/firebase/auth/UserProfileChangeRequest$a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "init"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lcom/google/firebase/auth/UserProfileChangeRequest$a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/firebase/auth/UserProfileChangeRequest$a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/firebase/auth/UserProfileChangeRequest$a;->a()Lcom/google/firebase/auth/UserProfileChangeRequest;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    const-string v0, "build(...)"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    return-object p0
.end method
