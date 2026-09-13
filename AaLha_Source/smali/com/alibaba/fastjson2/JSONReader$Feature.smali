.class public final enum Lcom/alibaba/fastjson2/JSONReader$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/JSONReader$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum DisableReferenceDetect:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum DisableSingleQuote:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum DisableStringArrayUnwrapping:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum NonErrorOnNumberOverflow:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum NonStringKeyAsString:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum NullOnError:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseBigIntegerForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseDoubleForDecimals:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseLongForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

.field public static final enum UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;


# instance fields
.field public final mask:J


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3
    .line 4
    const-wide/16 v1, 0x1

    .line 5
    .line 6
    const-string v3, "FieldBased"

    .line 7
    const/4 v4, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 11
    .line 12
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 13
    .line 14
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 15
    .line 16
    const-wide/16 v2, 0x2

    .line 17
    .line 18
    const-string v5, "IgnoreNoneSerializable"

    .line 19
    const/4 v6, 0x1

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v5, v6, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 23
    .line 24
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 25
    .line 26
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 27
    .line 28
    const-wide/16 v7, 0x4

    .line 29
    .line 30
    const-string v3, "ErrorOnNoneSerializable"

    .line 31
    const/4 v5, 0x2

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3, v5, v7, v8}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 35
    .line 36
    sput-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 37
    .line 38
    new-instance v3, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 39
    .line 40
    const-wide/16 v7, 0x8

    .line 41
    .line 42
    const-string v9, "SupportArrayToBean"

    .line 43
    const/4 v10, 0x3

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v9, v10, v7, v8}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 47
    .line 48
    sput-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 49
    .line 50
    new-instance v7, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 51
    .line 52
    const-wide/16 v8, 0x10

    .line 53
    .line 54
    const-string v11, "InitStringFieldAsEmpty"

    .line 55
    const/4 v12, 0x4

    .line 56
    .line 57
    .line 58
    invoke-direct {v7, v11, v12, v8, v9}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 59
    .line 60
    sput-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 61
    .line 62
    new-instance v8, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 63
    .line 64
    const-wide/16 v13, 0x20

    .line 65
    .line 66
    const-string v9, "SupportAutoType"

    .line 67
    const/4 v11, 0x5

    .line 68
    .line 69
    .line 70
    invoke-direct {v8, v9, v11, v13, v14}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 71
    .line 72
    sput-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 73
    .line 74
    new-instance v9, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 75
    .line 76
    const-wide/16 v13, 0x40

    .line 77
    .line 78
    const-string v15, "SupportSmartMatch"

    .line 79
    .line 80
    move/from16 v16, v4

    .line 81
    const/4 v4, 0x6

    .line 82
    .line 83
    .line 84
    invoke-direct {v9, v15, v4, v13, v14}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 85
    .line 86
    sput-object v9, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 87
    .line 88
    new-instance v13, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 89
    .line 90
    const-wide/16 v14, 0x80

    .line 91
    .line 92
    move/from16 v17, v4

    .line 93
    .line 94
    const-string v4, "UseNativeObject"

    .line 95
    .line 96
    move/from16 v18, v5

    .line 97
    const/4 v5, 0x7

    .line 98
    .line 99
    .line 100
    invoke-direct {v13, v4, v5, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 101
    .line 102
    sput-object v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 103
    .line 104
    new-instance v4, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 105
    .line 106
    const-wide/16 v14, 0x100

    .line 107
    .line 108
    move/from16 v19, v5

    .line 109
    .line 110
    const-string v5, "SupportClassForName"

    .line 111
    .line 112
    move/from16 v20, v6

    .line 113
    .line 114
    const/16 v6, 0x8

    .line 115
    .line 116
    .line 117
    invoke-direct {v4, v5, v6, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 118
    .line 119
    sput-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 120
    .line 121
    new-instance v5, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 122
    .line 123
    const-wide/16 v14, 0x200

    .line 124
    .line 125
    move/from16 v21, v6

    .line 126
    .line 127
    const-string v6, "IgnoreSetNullValue"

    .line 128
    .line 129
    move/from16 v22, v10

    .line 130
    .line 131
    const/16 v10, 0x9

    .line 132
    .line 133
    .line 134
    invoke-direct {v5, v6, v10, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 135
    .line 136
    sput-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 137
    .line 138
    new-instance v6, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 139
    .line 140
    const-wide/16 v14, 0x400

    .line 141
    .line 142
    move/from16 v23, v10

    .line 143
    .line 144
    const-string v10, "UseDefaultConstructorAsPossible"

    .line 145
    .line 146
    move/from16 v24, v11

    .line 147
    .line 148
    const/16 v11, 0xa

    .line 149
    .line 150
    .line 151
    invoke-direct {v6, v10, v11, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 152
    .line 153
    sput-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 154
    .line 155
    new-instance v10, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 156
    .line 157
    const-wide/16 v14, 0x800

    .line 158
    .line 159
    move/from16 v25, v11

    .line 160
    .line 161
    const-string v11, "UseBigDecimalForFloats"

    .line 162
    .line 163
    move/from16 v26, v12

    .line 164
    .line 165
    const/16 v12, 0xb

    .line 166
    .line 167
    .line 168
    invoke-direct {v10, v11, v12, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 169
    .line 170
    sput-object v10, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 171
    .line 172
    new-instance v11, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 173
    .line 174
    const-wide/16 v14, 0x1000

    .line 175
    .line 176
    move/from16 v27, v12

    .line 177
    .line 178
    const-string v12, "UseBigDecimalForDoubles"

    .line 179
    .line 180
    move-object/from16 v28, v0

    .line 181
    .line 182
    const/16 v0, 0xc

    .line 183
    .line 184
    .line 185
    invoke-direct {v11, v12, v0, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 186
    .line 187
    sput-object v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 188
    .line 189
    new-instance v12, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 190
    .line 191
    const-wide/16 v14, 0x2000

    .line 192
    .line 193
    move/from16 v29, v0

    .line 194
    .line 195
    const-string v0, "ErrorOnEnumNotMatch"

    .line 196
    .line 197
    move-object/from16 v30, v1

    .line 198
    .line 199
    const/16 v1, 0xd

    .line 200
    .line 201
    .line 202
    invoke-direct {v12, v0, v1, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 203
    .line 204
    sput-object v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 205
    .line 206
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 207
    .line 208
    const-wide/16 v14, 0x4000

    .line 209
    .line 210
    move/from16 v31, v1

    .line 211
    .line 212
    const-string v1, "TrimString"

    .line 213
    .line 214
    move-object/from16 v32, v2

    .line 215
    .line 216
    const/16 v2, 0xe

    .line 217
    .line 218
    .line 219
    invoke-direct {v0, v1, v2, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 220
    .line 221
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 222
    .line 223
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 224
    .line 225
    .line 226
    const-wide/32 v14, 0x8000

    .line 227
    .line 228
    move/from16 v33, v2

    .line 229
    .line 230
    const-string v2, "ErrorOnNotSupportAutoType"

    .line 231
    .line 232
    move-object/from16 v34, v0

    .line 233
    .line 234
    const/16 v0, 0xf

    .line 235
    .line 236
    .line 237
    invoke-direct {v1, v2, v0, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 238
    .line 239
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 240
    .line 241
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 242
    .line 243
    .line 244
    const-wide/32 v14, 0x10000

    .line 245
    .line 246
    move/from16 v35, v0

    .line 247
    .line 248
    const-string v0, "DuplicateKeyValueAsArray"

    .line 249
    .line 250
    move-object/from16 v36, v1

    .line 251
    .line 252
    const/16 v1, 0x10

    .line 253
    .line 254
    .line 255
    invoke-direct {v2, v0, v1, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 256
    .line 257
    sput-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 258
    .line 259
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 260
    .line 261
    .line 262
    const-wide/32 v14, 0x20000

    .line 263
    .line 264
    move/from16 v37, v1

    .line 265
    .line 266
    const-string v1, "AllowUnQuotedFieldNames"

    .line 267
    .line 268
    move-object/from16 v38, v2

    .line 269
    .line 270
    const/16 v2, 0x11

    .line 271
    .line 272
    .line 273
    invoke-direct {v0, v1, v2, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 274
    .line 275
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 276
    .line 277
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 278
    .line 279
    .line 280
    const-wide/32 v14, 0x40000

    .line 281
    .line 282
    move/from16 v39, v2

    .line 283
    .line 284
    const-string v2, "NonStringKeyAsString"

    .line 285
    .line 286
    move-object/from16 v40, v0

    .line 287
    .line 288
    const/16 v0, 0x12

    .line 289
    .line 290
    .line 291
    invoke-direct {v1, v2, v0, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 292
    .line 293
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 294
    .line 295
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 296
    .line 297
    .line 298
    const-wide/32 v14, 0x80000

    .line 299
    .line 300
    move/from16 v41, v0

    .line 301
    .line 302
    const-string v0, "Base64StringAsByteArray"

    .line 303
    .line 304
    move-object/from16 v42, v1

    .line 305
    .line 306
    const/16 v1, 0x13

    .line 307
    .line 308
    .line 309
    invoke-direct {v2, v0, v1, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 310
    .line 311
    sput-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 312
    .line 313
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 314
    .line 315
    .line 316
    const-wide/32 v14, 0x100000

    .line 317
    .line 318
    move/from16 v43, v1

    .line 319
    .line 320
    const-string v1, "IgnoreCheckClose"

    .line 321
    .line 322
    move-object/from16 v44, v2

    .line 323
    .line 324
    const/16 v2, 0x14

    .line 325
    .line 326
    .line 327
    invoke-direct {v0, v1, v2, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 328
    .line 329
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 330
    .line 331
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 332
    .line 333
    .line 334
    const-wide/32 v14, 0x200000

    .line 335
    .line 336
    move/from16 v45, v2

    .line 337
    .line 338
    const-string v2, "ErrorOnNullForPrimitives"

    .line 339
    .line 340
    move-object/from16 v46, v0

    .line 341
    .line 342
    const/16 v0, 0x15

    .line 343
    .line 344
    .line 345
    invoke-direct {v1, v2, v0, v14, v15}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 346
    .line 347
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 348
    .line 349
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 350
    .line 351
    const/16 v14, 0x16

    .line 352
    .line 353
    move/from16 v47, v0

    .line 354
    move-object v15, v1

    .line 355
    .line 356
    .line 357
    const-wide/32 v0, 0x400000

    .line 358
    .line 359
    move-object/from16 v48, v3

    .line 360
    .line 361
    const-string v3, "NullOnError"

    .line 362
    .line 363
    .line 364
    invoke-direct {v2, v3, v14, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 365
    .line 366
    sput-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->NullOnError:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 367
    .line 368
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 369
    .line 370
    const/16 v1, 0x17

    .line 371
    move-object v14, v2

    .line 372
    .line 373
    .line 374
    const-wide/32 v2, 0x800000

    .line 375
    .line 376
    move-object/from16 v49, v4

    .line 377
    .line 378
    const-string v4, "IgnoreAutoTypeNotMatch"

    .line 379
    .line 380
    .line 381
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 382
    .line 383
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 384
    .line 385
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 386
    .line 387
    const/16 v2, 0x18

    .line 388
    .line 389
    .line 390
    const-wide/32 v3, 0x1000000

    .line 391
    .line 392
    move-object/from16 v50, v0

    .line 393
    .line 394
    const-string v0, "NonZeroNumberCastToBooleanAsTrue"

    .line 395
    .line 396
    .line 397
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 398
    .line 399
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 400
    .line 401
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 402
    .line 403
    const/16 v2, 0x19

    .line 404
    .line 405
    .line 406
    const-wide/32 v3, 0x2000000

    .line 407
    .line 408
    move-object/from16 v51, v1

    .line 409
    .line 410
    const-string v1, "IgnoreNullPropertyValue"

    .line 411
    .line 412
    .line 413
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 414
    .line 415
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 416
    .line 417
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 418
    .line 419
    const/16 v2, 0x1a

    .line 420
    .line 421
    .line 422
    const-wide/32 v3, 0x4000000

    .line 423
    .line 424
    move-object/from16 v52, v0

    .line 425
    .line 426
    const-string v0, "ErrorOnUnknownProperties"

    .line 427
    .line 428
    .line 429
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 430
    .line 431
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 432
    .line 433
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 434
    .line 435
    const/16 v2, 0x1b

    .line 436
    .line 437
    .line 438
    const-wide/32 v3, 0x8000000

    .line 439
    .line 440
    move-object/from16 v53, v1

    .line 441
    .line 442
    const-string v1, "EmptyStringAsNull"

    .line 443
    .line 444
    .line 445
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 446
    .line 447
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 448
    .line 449
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 450
    .line 451
    const/16 v2, 0x1c

    .line 452
    .line 453
    .line 454
    const-wide/32 v3, 0x10000000

    .line 455
    .line 456
    move-object/from16 v54, v0

    .line 457
    .line 458
    const-string v0, "NonErrorOnNumberOverflow"

    .line 459
    .line 460
    .line 461
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 462
    .line 463
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonErrorOnNumberOverflow:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 464
    .line 465
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 466
    .line 467
    const/16 v2, 0x1d

    .line 468
    .line 469
    .line 470
    const-wide/32 v3, 0x20000000

    .line 471
    .line 472
    move-object/from16 v55, v1

    .line 473
    .line 474
    const-string v1, "UseBigIntegerForInts"

    .line 475
    .line 476
    .line 477
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 478
    .line 479
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigIntegerForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 480
    .line 481
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 482
    .line 483
    const/16 v2, 0x1e

    .line 484
    .line 485
    .line 486
    const-wide/32 v3, 0x40000000

    .line 487
    .line 488
    move-object/from16 v56, v0

    .line 489
    .line 490
    const-string v0, "UseLongForInts"

    .line 491
    .line 492
    .line 493
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 494
    .line 495
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseLongForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 496
    .line 497
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 498
    .line 499
    const/16 v2, 0x1f

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    const-wide v3, 0x80000000L

    .line 505
    .line 506
    move-object/from16 v57, v1

    .line 507
    .line 508
    const-string v1, "DisableSingleQuote"

    .line 509
    .line 510
    .line 511
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 512
    .line 513
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->DisableSingleQuote:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 514
    .line 515
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 516
    .line 517
    const/16 v2, 0x20

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    const-wide v3, 0x100000000L

    .line 523
    .line 524
    move-object/from16 v58, v0

    .line 525
    .line 526
    const-string v0, "UseDoubleForDecimals"

    .line 527
    .line 528
    .line 529
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 530
    .line 531
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseDoubleForDecimals:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 532
    .line 533
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 534
    .line 535
    const/16 v2, 0x21

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    const-wide v3, 0x200000000L

    .line 541
    .line 542
    move-object/from16 v59, v1

    .line 543
    .line 544
    const-string v1, "DisableReferenceDetect"

    .line 545
    .line 546
    .line 547
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 548
    .line 549
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->DisableReferenceDetect:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 550
    .line 551
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 552
    .line 553
    const/16 v2, 0x22

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    const-wide v3, 0x400000000L

    .line 559
    .line 560
    move-object/from16 v60, v0

    .line 561
    .line 562
    const-string v0, "DisableStringArrayUnwrapping"

    .line 563
    .line 564
    .line 565
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 566
    .line 567
    sput-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->DisableStringArrayUnwrapping:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 568
    .line 569
    const/16 v0, 0x23

    .line 570
    .line 571
    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 572
    .line 573
    aput-object v28, v0, v16

    .line 574
    .line 575
    aput-object v30, v0, v20

    .line 576
    .line 577
    aput-object v32, v0, v18

    .line 578
    .line 579
    aput-object v48, v0, v22

    .line 580
    .line 581
    aput-object v7, v0, v26

    .line 582
    .line 583
    aput-object v8, v0, v24

    .line 584
    .line 585
    aput-object v9, v0, v17

    .line 586
    .line 587
    aput-object v13, v0, v19

    .line 588
    .line 589
    aput-object v49, v0, v21

    .line 590
    .line 591
    aput-object v5, v0, v23

    .line 592
    .line 593
    aput-object v6, v0, v25

    .line 594
    .line 595
    aput-object v10, v0, v27

    .line 596
    .line 597
    aput-object v11, v0, v29

    .line 598
    .line 599
    aput-object v12, v0, v31

    .line 600
    .line 601
    aput-object v34, v0, v33

    .line 602
    .line 603
    aput-object v36, v0, v35

    .line 604
    .line 605
    aput-object v38, v0, v37

    .line 606
    .line 607
    aput-object v40, v0, v39

    .line 608
    .line 609
    aput-object v42, v0, v41

    .line 610
    .line 611
    aput-object v44, v0, v43

    .line 612
    .line 613
    aput-object v46, v0, v45

    .line 614
    .line 615
    aput-object v15, v0, v47

    .line 616
    .line 617
    const/16 v2, 0x16

    .line 618
    .line 619
    aput-object v14, v0, v2

    .line 620
    .line 621
    const/16 v2, 0x17

    .line 622
    .line 623
    aput-object v50, v0, v2

    .line 624
    .line 625
    const/16 v2, 0x18

    .line 626
    .line 627
    aput-object v51, v0, v2

    .line 628
    .line 629
    const/16 v2, 0x19

    .line 630
    .line 631
    aput-object v52, v0, v2

    .line 632
    .line 633
    const/16 v2, 0x1a

    .line 634
    .line 635
    aput-object v53, v0, v2

    .line 636
    .line 637
    const/16 v2, 0x1b

    .line 638
    .line 639
    aput-object v54, v0, v2

    .line 640
    .line 641
    const/16 v2, 0x1c

    .line 642
    .line 643
    aput-object v55, v0, v2

    .line 644
    .line 645
    const/16 v2, 0x1d

    .line 646
    .line 647
    aput-object v56, v0, v2

    .line 648
    .line 649
    const/16 v2, 0x1e

    .line 650
    .line 651
    aput-object v57, v0, v2

    .line 652
    .line 653
    const/16 v2, 0x1f

    .line 654
    .line 655
    aput-object v58, v0, v2

    .line 656
    .line 657
    const/16 v2, 0x20

    .line 658
    .line 659
    aput-object v59, v0, v2

    .line 660
    .line 661
    const/16 v2, 0x21

    .line 662
    .line 663
    aput-object v60, v0, v2

    .line 664
    .line 665
    const/16 v2, 0x22

    .line 666
    .line 667
    aput-object v1, v0, v2

    .line 668
    .line 669
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->$VALUES:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 670
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 6
    return-void
.end method

.method public static isEnabled(JLcom/alibaba/fastjson2/JSONReader$Feature;)Z
    .locals 2

    .line 2
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static of([Lcom/alibaba/fastjson2/JSONReader$Feature;)J
    .locals 5

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    return-wide v0

    .line 6
    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, p0

    .line 8
    .line 9
    if-ge v2, v3, :cond_1

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 14
    or-long/2addr v0, v3

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader$Feature;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/JSONReader$Feature;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->$VALUES:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/JSONReader$Feature;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 9
    return-object v0
.end method


# virtual methods
.method public isEnabled(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
