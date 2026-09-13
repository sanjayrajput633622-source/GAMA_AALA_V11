.class public final Lcom/google/firebase/auth/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/firebase/auth/FirebaseAuth;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;

.field public d:Lcom/google/firebase/auth/PhoneAuthProvider$a;

.field public e:Ljava/util/concurrent/Executor;

.field public f:Landroid/app/Activity;

.field public g:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:Lcom/google/firebase/auth/MultiFactorSession;

.field public i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

.field public j:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    check-cast p1, Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/auth/c$a;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/auth/c;
    .locals 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    .line 4
    const-string v1, "FirebaseAuth instance cannot be null"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->c:Ljava/lang/Long;

    .line 10
    .line 11
    const-string v1, "You must specify an auto-retrieval timeout; please call #setTimeout()"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->d:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 17
    .line 18
    const-string v1, "You must specify callbacks on your PhoneAuthOptions. Please call #setCallbacks()"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/google/firebase/auth/c$a;->e:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->c:Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    cmp-long v0, v0, v2

    .line 38
    .line 39
    if-ltz v0, :cond_6

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->c:Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 45
    move-result-wide v0

    .line 46
    .line 47
    const-wide/16 v2, 0x78

    .line 48
    .line 49
    cmp-long v0, v0, v2

    .line 50
    .line 51
    if-gtz v0, :cond_6

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->h:Lcom/google/firebase/auth/MultiFactorSession;

    .line 54
    .line 55
    const-string v1, "A phoneMultiFactorInfo must be set for second factor sign-in."

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x1

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->b:Ljava/lang/String;

    .line 62
    .line 63
    const-string v4, "The given phoneNumber is empty. Please set a non-empty phone number with #setPhoneNumber()"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    iget-boolean v0, p0, Lcom/google/firebase/auth/c$a;->j:Z

    .line 69
    xor-int/2addr v0, v3

    .line 70
    .line 71
    const-string v4, "You cannot require sms validation without setting a multi-factor session."

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 75
    .line 76
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 77
    .line 78
    if-nez v0, :cond_0

    .line 79
    move v2, v3

    .line 80
    .line 81
    .line 82
    :cond_0
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_1
    if-eqz v0, :cond_3

    .line 86
    .line 87
    check-cast v0, Lcom/google/firebase/auth/internal/zzam;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzam;->zzd()Z

    .line 91
    move-result v0

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->b:Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 101
    .line 102
    if-nez v0, :cond_2

    .line 103
    move v2, v3

    .line 104
    .line 105
    :cond_2
    const-string v0, "Invalid MultiFactorSession - use the getSession method in MultiFactorResolver to get a valid sign-in session."

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 109
    goto :goto_1

    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    move v0, v3

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    move v0, v2

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    .line 121
    iget-object v0, p0, Lcom/google/firebase/auth/c$a;->b:Ljava/lang/String;

    .line 122
    .line 123
    if-nez v0, :cond_5

    .line 124
    move v2, v3

    .line 125
    .line 126
    :cond_5
    const-string v0, "A phone number must not be set for MFA sign-in. A PhoneMultiFactorInfo should be set instead."

    .line 127
    .line 128
    .line 129
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 130
    .line 131
    :goto_1
    new-instance v3, Lcom/google/firebase/auth/c;

    .line 132
    .line 133
    iget-object v4, p0, Lcom/google/firebase/auth/c$a;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 134
    .line 135
    iget-object v5, p0, Lcom/google/firebase/auth/c$a;->c:Ljava/lang/Long;

    .line 136
    .line 137
    iget-object v6, p0, Lcom/google/firebase/auth/c$a;->d:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 138
    .line 139
    iget-object v7, p0, Lcom/google/firebase/auth/c$a;->e:Ljava/util/concurrent/Executor;

    .line 140
    .line 141
    iget-object v8, p0, Lcom/google/firebase/auth/c$a;->b:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v9, p0, Lcom/google/firebase/auth/c$a;->f:Landroid/app/Activity;

    .line 144
    .line 145
    iget-object v10, p0, Lcom/google/firebase/auth/c$a;->g:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 146
    .line 147
    iget-object v11, p0, Lcom/google/firebase/auth/c$a;->h:Lcom/google/firebase/auth/MultiFactorSession;

    .line 148
    .line 149
    iget-object v12, p0, Lcom/google/firebase/auth/c$a;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 150
    .line 151
    iget-boolean v13, p0, Lcom/google/firebase/auth/c$a;->j:Z

    .line 152
    const/4 v14, 0x0

    .line 153
    .line 154
    .line 155
    invoke-direct/range {v3 .. v14}, Lcom/google/firebase/auth/c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$a;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;ZLg8/k0;)V

    .line 156
    return-object v3

    .line 157
    .line 158
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string v1, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    .line 161
    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    throw v0
.end method

.method public final b(Z)Lcom/google/firebase/auth/c$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/google/firebase/auth/c$a;->j:Z

    .line 3
    return-object p0
.end method

.method public final c(Landroid/app/Activity;)Lcom/google/firebase/auth/c$a;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/c$a;->f:Landroid/app/Activity;

    .line 3
    return-object p0
.end method

.method public final d(Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/c$a;
    .locals 0
    .param p1    # Lcom/google/firebase/auth/PhoneAuthProvider$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/c$a;->d:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 3
    return-object p0
.end method

.method public final e(Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/c$a;
    .locals 0
    .param p1    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/c$a;->g:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 3
    return-object p0
.end method

.method public final f(Lcom/google/firebase/auth/PhoneMultiFactorInfo;)Lcom/google/firebase/auth/c$a;
    .locals 0
    .param p1    # Lcom/google/firebase/auth/PhoneMultiFactorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/c$a;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 3
    return-object p0
.end method

.method public final g(Lcom/google/firebase/auth/MultiFactorSession;)Lcom/google/firebase/auth/c$a;
    .locals 0
    .param p1    # Lcom/google/firebase/auth/MultiFactorSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/c$a;->h:Lcom/google/firebase/auth/MultiFactorSession;

    .line 3
    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/google/firebase/auth/c$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/auth/c$a;->b:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public final i(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/c$a;
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 10
    move-result-wide p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/firebase/auth/c$a;->c:Ljava/lang/Long;

    .line 17
    return-object p0
.end method
