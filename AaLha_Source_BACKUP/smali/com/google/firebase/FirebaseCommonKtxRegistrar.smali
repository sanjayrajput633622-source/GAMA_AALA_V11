.class public final Lcom/google/firebase/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/FirebaseKt\n*L\n1#1,82:1\n76#2,6:83\n76#2,6:89\n76#2,6:95\n76#2,6:101\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n*L\n67#1:83,6\n68#1:89,6\n69#1:95,6\n70#1:101,6\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/FirebaseKt\n*L\n1#1,82:1\n76#2,6:83\n76#2,6:89\n76#2,6:95\n76#2,6:101\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n*L\n67#1:83,6\n68#1:89,6\n69#1:95,6\n70#1:101,6\n*E\n"
    }
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


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li8/g<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-class v0, Ld8/a;

    .line 3
    .line 4
    const-class v1, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-static {v2}, Li8/g;->f(Li8/g0;)Li8/g$b;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    const-class v3, Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v3}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sget-object v2, Lcom/google/firebase/FirebaseCommonKtxRegistrar$a;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$a;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Li8/g$b;->f(Li8/l;)Li8/g$b;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Li8/g$b;->d()Li8/g;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    const-string v2, "build(...)"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    const-class v4, Ld8/c;

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v1}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    .line 50
    invoke-static {v5}, Li8/g;->f(Li8/g0;)Li8/g$b;

    .line 51
    move-result-object v5

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v3}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    .line 58
    invoke-static {v4}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v4}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    sget-object v5, Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$b;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Li8/g$b;->f(Li8/l;)Li8/g$b;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Li8/g$b;->d()Li8/g;

    .line 73
    move-result-object v4

    .line 74
    .line 75
    .line 76
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    const-class v5, Ld8/b;

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v1}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    .line 85
    invoke-static {v6}, Li8/g;->f(Li8/g0;)Li8/g$b;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    .line 89
    invoke-static {v5, v3}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    .line 93
    invoke-static {v5}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v5}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    sget-object v6, Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$c;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v6}, Li8/g$b;->f(Li8/l;)Li8/g$b;

    .line 104
    move-result-object v5

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Li8/g$b;->d()Li8/g;

    .line 108
    move-result-object v5

    .line 109
    .line 110
    .line 111
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    const-class v6, Ld8/d;

    .line 114
    .line 115
    .line 116
    invoke-static {v6, v1}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Li8/g;->f(Li8/g0;)Li8/g$b;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    .line 124
    invoke-static {v6, v3}, Li8/g0;->a(Ljava/lang/Class;Ljava/lang/Class;)Li8/g0;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    .line 128
    invoke-static {v3}, Li8/w;->l(Li8/g0;)Li8/w;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3}, Li8/g$b;->b(Li8/w;)Li8/g$b;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    sget-object v3, Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;->a:Lcom/google/firebase/FirebaseCommonKtxRegistrar$d;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v3}, Li8/g$b;->f(Li8/l;)Li8/g$b;

    .line 139
    move-result-object v1

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Li8/g$b;->d()Li8/g;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x4

    .line 148
    .line 149
    new-array v2, v2, [Li8/g;

    .line 150
    const/4 v3, 0x0

    .line 151
    .line 152
    aput-object v0, v2, v3

    .line 153
    const/4 v0, 0x1

    .line 154
    .line 155
    aput-object v4, v2, v0

    .line 156
    const/4 v0, 0x2

    .line 157
    .line 158
    aput-object v5, v2, v0

    .line 159
    const/4 v0, 0x3

    .line 160
    .line 161
    aput-object v1, v2, v0

    .line 162
    .line 163
    .line 164
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 165
    move-result-object v0

    .line 166
    return-object v0
.end method
