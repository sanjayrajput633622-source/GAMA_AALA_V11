.class public Lcom/google/firebase/auth/FirebaseAuthRegistrar;
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic lambda$getComponents$0(Li8/g0;Li8/g0;Li8/g0;Li8/g0;Li8/g0;Li8/i;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 10

    .line 1
    .line 2
    const-class v0, Lx7/g;

    .line 3
    .line 4
    .line 5
    invoke-interface {p5, v0}, Li8/i;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    .line 9
    check-cast v2, Lx7/g;

    .line 10
    .line 11
    const-class v0, Lf8/c;

    .line 12
    .line 13
    .line 14
    invoke-interface {p5, v0}, Li8/i;->e(Ljava/lang/Class;)Lk9/b;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    const-class v0, Li9/i;

    .line 18
    .line 19
    .line 20
    invoke-interface {p5, v0}, Li8/i;->e(Ljava/lang/Class;)Lk9/b;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    new-instance v1, Lh8/g;

    .line 24
    .line 25
    .line 26
    invoke-interface {p5, p0}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    move-object v5, p0

    .line 29
    .line 30
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    .line 33
    invoke-interface {p5, p1}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    move-object v6, p0

    .line 36
    .line 37
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    .line 40
    invoke-interface {p5, p2}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    move-object v7, p0

    .line 43
    .line 44
    check-cast v7, Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    .line 47
    invoke-interface {p5, p3}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    move-object v8, p0

    .line 50
    .line 51
    check-cast v8, Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    .line 53
    .line 54
    invoke-interface {p5, p4}, Li8/i;->f(Li8/g0;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    move-object v9, p0

    .line 57
    .line 58
    check-cast v9, Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v1 .. v9}, Lh8/g;-><init>(Lx7/g;Lk9/b;Lk9/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V

    .line 62
    return-object v1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 9
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
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
    const-class v0, Ld8/a;

    .line 3
    .line 4
    const-class v1, Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 8
    move-result-object v3

    .line 9
    .line 10
    const-class v0, Ld8/b;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    const-class v0, Ld8/c;

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    const-class v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 26
    move-result-object v6

    .line 27
    .line 28
    const-class v0, Ld8/d;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 32
    move-result-object v7

    .line 33
    const/4 v0, 0x1

    .line 34
    .line 35
    new-array v1, v0, [Ljava/lang/Class;

    .line 36
    const/4 v8, 0x0

    .line 37
    .line 38
    const-class v2, Lh8/b;

    .line 39
    .line 40
    aput-object v2, v1, v8

    .line 41
    .line 42
    const-class v2, Lcom/google/firebase/auth/FirebaseAuth;

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v1}, Li8/g;->i(Ljava/lang/Class;[Ljava/lang/Class;)Li8/g$b;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    const-class v2, Lx7/g;

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, Li8/w;->m(Ljava/lang/Class;)Li8/w;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    const-class v2, Li9/i;

    .line 59
    .line 60
    .line 61
    invoke-static {v2}, Li8/w;->o(Ljava/lang/Class;)Li8/w;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-static {v3}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-static {v5}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 86
    move-result-object v2

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-static {v6}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    .line 101
    invoke-static {v7}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    const-class v2, Lf8/c;

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Li8/w;->k(Ljava/lang/Class;)Li8/w;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 116
    move-result-object v1

    .line 117
    .line 118
    new-instance v2, Lg8/b0;

    .line 119
    .line 120
    .line 121
    invoke-direct/range {v2 .. v7}, Lg8/b0;-><init>(Li8/g0;Li8/g0;Li8/g0;Li8/g0;Li8/g0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Li8/g$b;->f(Li8/l;)Li8/g$b;

    .line 125
    move-result-object v1

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Li8/g$b;->d()Li8/g;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    .line 132
    invoke-static {}, Li9/h;->a()Li8/g;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    const-string v3, "fire-auth"

    .line 136
    .line 137
    const-string v4, "24.0.1"

    .line 138
    .line 139
    .line 140
    invoke-static {v3, v4}, Lw9/h;->b(Ljava/lang/String;Ljava/lang/String;)Li8/g;

    .line 141
    move-result-object v3

    .line 142
    const/4 v4, 0x3

    .line 143
    .line 144
    new-array v4, v4, [Li8/g;

    .line 145
    .line 146
    aput-object v1, v4, v8

    .line 147
    .line 148
    aput-object v2, v4, v0

    .line 149
    const/4 v0, 0x2

    .line 150
    .line 151
    aput-object v3, v4, v0

    .line 152
    .line 153
    .line 154
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 155
    move-result-object v0

    .line 156
    return-object v0
.end method
