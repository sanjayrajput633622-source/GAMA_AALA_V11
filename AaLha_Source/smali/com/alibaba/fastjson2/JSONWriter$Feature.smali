.class public final enum Lcom/alibaba/fastjson2/JSONWriter$Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/JSONWriter$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum IgnoreEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum LargeObject:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum MapSortField:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum NotWriteNumberClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum NotWriteSetClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum OptimizedForAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum PrettyFormatWith2Space:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum PrettyFormatWith4Space:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum SortMapEntriesByKeys:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum UnquoteFieldName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum UseSingleQuotes:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteEnumUsingOrdinal:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteNameAsSymbol:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WritePairAsJavaBean:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriteThrowableClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field public static final enum WriterUtilDateAsMillis:Lcom/alibaba/fastjson2/JSONWriter$Feature;


# instance fields
.field public final mask:J


# direct methods
.method static constructor <clinit>()V
    .locals 73

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

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
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 11
    .line 12
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

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
    invoke-direct {v1, v5, v6, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 23
    .line 24
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 25
    .line 26
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;

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
    invoke-direct {v2, v3, v5, v7, v8}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 35
    .line 36
    sput-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 37
    .line 38
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 39
    .line 40
    const-wide/16 v7, 0x8

    .line 41
    .line 42
    const-string v9, "BeanToArray"

    .line 43
    const/4 v10, 0x3

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v9, v10, v7, v8}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 47
    .line 48
    sput-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 49
    .line 50
    new-instance v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 51
    .line 52
    const-string v8, "WriteNulls"

    .line 53
    const/4 v9, 0x4

    .line 54
    .line 55
    const-wide/16 v11, 0x10

    .line 56
    .line 57
    .line 58
    invoke-direct {v7, v8, v9, v11, v12}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 59
    .line 60
    sput-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 61
    .line 62
    new-instance v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 63
    .line 64
    const-string v13, "WriteMapNullValue"

    .line 65
    const/4 v14, 0x5

    .line 66
    .line 67
    .line 68
    invoke-direct {v8, v13, v14, v11, v12}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 69
    .line 70
    sput-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 71
    .line 72
    new-instance v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 73
    .line 74
    const-wide/16 v12, 0x20

    .line 75
    .line 76
    const-string v15, "BrowserCompatible"

    .line 77
    .line 78
    move/from16 v16, v4

    .line 79
    const/4 v4, 0x6

    .line 80
    .line 81
    .line 82
    invoke-direct {v11, v15, v4, v12, v13}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 83
    .line 84
    sput-object v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 85
    .line 86
    new-instance v12, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 87
    move v15, v4

    .line 88
    move v13, v5

    .line 89
    .line 90
    const-wide/16 v4, 0x40

    .line 91
    .line 92
    move/from16 v17, v6

    .line 93
    .line 94
    const-string v6, "NullAsDefaultValue"

    .line 95
    .line 96
    move/from16 v18, v9

    .line 97
    const/4 v9, 0x7

    .line 98
    .line 99
    .line 100
    invoke-direct {v12, v6, v9, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 101
    .line 102
    sput-object v12, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 103
    .line 104
    new-instance v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 105
    .line 106
    const-wide/16 v5, 0x80

    .line 107
    .line 108
    move/from16 v19, v9

    .line 109
    .line 110
    const-string v9, "WriteBooleanAsNumber"

    .line 111
    .line 112
    move/from16 v20, v10

    .line 113
    .line 114
    const/16 v10, 0x8

    .line 115
    .line 116
    .line 117
    invoke-direct {v4, v9, v10, v5, v6}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 118
    .line 119
    sput-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 120
    .line 121
    new-instance v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 122
    move v9, v10

    .line 123
    move-object v6, v11

    .line 124
    .line 125
    const-wide/16 v10, 0x100

    .line 126
    .line 127
    move/from16 v21, v9

    .line 128
    .line 129
    const-string v9, "WriteNonStringValueAsString"

    .line 130
    .line 131
    move/from16 v22, v13

    .line 132
    .line 133
    const/16 v13, 0x9

    .line 134
    .line 135
    .line 136
    invoke-direct {v5, v9, v13, v10, v11}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 137
    .line 138
    sput-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 139
    .line 140
    new-instance v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 141
    .line 142
    const-wide/16 v10, 0x200

    .line 143
    .line 144
    move/from16 v23, v13

    .line 145
    .line 146
    const-string v13, "WriteClassName"

    .line 147
    .line 148
    move/from16 v24, v14

    .line 149
    .line 150
    const/16 v14, 0xa

    .line 151
    .line 152
    .line 153
    invoke-direct {v9, v13, v14, v10, v11}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 154
    .line 155
    sput-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 156
    .line 157
    new-instance v10, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 158
    move v13, v14

    .line 159
    move v11, v15

    .line 160
    .line 161
    const-wide/16 v14, 0x400

    .line 162
    .line 163
    move/from16 v25, v11

    .line 164
    .line 165
    const-string v11, "NotWriteRootClassName"

    .line 166
    .line 167
    move/from16 v26, v13

    .line 168
    .line 169
    const/16 v13, 0xb

    .line 170
    .line 171
    .line 172
    invoke-direct {v10, v11, v13, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 173
    .line 174
    sput-object v10, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 175
    .line 176
    new-instance v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 177
    .line 178
    const-wide/16 v14, 0x800

    .line 179
    .line 180
    move/from16 v27, v13

    .line 181
    .line 182
    const-string v13, "NotWriteHashMapArrayListClassName"

    .line 183
    .line 184
    move-object/from16 v28, v0

    .line 185
    .line 186
    const/16 v0, 0xc

    .line 187
    .line 188
    .line 189
    invoke-direct {v11, v13, v0, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 190
    .line 191
    sput-object v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 192
    .line 193
    new-instance v13, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 194
    .line 195
    const-wide/16 v14, 0x1000

    .line 196
    .line 197
    move/from16 v29, v0

    .line 198
    .line 199
    const-string v0, "NotWriteDefaultValue"

    .line 200
    .line 201
    move-object/from16 v30, v1

    .line 202
    .line 203
    const/16 v1, 0xd

    .line 204
    .line 205
    .line 206
    invoke-direct {v13, v0, v1, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 207
    .line 208
    sput-object v13, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 209
    .line 210
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 211
    .line 212
    const-wide/16 v14, 0x2000

    .line 213
    .line 214
    move/from16 v31, v1

    .line 215
    .line 216
    const-string v1, "WriteEnumsUsingName"

    .line 217
    .line 218
    move-object/from16 v32, v2

    .line 219
    .line 220
    const/16 v2, 0xe

    .line 221
    .line 222
    .line 223
    invoke-direct {v0, v1, v2, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 224
    .line 225
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 226
    .line 227
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 228
    .line 229
    const-wide/16 v14, 0x4000

    .line 230
    .line 231
    move/from16 v33, v2

    .line 232
    .line 233
    const-string v2, "WriteEnumUsingToString"

    .line 234
    .line 235
    move-object/from16 v34, v0

    .line 236
    .line 237
    const/16 v0, 0xf

    .line 238
    .line 239
    .line 240
    invoke-direct {v1, v2, v0, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 241
    .line 242
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 243
    .line 244
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 245
    .line 246
    .line 247
    const-wide/32 v14, 0x8000

    .line 248
    .line 249
    move/from16 v35, v0

    .line 250
    .line 251
    const-string v0, "IgnoreErrorGetter"

    .line 252
    .line 253
    move-object/from16 v36, v1

    .line 254
    .line 255
    const/16 v1, 0x10

    .line 256
    .line 257
    .line 258
    invoke-direct {v2, v0, v1, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 259
    .line 260
    sput-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 261
    .line 262
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 263
    .line 264
    .line 265
    const-wide/32 v14, 0x10000

    .line 266
    .line 267
    move/from16 v37, v1

    .line 268
    .line 269
    const-string v1, "PrettyFormat"

    .line 270
    .line 271
    move-object/from16 v38, v2

    .line 272
    .line 273
    const/16 v2, 0x11

    .line 274
    .line 275
    .line 276
    invoke-direct {v0, v1, v2, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 277
    .line 278
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 279
    .line 280
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 281
    .line 282
    .line 283
    const-wide/32 v14, 0x20000

    .line 284
    .line 285
    move/from16 v39, v2

    .line 286
    .line 287
    const-string v2, "ReferenceDetection"

    .line 288
    .line 289
    move-object/from16 v40, v0

    .line 290
    .line 291
    const/16 v0, 0x12

    .line 292
    .line 293
    .line 294
    invoke-direct {v1, v2, v0, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 295
    .line 296
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 297
    .line 298
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 299
    .line 300
    .line 301
    const-wide/32 v14, 0x40000

    .line 302
    .line 303
    move/from16 v41, v0

    .line 304
    .line 305
    const-string v0, "WriteNameAsSymbol"

    .line 306
    .line 307
    move-object/from16 v42, v1

    .line 308
    .line 309
    const/16 v1, 0x13

    .line 310
    .line 311
    .line 312
    invoke-direct {v2, v0, v1, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 313
    .line 314
    sput-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNameAsSymbol:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 315
    .line 316
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 317
    .line 318
    .line 319
    const-wide/32 v14, 0x80000

    .line 320
    .line 321
    move/from16 v43, v1

    .line 322
    .line 323
    const-string v1, "WriteBigDecimalAsPlain"

    .line 324
    .line 325
    move-object/from16 v44, v2

    .line 326
    .line 327
    const/16 v2, 0x14

    .line 328
    .line 329
    .line 330
    invoke-direct {v0, v1, v2, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 331
    .line 332
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 333
    .line 334
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 335
    .line 336
    .line 337
    const-wide/32 v14, 0x100000

    .line 338
    .line 339
    move/from16 v45, v2

    .line 340
    .line 341
    const-string v2, "UseSingleQuotes"

    .line 342
    .line 343
    move-object/from16 v46, v0

    .line 344
    .line 345
    const/16 v0, 0x15

    .line 346
    .line 347
    .line 348
    invoke-direct {v1, v2, v0, v14, v15}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 349
    .line 350
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UseSingleQuotes:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 351
    .line 352
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 353
    .line 354
    const/16 v14, 0x16

    .line 355
    .line 356
    move/from16 v47, v0

    .line 357
    move-object v15, v1

    .line 358
    .line 359
    .line 360
    const-wide/32 v0, 0x200000

    .line 361
    .line 362
    move-object/from16 v48, v3

    .line 363
    .line 364
    const-string v3, "MapSortField"

    .line 365
    .line 366
    .line 367
    invoke-direct {v2, v3, v14, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 368
    .line 369
    sput-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->MapSortField:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 370
    .line 371
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 372
    .line 373
    const/16 v1, 0x17

    .line 374
    move-object v14, v2

    .line 375
    .line 376
    .line 377
    const-wide/32 v2, 0x400000

    .line 378
    .line 379
    move-object/from16 v49, v4

    .line 380
    .line 381
    const-string v4, "WriteNullListAsEmpty"

    .line 382
    .line 383
    .line 384
    invoke-direct {v0, v4, v1, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 385
    .line 386
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 387
    .line 388
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 389
    .line 390
    const/16 v2, 0x18

    .line 391
    .line 392
    .line 393
    const-wide/32 v3, 0x800000

    .line 394
    .line 395
    move-object/from16 v50, v0

    .line 396
    .line 397
    const-string v0, "WriteNullStringAsEmpty"

    .line 398
    .line 399
    .line 400
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 401
    .line 402
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 403
    .line 404
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 405
    .line 406
    const/16 v2, 0x19

    .line 407
    .line 408
    .line 409
    const-wide/32 v3, 0x1000000

    .line 410
    .line 411
    move-object/from16 v51, v1

    .line 412
    .line 413
    const-string v1, "WriteNullNumberAsZero"

    .line 414
    .line 415
    .line 416
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 417
    .line 418
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 419
    .line 420
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 421
    .line 422
    const/16 v2, 0x1a

    .line 423
    .line 424
    .line 425
    const-wide/32 v3, 0x2000000

    .line 426
    .line 427
    move-object/from16 v52, v0

    .line 428
    .line 429
    const-string v0, "WriteNullBooleanAsFalse"

    .line 430
    .line 431
    .line 432
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 433
    .line 434
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 435
    .line 436
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 437
    .line 438
    const-string v2, "NotWriteEmptyArray"

    .line 439
    .line 440
    const/16 v3, 0x1b

    .line 441
    .line 442
    move-object/from16 v53, v5

    .line 443
    .line 444
    .line 445
    const-wide/32 v4, 0x4000000

    .line 446
    .line 447
    .line 448
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 449
    .line 450
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 451
    .line 452
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 453
    .line 454
    const-string v3, "IgnoreEmpty"

    .line 455
    .line 456
    move-object/from16 v54, v0

    .line 457
    .line 458
    const/16 v0, 0x1c

    .line 459
    .line 460
    .line 461
    invoke-direct {v2, v3, v0, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 462
    .line 463
    sput-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 464
    .line 465
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 466
    .line 467
    const/16 v3, 0x1d

    .line 468
    .line 469
    .line 470
    const-wide/32 v4, 0x8000000

    .line 471
    .line 472
    move-object/from16 v55, v1

    .line 473
    .line 474
    const-string v1, "WriteNonStringKeyAsString"

    .line 475
    .line 476
    .line 477
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 478
    .line 479
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 480
    .line 481
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 482
    .line 483
    const/16 v3, 0x1e

    .line 484
    .line 485
    .line 486
    const-wide/32 v4, 0x10000000

    .line 487
    .line 488
    move-object/from16 v56, v0

    .line 489
    .line 490
    const-string v0, "WritePairAsJavaBean"

    .line 491
    .line 492
    .line 493
    invoke-direct {v1, v0, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 494
    .line 495
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WritePairAsJavaBean:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 496
    .line 497
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 498
    .line 499
    const/16 v3, 0x1f

    .line 500
    .line 501
    .line 502
    const-wide/32 v4, 0x20000000

    .line 503
    .line 504
    move-object/from16 v57, v1

    .line 505
    .line 506
    const-string v1, "OptimizedForAscii"

    .line 507
    .line 508
    .line 509
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 510
    .line 511
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->OptimizedForAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 512
    .line 513
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 514
    .line 515
    const/16 v3, 0x20

    .line 516
    .line 517
    .line 518
    const-wide/32 v4, 0x40000000

    .line 519
    .line 520
    move-object/from16 v58, v0

    .line 521
    .line 522
    const-string v0, "EscapeNoneAscii"

    .line 523
    .line 524
    .line 525
    invoke-direct {v1, v0, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 526
    .line 527
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->EscapeNoneAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 528
    .line 529
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 530
    .line 531
    const/16 v3, 0x21

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    const-wide v4, 0x80000000L

    .line 537
    .line 538
    move-object/from16 v59, v1

    .line 539
    .line 540
    const-string v1, "WriteByteArrayAsBase64"

    .line 541
    .line 542
    .line 543
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 544
    .line 545
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 546
    .line 547
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 548
    .line 549
    const/16 v3, 0x22

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    const-wide v4, 0x100000000L

    .line 555
    .line 556
    move-object/from16 v60, v0

    .line 557
    .line 558
    const-string v0, "IgnoreNonFieldGetter"

    .line 559
    .line 560
    .line 561
    invoke-direct {v1, v0, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 562
    .line 563
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 564
    .line 565
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 566
    .line 567
    const/16 v3, 0x23

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    const-wide v4, 0x200000000L

    .line 573
    .line 574
    move-object/from16 v61, v1

    .line 575
    .line 576
    const-string v1, "LargeObject"

    .line 577
    .line 578
    .line 579
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 580
    .line 581
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->LargeObject:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 582
    .line 583
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 584
    .line 585
    const/16 v3, 0x24

    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    const-wide v4, 0x400000000L

    .line 591
    .line 592
    move-object/from16 v62, v0

    .line 593
    .line 594
    const-string v0, "WriteLongAsString"

    .line 595
    .line 596
    .line 597
    invoke-direct {v1, v0, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 598
    .line 599
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteLongAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 600
    .line 601
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 602
    .line 603
    const/16 v3, 0x25

    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    const-wide v4, 0x800000000L

    .line 609
    .line 610
    move-object/from16 v63, v1

    .line 611
    .line 612
    const-string v1, "BrowserSecure"

    .line 613
    .line 614
    .line 615
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 616
    .line 617
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 618
    .line 619
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 620
    .line 621
    const/16 v3, 0x26

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    const-wide v4, 0x1000000000L

    .line 627
    .line 628
    move-object/from16 v64, v0

    .line 629
    .line 630
    const-string v0, "WriteEnumUsingOrdinal"

    .line 631
    .line 632
    .line 633
    invoke-direct {v1, v0, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 634
    .line 635
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingOrdinal:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 636
    .line 637
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 638
    .line 639
    const/16 v3, 0x27

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    const-wide v4, 0x2000000000L

    .line 645
    .line 646
    move-object/from16 v65, v1

    .line 647
    .line 648
    const-string v1, "WriteThrowableClassName"

    .line 649
    .line 650
    .line 651
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 652
    .line 653
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteThrowableClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 654
    .line 655
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 656
    .line 657
    const/16 v3, 0x28

    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    const-wide v4, 0x4000000000L

    .line 663
    .line 664
    move-object/from16 v66, v0

    .line 665
    .line 666
    const-string v0, "UnquoteFieldName"

    .line 667
    .line 668
    .line 669
    invoke-direct {v1, v0, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 670
    .line 671
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UnquoteFieldName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 672
    .line 673
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 674
    .line 675
    const/16 v3, 0x29

    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    const-wide v4, 0x8000000000L

    .line 681
    .line 682
    move-object/from16 v67, v1

    .line 683
    .line 684
    const-string v1, "NotWriteSetClassName"

    .line 685
    .line 686
    .line 687
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 688
    .line 689
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteSetClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 690
    .line 691
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 692
    .line 693
    const/16 v3, 0x2a

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    const-wide v4, 0x10000000000L

    .line 699
    .line 700
    move-object/from16 v68, v0

    .line 701
    .line 702
    const-string v0, "NotWriteNumberClassName"

    .line 703
    .line 704
    .line 705
    invoke-direct {v1, v0, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 706
    .line 707
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteNumberClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 708
    .line 709
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 710
    .line 711
    const/16 v3, 0x2b

    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    const-wide v4, 0x20000000000L

    .line 717
    .line 718
    move-object/from16 v69, v1

    .line 719
    .line 720
    const-string v1, "SortMapEntriesByKeys"

    .line 721
    .line 722
    .line 723
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 724
    .line 725
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->SortMapEntriesByKeys:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 726
    .line 727
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 728
    .line 729
    const/16 v3, 0x2c

    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    const-wide v4, 0x40000000000L

    .line 735
    .line 736
    move-object/from16 v70, v0

    .line 737
    .line 738
    const-string v0, "PrettyFormatWith2Space"

    .line 739
    .line 740
    .line 741
    invoke-direct {v1, v0, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 742
    .line 743
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormatWith2Space:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 744
    .line 745
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 746
    .line 747
    const/16 v3, 0x2d

    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    const-wide v4, 0x80000000000L

    .line 753
    .line 754
    move-object/from16 v71, v1

    .line 755
    .line 756
    const-string v1, "PrettyFormatWith4Space"

    .line 757
    .line 758
    .line 759
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 760
    .line 761
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormatWith4Space:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 762
    .line 763
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 764
    .line 765
    const/16 v3, 0x2e

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    const-wide v4, 0x100000000000L

    .line 771
    .line 772
    move-object/from16 v72, v0

    .line 773
    .line 774
    const-string v0, "WriterUtilDateAsMillis"

    .line 775
    .line 776
    .line 777
    invoke-direct {v1, v0, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter$Feature;-><init>(Ljava/lang/String;IJ)V

    .line 778
    .line 779
    sput-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriterUtilDateAsMillis:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 780
    .line 781
    const/16 v0, 0x2f

    .line 782
    .line 783
    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 784
    .line 785
    aput-object v28, v0, v16

    .line 786
    .line 787
    aput-object v30, v0, v17

    .line 788
    .line 789
    aput-object v32, v0, v22

    .line 790
    .line 791
    aput-object v48, v0, v20

    .line 792
    .line 793
    aput-object v7, v0, v18

    .line 794
    .line 795
    aput-object v8, v0, v24

    .line 796
    .line 797
    aput-object v6, v0, v25

    .line 798
    .line 799
    aput-object v12, v0, v19

    .line 800
    .line 801
    aput-object v49, v0, v21

    .line 802
    .line 803
    aput-object v53, v0, v23

    .line 804
    .line 805
    aput-object v9, v0, v26

    .line 806
    .line 807
    aput-object v10, v0, v27

    .line 808
    .line 809
    aput-object v11, v0, v29

    .line 810
    .line 811
    aput-object v13, v0, v31

    .line 812
    .line 813
    aput-object v34, v0, v33

    .line 814
    .line 815
    aput-object v36, v0, v35

    .line 816
    .line 817
    aput-object v38, v0, v37

    .line 818
    .line 819
    aput-object v40, v0, v39

    .line 820
    .line 821
    aput-object v42, v0, v41

    .line 822
    .line 823
    aput-object v44, v0, v43

    .line 824
    .line 825
    aput-object v46, v0, v45

    .line 826
    .line 827
    aput-object v15, v0, v47

    .line 828
    .line 829
    const/16 v3, 0x16

    .line 830
    .line 831
    aput-object v14, v0, v3

    .line 832
    .line 833
    const/16 v3, 0x17

    .line 834
    .line 835
    aput-object v50, v0, v3

    .line 836
    .line 837
    const/16 v3, 0x18

    .line 838
    .line 839
    aput-object v51, v0, v3

    .line 840
    .line 841
    const/16 v3, 0x19

    .line 842
    .line 843
    aput-object v52, v0, v3

    .line 844
    .line 845
    const/16 v3, 0x1a

    .line 846
    .line 847
    aput-object v55, v0, v3

    .line 848
    .line 849
    const/16 v3, 0x1b

    .line 850
    .line 851
    aput-object v54, v0, v3

    .line 852
    .line 853
    const/16 v3, 0x1c

    .line 854
    .line 855
    aput-object v2, v0, v3

    .line 856
    .line 857
    const/16 v2, 0x1d

    .line 858
    .line 859
    aput-object v56, v0, v2

    .line 860
    .line 861
    const/16 v2, 0x1e

    .line 862
    .line 863
    aput-object v57, v0, v2

    .line 864
    .line 865
    const/16 v2, 0x1f

    .line 866
    .line 867
    aput-object v58, v0, v2

    .line 868
    .line 869
    const/16 v2, 0x20

    .line 870
    .line 871
    aput-object v59, v0, v2

    .line 872
    .line 873
    const/16 v2, 0x21

    .line 874
    .line 875
    aput-object v60, v0, v2

    .line 876
    .line 877
    const/16 v2, 0x22

    .line 878
    .line 879
    aput-object v61, v0, v2

    .line 880
    .line 881
    const/16 v2, 0x23

    .line 882
    .line 883
    aput-object v62, v0, v2

    .line 884
    .line 885
    const/16 v2, 0x24

    .line 886
    .line 887
    aput-object v63, v0, v2

    .line 888
    .line 889
    const/16 v2, 0x25

    .line 890
    .line 891
    aput-object v64, v0, v2

    .line 892
    .line 893
    const/16 v2, 0x26

    .line 894
    .line 895
    aput-object v65, v0, v2

    .line 896
    .line 897
    const/16 v2, 0x27

    .line 898
    .line 899
    aput-object v66, v0, v2

    .line 900
    .line 901
    const/16 v2, 0x28

    .line 902
    .line 903
    aput-object v67, v0, v2

    .line 904
    .line 905
    const/16 v2, 0x29

    .line 906
    .line 907
    aput-object v68, v0, v2

    .line 908
    .line 909
    const/16 v2, 0x2a

    .line 910
    .line 911
    aput-object v69, v0, v2

    .line 912
    .line 913
    const/16 v2, 0x2b

    .line 914
    .line 915
    aput-object v70, v0, v2

    .line 916
    .line 917
    const/16 v2, 0x2c

    .line 918
    .line 919
    aput-object v71, v0, v2

    .line 920
    .line 921
    const/16 v2, 0x2d

    .line 922
    .line 923
    aput-object v72, v0, v2

    .line 924
    .line 925
    const/16 v2, 0x2e

    .line 926
    .line 927
    aput-object v1, v0, v2

    .line 928
    .line 929
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->$VALUES:[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 930
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
    iput-wide p3, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONWriter$Feature;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/JSONWriter$Feature;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->$VALUES:[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/JSONWriter$Feature;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 9
    return-object v0
.end method


# virtual methods
.method public isEnabled(J)Z
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 3
    and-long/2addr p1, v0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long p1, p1, v0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method
