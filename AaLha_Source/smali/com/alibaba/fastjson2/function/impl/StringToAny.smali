.class public final Lcom/alibaba/fastjson2/function/impl/StringToAny;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Function;


# instance fields
.field final defaultValue:Ljava/lang/Object;

.field final targetClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->defaultValue:Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    .line 4
    if-eqz p1, :cond_16

    .line 5
    .line 6
    const-string v0, "null"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_16

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_8

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    .line 25
    .line 26
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 27
    .line 28
    if-eq v0, v1, :cond_15

    .line 29
    .line 30
    const-class v1, Ljava/lang/Byte;

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    goto/16 :goto_7

    .line 35
    .line 36
    :cond_1
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    if-eq v0, v1, :cond_14

    .line 39
    .line 40
    const-class v1, Ljava/lang/Short;

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 47
    .line 48
    if-eq v0, v1, :cond_13

    .line 49
    .line 50
    const-class v1, Ljava/lang/Integer;

    .line 51
    .line 52
    if-ne v0, v1, :cond_3

    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    if-eq v0, v1, :cond_11

    .line 59
    .line 60
    const-class v1, Ljava/lang/Long;

    .line 61
    .line 62
    if-ne v0, v1, :cond_4

    .line 63
    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 67
    .line 68
    if-eq v0, v1, :cond_10

    .line 69
    .line 70
    const-class v1, Ljava/lang/Float;

    .line 71
    .line 72
    if-ne v0, v1, :cond_5

    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 77
    .line 78
    if-eq v0, v1, :cond_f

    .line 79
    .line 80
    const-class v1, Ljava/lang/Double;

    .line 81
    .line 82
    if-ne v0, v1, :cond_6

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_6
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    if-eq v0, v1, :cond_e

    .line 89
    .line 90
    const-class v1, Ljava/lang/Character;

    .line 91
    .line 92
    if-ne v0, v1, :cond_7

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 96
    .line 97
    if-eq v0, v1, :cond_d

    .line 98
    .line 99
    const-class v1, Ljava/lang/Boolean;

    .line 100
    .line 101
    if-ne v0, v1, :cond_8

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_8
    const-class v1, Ljava/math/BigDecimal;

    .line 105
    .line 106
    if-ne v0, v1, :cond_9

    .line 107
    .line 108
    new-instance v0, Ljava/math/BigDecimal;

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 112
    return-object v0

    .line 113
    .line 114
    :cond_9
    const-class v1, Ljava/math/BigInteger;

    .line 115
    .line 116
    if-ne v0, v1, :cond_a

    .line 117
    .line 118
    new-instance v0, Ljava/math/BigInteger;

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 122
    return-object v0

    .line 123
    .line 124
    :cond_a
    const-class v1, Ljava/util/Collections;

    .line 125
    .line 126
    if-eq v0, v1, :cond_b

    .line 127
    .line 128
    const-class v1, Ljava/util/List;

    .line 129
    .line 130
    if-eq v0, v1, :cond_b

    .line 131
    .line 132
    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    .line 133
    .line 134
    if-ne v0, v1, :cond_c

    .line 135
    .line 136
    :cond_b
    const-string v0, "[]"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v0

    .line 141
    .line 142
    if-eqz v0, :cond_c

    .line 143
    .line 144
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    .line 145
    .line 146
    .line 147
    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 148
    return-object p1

    .line 149
    .line 150
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 151
    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    const-string v2, "can not convert to "

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    iget-object v2, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->targetClass:Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v2, ", value : "

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    .line 180
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 181
    throw v0

    .line 182
    .line 183
    :cond_d
    :goto_0
    const-string v0, "true"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result p1

    .line 188
    .line 189
    .line 190
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 191
    move-result-object p1

    .line 192
    return-object p1

    .line 193
    :cond_e
    :goto_1
    const/4 v0, 0x0

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 197
    move-result p1

    .line 198
    .line 199
    .line 200
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 201
    move-result-object p1

    .line 202
    return-object p1

    .line 203
    .line 204
    .line 205
    :cond_f
    :goto_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 206
    move-result-wide v0

    .line 207
    .line 208
    .line 209
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 210
    move-result-object p1

    .line 211
    return-object p1

    .line 212
    .line 213
    .line 214
    :cond_10
    :goto_3
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 215
    move-result p1

    .line 216
    .line 217
    .line 218
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 219
    move-result-object p1

    .line 220
    return-object p1

    .line 221
    .line 222
    .line 223
    :cond_11
    :goto_4
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 224
    move-result v0

    .line 225
    .line 226
    if-nez v0, :cond_12

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 230
    move-result v0

    .line 231
    .line 232
    const/16 v1, 0x13

    .line 233
    .line 234
    if-ne v0, v1, :cond_12

    .line 235
    .line 236
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 237
    .line 238
    .line 239
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    .line 240
    move-result-wide v0

    .line 241
    .line 242
    .line 243
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 244
    move-result-object p1

    .line 245
    return-object p1

    .line 246
    .line 247
    .line 248
    :cond_12
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 249
    move-result-wide v0

    .line 250
    .line 251
    .line 252
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    move-result-object p1

    .line 254
    return-object p1

    .line 255
    .line 256
    .line 257
    :cond_13
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 258
    move-result p1

    .line 259
    .line 260
    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    move-result-object p1

    .line 263
    return-object p1

    .line 264
    .line 265
    .line 266
    :cond_14
    :goto_6
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 267
    move-result p1

    .line 268
    .line 269
    .line 270
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 271
    move-result-object p1

    .line 272
    return-object p1

    .line 273
    .line 274
    .line 275
    :cond_15
    :goto_7
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 276
    move-result p1

    .line 277
    .line 278
    .line 279
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 280
    move-result-object p1

    .line 281
    return-object p1

    .line 282
    .line 283
    :cond_16
    :goto_8
    iget-object p1, p0, Lcom/alibaba/fastjson2/function/impl/StringToAny;->defaultValue:Ljava/lang/Object;

    .line 284
    return-object p1
.end method
