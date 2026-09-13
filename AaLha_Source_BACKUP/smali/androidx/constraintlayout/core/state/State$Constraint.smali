.class public final enum Landroidx/constraintlayout/core/state/State$Constraint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/state/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Constraint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/core/state/State$Constraint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum CENTER_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum CENTER_VERTICALLY:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

.field public static final enum TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 1
    .line 2
    new-instance v0, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 3
    .line 4
    const-string v1, "LEFT_TO_LEFT"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    sput-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 11
    .line 12
    new-instance v1, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 13
    .line 14
    const-string v3, "LEFT_TO_RIGHT"

    .line 15
    const/4 v4, 0x1

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v3, v4}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    sput-object v1, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 21
    .line 22
    new-instance v3, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 23
    .line 24
    const-string v5, "RIGHT_TO_LEFT"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v5, v6}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    sput-object v3, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 31
    .line 32
    new-instance v5, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 33
    .line 34
    const-string v7, "RIGHT_TO_RIGHT"

    .line 35
    const/4 v8, 0x3

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v7, v8}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    sput-object v5, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 41
    .line 42
    new-instance v7, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 43
    .line 44
    const-string v9, "START_TO_START"

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    .line 48
    invoke-direct {v7, v9, v10}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    sput-object v7, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 51
    .line 52
    new-instance v9, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 53
    .line 54
    const-string v11, "START_TO_END"

    .line 55
    const/4 v12, 0x5

    .line 56
    .line 57
    .line 58
    invoke-direct {v9, v11, v12}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    sput-object v9, Landroidx/constraintlayout/core/state/State$Constraint;->START_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 61
    .line 62
    new-instance v11, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 63
    .line 64
    const-string v13, "END_TO_START"

    .line 65
    const/4 v14, 0x6

    .line 66
    .line 67
    .line 68
    invoke-direct {v11, v13, v14}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    sput-object v11, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_START:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 71
    .line 72
    new-instance v13, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 73
    .line 74
    const-string v15, "END_TO_END"

    .line 75
    .line 76
    move/from16 v16, v2

    .line 77
    const/4 v2, 0x7

    .line 78
    .line 79
    .line 80
    invoke-direct {v13, v15, v2}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 81
    .line 82
    sput-object v13, Landroidx/constraintlayout/core/state/State$Constraint;->END_TO_END:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 83
    .line 84
    new-instance v15, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 85
    .line 86
    move/from16 v17, v2

    .line 87
    .line 88
    const-string v2, "TOP_TO_TOP"

    .line 89
    .line 90
    move/from16 v18, v4

    .line 91
    .line 92
    const/16 v4, 0x8

    .line 93
    .line 94
    .line 95
    invoke-direct {v15, v2, v4}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    sput-object v15, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 98
    .line 99
    new-instance v2, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 100
    .line 101
    move/from16 v19, v4

    .line 102
    .line 103
    const-string v4, "TOP_TO_BOTTOM"

    .line 104
    .line 105
    move/from16 v20, v6

    .line 106
    .line 107
    const/16 v6, 0x9

    .line 108
    .line 109
    .line 110
    invoke-direct {v2, v4, v6}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 111
    .line 112
    sput-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 113
    .line 114
    new-instance v4, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 115
    .line 116
    move/from16 v21, v6

    .line 117
    .line 118
    const-string v6, "BOTTOM_TO_TOP"

    .line 119
    .line 120
    move/from16 v22, v8

    .line 121
    .line 122
    const/16 v8, 0xa

    .line 123
    .line 124
    .line 125
    invoke-direct {v4, v6, v8}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 126
    .line 127
    sput-object v4, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 128
    .line 129
    new-instance v6, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 130
    .line 131
    move/from16 v23, v8

    .line 132
    .line 133
    const-string v8, "BOTTOM_TO_BOTTOM"

    .line 134
    .line 135
    move/from16 v24, v10

    .line 136
    .line 137
    const/16 v10, 0xb

    .line 138
    .line 139
    .line 140
    invoke-direct {v6, v8, v10}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 141
    .line 142
    sput-object v6, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 143
    .line 144
    new-instance v8, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 145
    .line 146
    move/from16 v25, v10

    .line 147
    .line 148
    const-string v10, "BASELINE_TO_BASELINE"

    .line 149
    .line 150
    move/from16 v26, v12

    .line 151
    .line 152
    const/16 v12, 0xc

    .line 153
    .line 154
    .line 155
    invoke-direct {v8, v10, v12}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 156
    .line 157
    sput-object v8, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 158
    .line 159
    new-instance v10, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 160
    .line 161
    move/from16 v27, v12

    .line 162
    .line 163
    const-string v12, "BASELINE_TO_TOP"

    .line 164
    .line 165
    move/from16 v28, v14

    .line 166
    .line 167
    const/16 v14, 0xd

    .line 168
    .line 169
    .line 170
    invoke-direct {v10, v12, v14}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 171
    .line 172
    sput-object v10, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 173
    .line 174
    new-instance v12, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 175
    .line 176
    move/from16 v29, v14

    .line 177
    .line 178
    const-string v14, "BASELINE_TO_BOTTOM"

    .line 179
    .line 180
    move-object/from16 v30, v0

    .line 181
    .line 182
    const/16 v0, 0xe

    .line 183
    .line 184
    .line 185
    invoke-direct {v12, v14, v0}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 186
    .line 187
    sput-object v12, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 188
    .line 189
    new-instance v14, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 190
    .line 191
    move/from16 v31, v0

    .line 192
    .line 193
    const-string v0, "CENTER_HORIZONTALLY"

    .line 194
    .line 195
    move-object/from16 v32, v1

    .line 196
    .line 197
    const/16 v1, 0xf

    .line 198
    .line 199
    .line 200
    invoke-direct {v14, v0, v1}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 201
    .line 202
    sput-object v14, Landroidx/constraintlayout/core/state/State$Constraint;->CENTER_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 203
    .line 204
    new-instance v0, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 205
    .line 206
    move/from16 v33, v1

    .line 207
    .line 208
    const-string v1, "CENTER_VERTICALLY"

    .line 209
    .line 210
    move-object/from16 v34, v2

    .line 211
    .line 212
    const/16 v2, 0x10

    .line 213
    .line 214
    .line 215
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 216
    .line 217
    sput-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->CENTER_VERTICALLY:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 218
    .line 219
    new-instance v1, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 220
    .line 221
    move/from16 v35, v2

    .line 222
    .line 223
    const-string v2, "CIRCULAR_CONSTRAINT"

    .line 224
    .line 225
    move-object/from16 v36, v0

    .line 226
    .line 227
    const/16 v0, 0x11

    .line 228
    .line 229
    .line 230
    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/core/state/State$Constraint;-><init>(Ljava/lang/String;I)V

    .line 231
    .line 232
    sput-object v1, Landroidx/constraintlayout/core/state/State$Constraint;->CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

    .line 233
    .line 234
    const/16 v2, 0x12

    .line 235
    .line 236
    new-array v2, v2, [Landroidx/constraintlayout/core/state/State$Constraint;

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
    sput-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->$VALUES:[Landroidx/constraintlayout/core/state/State$Constraint;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/state/State$Constraint;
    .locals 1

    .line 1
    .line 2
    const-class v0, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Landroidx/constraintlayout/core/state/State$Constraint;

    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/state/State$Constraint;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/constraintlayout/core/state/State$Constraint;->$VALUES:[Landroidx/constraintlayout/core/state/State$Constraint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Landroidx/constraintlayout/core/state/State$Constraint;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Landroidx/constraintlayout/core/state/State$Constraint;

    .line 9
    return-object v0
.end method
