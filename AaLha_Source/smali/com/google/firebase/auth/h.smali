.class public final Lcom/google/firebase/auth/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lh8/m1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/firebase/auth/c;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/c;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p2, p0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/firebase/auth/h;->b:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lh8/m1;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lh8/z;->i(Ljava/lang/Exception;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    check-cast v1, Lcom/google/firebase/FirebaseException;

    .line 28
    .line 29
    iget-object v2, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 30
    .line 31
    iget-object v3, v0, Lcom/google/firebase/auth/h;->b:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2, v3}, Lcom/google/firebase/auth/FirebaseAuth;->k0(Lcom/google/firebase/FirebaseException;Lcom/google/firebase/auth/c;Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    move-object v12, v1

    .line 38
    move-object v13, v12

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    check-cast v1, Lh8/m1;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lh8/m1;->d()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Lh8/m1;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Lh8/m1;->b()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    check-cast v3, Lh8/m1;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lh8/m1;->c()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    move-object v12, v1

    .line 71
    move-object v13, v2

    .line 72
    move-object v1, v3

    .line 73
    .line 74
    :goto_0
    iget-object v2, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/google/firebase/auth/c;->k()Ljava/lang/Long;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 82
    move-result-wide v8

    .line 83
    .line 84
    iget-object v2, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 85
    .line 86
    iget-object v3, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/google/firebase/auth/c;->l()Ljava/lang/String;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    iget-object v4, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/google/firebase/auth/c;->i()Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 96
    move-result-object v4

    .line 97
    .line 98
    .line 99
    invoke-static {v2, v3, v4}, Lcom/google/firebase/auth/FirebaseAuth;->g0(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 100
    move-result-object v2

    .line 101
    .line 102
    .line 103
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v3

    .line 105
    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    iget-object v3, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 109
    .line 110
    iget-object v4, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 114
    move-result-object v5

    .line 115
    .line 116
    check-cast v5, Lh8/m1;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4, v2, v5}, Lcom/google/firebase/auth/FirebaseAuth;->h0(Lcom/google/firebase/auth/c;Lcom/google/firebase/auth/PhoneAuthProvider$a;Lh8/m1;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 120
    move-result-object v2

    .line 121
    .line 122
    :cond_3
    move-object/from16 v16, v2

    .line 123
    .line 124
    iget-object v2, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/google/firebase/auth/c;->g()Lcom/google/firebase/auth/MultiFactorSession;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v2

    .line 133
    move-object v5, v2

    .line 134
    .line 135
    check-cast v5, Lcom/google/firebase/auth/internal/zzam;

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzac;->zzc(Ljava/lang/String;)Z

    .line 139
    move-result v2

    .line 140
    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    iget-object v2, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->w0()Lh8/v0;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    iget-object v2, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/google/firebase/auth/FirebaseAuth;->w0()Lh8/v0;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    const-string v3, "PHONE_PROVIDER"

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v3}, Lh8/v0;->d(Ljava/lang/String;)Z

    .line 161
    move-result v2

    .line 162
    .line 163
    if-eqz v2, :cond_4

    .line 164
    .line 165
    const-string v1, "NO_RECAPTCHA"

    .line 166
    :cond_4
    move-object v14, v1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Lcom/google/firebase/auth/internal/zzam;->zzd()Z

    .line 170
    move-result v1

    .line 171
    const/4 v2, 0x0

    .line 172
    const/4 v3, 0x1

    .line 173
    .line 174
    if-eqz v1, :cond_6

    .line 175
    .line 176
    iget-object v1, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 177
    .line 178
    iget-object v4, v1, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 179
    .line 180
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->l()Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    move-result-object v1

    .line 189
    move-object v6, v1

    .line 190
    .line 191
    check-cast v6, Ljava/lang/String;

    .line 192
    .line 193
    iget-object v1, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->E0(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;

    .line 197
    move-result-object v7

    .line 198
    .line 199
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->h()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    if-eqz v1, :cond_5

    .line 206
    move v10, v3

    .line 207
    goto :goto_1

    .line 208
    :cond_5
    move v10, v2

    .line 209
    .line 210
    :goto_1
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->o()Z

    .line 214
    move-result v11

    .line 215
    .line 216
    iget-object v1, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->L0()Z

    .line 220
    move-result v15

    .line 221
    .line 222
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->m()Ljava/util/concurrent/Executor;

    .line 226
    move-result-object v17

    .line 227
    .line 228
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->c()Landroid/app/Activity;

    .line 232
    move-result-object v18

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {v4 .. v18}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/auth/internal/zzam;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/PhoneAuthProvider$a;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    .line 236
    return-void

    .line 237
    .line 238
    :cond_6
    iget-object v1, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 239
    .line 240
    iget-object v4, v1, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 241
    .line 242
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->j()Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 246
    move-result-object v1

    .line 247
    .line 248
    .line 249
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-result-object v1

    .line 251
    move-object v6, v1

    .line 252
    .line 253
    check-cast v6, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 254
    .line 255
    iget-object v1, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 256
    .line 257
    .line 258
    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->E0(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;

    .line 259
    move-result-object v7

    .line 260
    .line 261
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->h()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 265
    move-result-object v1

    .line 266
    .line 267
    if-eqz v1, :cond_7

    .line 268
    move v10, v3

    .line 269
    goto :goto_2

    .line 270
    :cond_7
    move v10, v2

    .line 271
    .line 272
    :goto_2
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->o()Z

    .line 276
    move-result v11

    .line 277
    .line 278
    iget-object v1, v0, Lcom/google/firebase/auth/h;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->L0()Z

    .line 282
    move-result v15

    .line 283
    .line 284
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->m()Ljava/util/concurrent/Executor;

    .line 288
    move-result-object v17

    .line 289
    .line 290
    iget-object v1, v0, Lcom/google/firebase/auth/h;->a:Lcom/google/firebase/auth/c;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Lcom/google/firebase/auth/c;->c()Landroid/app/Activity;

    .line 294
    move-result-object v18

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {v4 .. v18}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/auth/internal/zzam;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/firebase/auth/PhoneAuthProvider$a;Ljava/util/concurrent/Executor;Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    .line 298
    return-void
.end method
