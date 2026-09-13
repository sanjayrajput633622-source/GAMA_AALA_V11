.class public final enum Lcom/alibaba/fastjson2/PropertyNamingStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/PropertyNamingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum CamelCase1x:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum KebabCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum LowerCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum LowerCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum LowerCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum LowerCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum PascalCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum SnakeCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithSpaces:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCamelCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field public static final enum UpperCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 3
    .line 4
    const-string v1, "CamelCase"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 11
    .line 12
    new-instance v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 13
    .line 14
    const-string v3, "CamelCase1x"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase1x:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 21
    .line 22
    new-instance v3, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 23
    .line 24
    const-string v5, "PascalCase"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 31
    .line 32
    new-instance v5, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 33
    .line 34
    const-string v7, "SnakeCase"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 41
    .line 42
    new-instance v7, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 43
    .line 44
    const-string v9, "UpperCase"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 51
    .line 52
    new-instance v9, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 53
    .line 54
    const-string v11, "UpperCamelCaseWithSpaces"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v9, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithSpaces:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 61
    .line 62
    new-instance v11, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 63
    .line 64
    const-string v13, "UpperCamelCaseWithUnderScores"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v11, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 71
    .line 72
    new-instance v13, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 73
    .line 74
    const-string v15, "UpperCamelCaseWithDashes"

    .line 75
    .line 76
    move/from16 v16, v2

    .line 77
    const/4 v2, 0x7

    .line 78
    .line 79
    .line 80
    invoke-direct {v13, v15, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    sput-object v13, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 83
    .line 84
    new-instance v15, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 85
    .line 86
    move/from16 v17, v2

    .line 87
    .line 88
    const-string v2, "UpperCamelCaseWithDots"

    .line 89
    .line 90
    move/from16 v18, v4

    .line 91
    .line 92
    const/16 v4, 0x8

    .line 93
    .line 94
    .line 95
    invoke-direct {v15, v2, v4}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    sput-object v15, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCamelCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 98
    .line 99
    new-instance v2, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 100
    .line 101
    move/from16 v19, v4

    .line 102
    .line 103
    const-string v4, "KebabCase"

    .line 104
    .line 105
    move/from16 v20, v6

    .line 106
    .line 107
    const/16 v6, 0x9

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, v4, v6}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 111
    .line 112
    sput-object v2, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 113
    .line 114
    new-instance v4, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 115
    .line 116
    move/from16 v21, v6

    .line 117
    .line 118
    const-string v6, "UpperCaseWithUnderScores"

    .line 119
    .line 120
    move/from16 v22, v8

    .line 121
    .line 122
    const/16 v8, 0xa

    .line 123
    .line 124
    .line 125
    invoke-direct {v4, v6, v8}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 126
    .line 127
    sput-object v4, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 128
    .line 129
    new-instance v6, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 130
    .line 131
    move/from16 v23, v8

    .line 132
    .line 133
    const-string v8, "UpperCaseWithDashes"

    .line 134
    .line 135
    move/from16 v24, v10

    .line 136
    .line 137
    const/16 v10, 0xb

    .line 138
    .line 139
    .line 140
    invoke-direct {v6, v8, v10}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 141
    .line 142
    sput-object v6, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 143
    .line 144
    new-instance v8, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 145
    .line 146
    move/from16 v25, v10

    .line 147
    .line 148
    const-string v10, "UpperCaseWithDots"

    .line 149
    .line 150
    move/from16 v26, v12

    .line 151
    .line 152
    const/16 v12, 0xc

    .line 153
    .line 154
    .line 155
    invoke-direct {v8, v10, v12}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    sput-object v8, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 158
    .line 159
    new-instance v10, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 160
    .line 161
    move/from16 v27, v12

    .line 162
    .line 163
    const-string v12, "LowerCase"

    .line 164
    .line 165
    move/from16 v28, v14

    .line 166
    .line 167
    const/16 v14, 0xd

    .line 168
    .line 169
    .line 170
    invoke-direct {v10, v12, v14}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    sput-object v10, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 173
    .line 174
    new-instance v12, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 175
    .line 176
    move/from16 v29, v14

    .line 177
    .line 178
    const-string v14, "LowerCaseWithUnderScores"

    .line 179
    .line 180
    move-object/from16 v30, v0

    .line 181
    .line 182
    const/16 v0, 0xe

    .line 183
    .line 184
    .line 185
    invoke-direct {v12, v14, v0}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 186
    .line 187
    sput-object v12, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCaseWithUnderScores:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 188
    .line 189
    new-instance v14, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 190
    .line 191
    move/from16 v31, v0

    .line 192
    .line 193
    const-string v0, "LowerCaseWithDashes"

    .line 194
    .line 195
    move-object/from16 v32, v1

    .line 196
    .line 197
    const/16 v1, 0xf

    .line 198
    .line 199
    .line 200
    invoke-direct {v14, v0, v1}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 201
    .line 202
    sput-object v14, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCaseWithDashes:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 203
    .line 204
    new-instance v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 205
    .line 206
    move/from16 v33, v1

    .line 207
    .line 208
    const-string v1, "LowerCaseWithDots"

    .line 209
    .line 210
    move-object/from16 v34, v2

    .line 211
    .line 212
    const/16 v2, 0x10

    .line 213
    .line 214
    .line 215
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 216
    .line 217
    sput-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCaseWithDots:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 218
    .line 219
    new-instance v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 220
    .line 221
    move/from16 v35, v2

    .line 222
    .line 223
    const-string v2, "NeverUseThisValueExceptDefaultValue"

    .line 224
    .line 225
    move-object/from16 v36, v0

    .line 226
    .line 227
    const/16 v0, 0x11

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    .line 231
    .line 232
    sput-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 233
    .line 234
    const/16 v2, 0x12

    .line 235
    .line 236
    new-array v2, v2, [Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 237
    .line 238
    aput-object v30, v2, v16

    .line 239
    .line 240
    aput-object v32, v2, v18

    .line 241
    .line 242
    aput-object v3, v2, v20

    .line 243
    .line 244
    aput-object v5, v2, v22

    .line 245
    .line 246
    aput-object v7, v2, v24

    .line 247
    .line 248
    aput-object v9, v2, v26

    .line 249
    .line 250
    aput-object v11, v2, v28

    .line 251
    .line 252
    aput-object v13, v2, v17

    .line 253
    .line 254
    aput-object v15, v2, v19

    .line 255
    .line 256
    aput-object v34, v2, v21

    .line 257
    .line 258
    aput-object v4, v2, v23

    .line 259
    .line 260
    aput-object v6, v2, v25

    .line 261
    .line 262
    aput-object v8, v2, v27

    .line 263
    .line 264
    aput-object v10, v2, v29

    .line 265
    .line 266
    aput-object v12, v2, v31

    .line 267
    .line 268
    aput-object v14, v2, v33

    .line 269
    .line 270
    aput-object v36, v2, v35

    .line 271
    .line 272
    aput-object v1, v2, v0

    .line 273
    .line 274
    sput-object v2, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 275
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/alibaba/fastjson2/PropertyNamingStrategy;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_9

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, -0x1

    .line 18
    .line 19
    .line 20
    sparse-switch v1, :sswitch_data_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :sswitch_0
    const-string v1, "upper"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x5

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :sswitch_1
    const-string v1, "lower"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v3, 0x4

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :sswitch_2
    const-string v1, "camel"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 v3, 0x3

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :sswitch_3
    const-string v1, "Upper"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    .line 62
    if-nez v1, :cond_4

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/4 v3, 0x2

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :sswitch_4
    const-string v1, "Lower"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-nez v1, :cond_5

    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const/4 v3, 0x1

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :sswitch_5
    const-string v1, "Camel"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 83
    .line 84
    if-nez v1, :cond_6

    .line 85
    goto :goto_0

    .line 86
    :cond_6
    move v3, v2

    .line 87
    .line 88
    .line 89
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 93
    move-result-object v1

    .line 94
    array-length v3, v1

    .line 95
    .line 96
    :goto_1
    if-ge v2, v3, :cond_8

    .line 97
    .line 98
    aget-object v4, v1, v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v5

    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    return-object v4

    .line 110
    .line 111
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_8
    return-object v0

    .line 114
    .line 115
    :pswitch_0
    sget-object p0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->UpperCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 116
    return-object p0

    .line 117
    .line 118
    :pswitch_1
    sget-object p0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->LowerCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 119
    return-object p0

    .line 120
    .line 121
    :pswitch_2
    sget-object p0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 122
    return-object p0

    .line 123
    :cond_9
    :goto_2
    return-object v0

    .line 124
    nop

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    :sswitch_data_0
    .sparse-switch
        0x3dde496 -> :sswitch_5
        0x4633ae1 -> :sswitch_4
        0x4e26882 -> :sswitch_3
        0x5a0d4b6 -> :sswitch_2
        0x6262b01 -> :sswitch_1
        0x6a558a2 -> :sswitch_0
    .end sparse-switch

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static snakeToCamel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    const/16 v0, 0x5f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    goto :goto_3

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    move v3, v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    move-result v4

    .line 20
    .line 21
    if-ge v2, v4, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v4

    .line 26
    .line 27
    if-ne v4, v0, :cond_1

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    move-result v2

    .line 37
    sub-int/2addr v2, v3

    .line 38
    .line 39
    new-array v2, v2, [C

    .line 40
    move v3, v1

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    move-result v4

    .line 45
    .line 46
    if-ge v1, v4, :cond_5

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 50
    move-result v4

    .line 51
    .line 52
    if-ne v4, v0, :cond_3

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_3
    if-lez v1, :cond_4

    .line 56
    .line 57
    add-int/lit8 v5, v1, -0x1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 61
    move-result v5

    .line 62
    .line 63
    if-ne v5, v0, :cond_4

    .line 64
    .line 65
    const/16 v5, 0x61

    .line 66
    .line 67
    if-lt v4, v5, :cond_4

    .line 68
    .line 69
    const/16 v5, 0x7a

    .line 70
    .line 71
    if-gt v4, v5, :cond_4

    .line 72
    .line 73
    add-int/lit8 v4, v4, -0x20

    .line 74
    int-to-char v4, v4

    .line 75
    .line 76
    :cond_4
    add-int/lit8 v5, v3, 0x1

    .line 77
    .line 78
    aput-char v4, v2, v3

    .line 79
    move v3, v5

    .line 80
    .line 81
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_5
    new-instance p0, Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    .line 88
    :cond_6
    :goto_3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/PropertyNamingStrategy;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/PropertyNamingStrategy;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/PropertyNamingStrategy;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 9
    return-object v0
.end method


# virtual methods
.method public fieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
