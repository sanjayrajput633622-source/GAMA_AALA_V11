.class public Lcom/alibaba/fastjson2/reader/ObjectReader1;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final hashCode0:J

.field final hashCode0LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v9, 0x0

    .line 2
    const/4 v10, 0x0

    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    .line 9
    move-wide/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v11, p8

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    aget-object p2, p8, p1

    .line 22
    .line 23
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 24
    .line 25
    iget-wide v1, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 26
    .line 27
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0:J

    .line 28
    .line 29
    iget-wide v1, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0LCase:J

    .line 32
    .line 33
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    const/4 p1, 0x1

    .line 37
    .line 38
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0:J

    .line 3
    .line 4
    cmp-long p1, p1, v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0LCase:J

    .line 3
    .line 4
    cmp-long p1, p1, v0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public initDefaultValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 14
    or-long/2addr v1, p4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->checkAutoType(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    if-eq v3, p0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    move-object v4, p1

    .line 32
    move-object v5, p2

    .line 33
    move-object v6, p3

    .line 34
    move-wide v7, p4

    .line 35
    .line 36
    .line 37
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    move-object v4, p1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 50
    move-result p2

    .line 51
    .line 52
    if-lez p2, :cond_2

    .line 53
    .line 54
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 58
    const/4 p3, 0x1

    .line 59
    .line 60
    :goto_0
    if-ge p3, p2, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 64
    .line 65
    add-int/lit8 p3, p3, 0x1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 69
    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    :cond_3
    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 14
    or-long/2addr v1, p4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->checkAutoType(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    if-eq v3, p0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    move-object v4, p1

    .line 32
    move-object v5, p2

    .line 33
    move-object v6, p3

    .line 34
    move-wide v7, p4

    .line 35
    .line 36
    .line 37
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    move-object v1, p1

    .line 41
    move-object v2, p2

    .line 42
    move-object v3, p3

    .line 43
    move-wide v4, p4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 59
    move-result p2

    .line 60
    .line 61
    if-lez p2, :cond_2

    .line 62
    .line 63
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v1, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 67
    const/4 p3, 0x1

    .line 68
    .line 69
    :goto_0
    if-ge p3, p2, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 73
    .line 74
    add-int/lit8 p3, p3, 0x1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    :cond_3
    return-object p1

    .line 85
    .line 86
    :cond_4
    const/16 p1, -0x5a

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 90
    move-result p1

    .line 91
    const/4 p2, 0x0

    .line 92
    .line 93
    if-nez p1, :cond_6

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    .line 97
    move-result p1

    .line 98
    .line 99
    if-eqz p1, :cond_5

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    .line 103
    goto :goto_1

    .line 104
    .line 105
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 106
    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string p3, "expect object, but "

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 119
    move-result p3

    .line 120
    .line 121
    .line 122
    invoke-static {p3}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 123
    move-result-object p3

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 135
    .line 136
    .line 137
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 138
    throw p1

    .line 139
    .line 140
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 141
    const/4 p3, 0x0

    .line 142
    .line 143
    const-wide/16 p4, 0x0

    .line 144
    .line 145
    if-eqz p1, :cond_7

    .line 146
    .line 147
    .line 148
    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 149
    move-result-object p1

    .line 150
    goto :goto_2

    .line 151
    .line 152
    :cond_7
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 153
    .line 154
    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 155
    or-long/2addr v6, v4

    .line 156
    .line 157
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 158
    .line 159
    iget-wide v8, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 160
    and-long/2addr v6, v8

    .line 161
    .line 162
    cmp-long p1, v6, p4

    .line 163
    .line 164
    if-eqz p1, :cond_8

    .line 165
    .line 166
    :try_start_0
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 167
    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_2

    .line 174
    :catch_0
    move-exception v0

    .line 175
    move-object p1, v0

    .line 176
    .line 177
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 178
    .line 179
    const-string p3, "create instance error"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object p3

    .line 184
    .line 185
    .line 186
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    throw p2

    .line 188
    :cond_8
    move-object p1, p3

    .line 189
    .line 190
    :goto_2
    if-eqz p1, :cond_9

    .line 191
    .line 192
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 193
    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->initDefaultValue(Ljava/lang/Object;)V

    .line 198
    .line 199
    :cond_9
    :goto_3
    const/16 v0, -0x5b

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 203
    move-result v0

    .line 204
    .line 205
    if-eqz v0, :cond_b

    .line 206
    .line 207
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 208
    .line 209
    if-eqz p2, :cond_a

    .line 210
    .line 211
    .line 212
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object p1

    .line 214
    :cond_a
    return-object p1

    .line 215
    .line 216
    .line 217
    :cond_b
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 218
    move-result-wide v6

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getTypeKeyHash()J

    .line 222
    move-result-wide v8

    .line 223
    .line 224
    cmp-long v0, v6, v8

    .line 225
    .line 226
    if-nez v0, :cond_f

    .line 227
    .line 228
    if-nez p2, :cond_f

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 232
    move-result-wide v6

    .line 233
    .line 234
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 238
    move-result-object v6

    .line 239
    .line 240
    if-nez v6, :cond_d

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 244
    move-result-object v6

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v6, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 248
    move-result-object v0

    .line 249
    .line 250
    if-eqz v0, :cond_c

    .line 251
    goto :goto_4

    .line 252
    .line 253
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 254
    .line 255
    new-instance p2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    const-string p3, "auotype not support : "

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object p2

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    move-result-object p2

    .line 275
    .line 276
    .line 277
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 278
    throw p1

    .line 279
    :cond_d
    move-object v0, v6

    .line 280
    .line 281
    :goto_4
    if-ne v0, p0, :cond_e

    .line 282
    goto :goto_5

    .line 283
    .line 284
    .line 285
    :cond_e
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 286
    move-result-object p1

    .line 287
    return-object p1

    .line 288
    .line 289
    :cond_f
    cmp-long v0, v6, p4

    .line 290
    .line 291
    if-nez v0, :cond_10

    .line 292
    goto :goto_5

    .line 293
    .line 294
    :cond_10
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0:J

    .line 295
    .line 296
    cmp-long v0, v6, v8

    .line 297
    .line 298
    if-nez v0, :cond_11

    .line 299
    .line 300
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 304
    goto :goto_5

    .line 305
    .line 306
    :cond_11
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 307
    or-long/2addr v6, v4

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 311
    move-result v0

    .line 312
    .line 313
    if-eqz v0, :cond_12

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 317
    move-result-wide v6

    .line 318
    .line 319
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0LCase:J

    .line 320
    .line 321
    cmp-long v0, v6, v8

    .line 322
    .line 323
    if-nez v0, :cond_12

    .line 324
    .line 325
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 329
    goto :goto_5

    .line 330
    .line 331
    .line 332
    :cond_12
    invoke-virtual {p0, v1, p1, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 333
    .line 334
    :goto_5
    add-int/lit8 p2, p2, 0x1

    .line 335
    .line 336
    goto/16 :goto_3
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 1
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    move-object v0, v1

    return-object p1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 6
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    return-object p2

    .line 7
    :cond_2
    iget-wide v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    or-long/2addr v4, p4

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v4

    .line 8
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result p1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_6

    .line 9
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v4

    cmp-long p1, p1, v6

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 11
    iget-object p1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 12
    iget-object p2, v0, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p2, v1, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 15
    iget-object p2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p2, :cond_3

    .line 16
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    return-object p1

    .line 17
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "array to bean end error, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_5
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    move-object p3, v0

    return-object p1

    :cond_6
    move-object p3, v0

    .line 19
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 20
    iget-object p1, p3, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    if-eqz p1, :cond_7

    .line 21
    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 22
    :cond_7
    iget-boolean p1, p3, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    if-eqz p1, :cond_8

    .line 23
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader1;->initDefaultValue(Ljava/lang/Object;)V

    :cond_8
    if-eqz p2, :cond_9

    .line 24
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v8, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v8

    cmp-long p1, v4, v6

    if-eqz p1, :cond_9

    .line 25
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    :cond_9
    const/4 p1, 0x0

    .line 26
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 27
    :cond_a
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v4

    if-nez p1, :cond_d

    const-wide v6, 0x6570797440L

    cmp-long v0, v4, v6

    if-nez v0, :cond_d

    .line 28
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v4

    .line 29
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 30
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    if-nez v4, :cond_b

    .line 31
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v4

    .line 32
    iget-object v5, p3, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_2

    :cond_b
    move-object v0, v4

    if-eq v0, p3, :cond_10

    move-wide v4, p4

    .line 33
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 34
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 35
    iget-object p1, p3, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p1, :cond_c

    .line 36
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    return-object p2

    .line 37
    :cond_d
    iget-wide v6, p3, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_e

    .line 38
    iget-object v0, p3, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 39
    :cond_e
    iget-wide v4, p3, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    or-long/2addr v4, p4

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v4

    iget-wide v6, p3, Lcom/alibaba/fastjson2/reader/ObjectReader1;->hashCode0LCase:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_f

    .line 41
    iget-object v0, p3, Lcom/alibaba/fastjson2/reader/ObjectReader1;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 42
    :cond_f
    invoke-virtual {p0, v1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    :cond_10
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
