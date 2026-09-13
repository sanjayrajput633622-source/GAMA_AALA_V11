.class public abstract Lcom/alibaba/fastjson2/reader/ObjectReaderBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson2/reader/ObjectReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

.field protected final buildFunction:Lcom/alibaba/fastjson2/function/Function;

.field protected final creator:Lcom/alibaba/fastjson2/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final disableSmartMatch:Z

.field protected extraFieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final features:J

.field protected hasDefaultValue:Z

.field protected final objectClass:Ljava/lang/Class;

.field protected final serializable:Z

.field protected typeName:Ljava/lang/String;

.field protected typeNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Function;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/function/Function;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 10
    .line 11
    iput-wide p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 12
    .line 13
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeName:Ljava/lang/String;

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 21
    move-result-wide p2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-wide p2, v0

    .line 24
    .line 25
    :goto_0
    iput-wide p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeNameHash:J

    .line 26
    const/4 p2, 0x0

    .line 27
    const/4 p3, 0x1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-class p6, Ljava/io/Serializable;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    move p1, p3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move p1, p2

    .line 41
    .line 42
    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 43
    .line 44
    const-wide/high16 v2, 0x200000000000000L

    .line 45
    and-long/2addr p4, v2

    .line 46
    .line 47
    cmp-long p1, p4, v0

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    move p2, p3

    .line 51
    .line 52
    :cond_2
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->disableSmartMatch:Z

    .line 53
    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/d;->a(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->extraFieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    :goto_0
    const-string v0, "is"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    const/4 v0, 0x2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 37
    .line 38
    const-class v2, Ljava/lang/Boolean;

    .line 39
    .line 40
    if-eq v1, v2, :cond_2

    .line 41
    .line 42
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    if-ne v1, v2, :cond_3

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0, p1, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    return-void

    .line 49
    .line 50
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 51
    .line 52
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 53
    and-long/2addr p4, v0

    .line 54
    .line 55
    const-wide/16 v0, 0x0

    .line 56
    .line 57
    cmp-long p1, p4, v0

    .line 58
    .line 59
    if-nez p1, :cond_4

    .line 60
    return-void

    .line 61
    .line 62
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 63
    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string p4, "Unknown Property "

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p2

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p1
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->c(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->d(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public final checkAutoType(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchTypedAny()Z

    .line 8
    move-result v2

    .line 9
    const/4 v8, 0x0

    .line 10
    .line 11
    if-eqz v2, :cond_9

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    iget-object v9, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 18
    .line 19
    iget-wide v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 20
    .line 21
    or-long v4, p3, v4

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 25
    move-result-wide v10

    .line 26
    move-wide v3, v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    const-string v12, " -> "

    .line 33
    .line 34
    const-string v13, "type not match. "

    .line 35
    .line 36
    const-wide/16 v14, 0x0

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    move-object/from16 v5, p2

    .line 41
    .line 42
    move-wide/from16 v6, p3

    .line 43
    .line 44
    .line 45
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    .line 46
    move-result-object v3

    .line 47
    move-object v4, v5

    .line 48
    move-wide v5, v6

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    move-result v7

    .line 65
    .line 66
    if-nez v7, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 70
    move-result-wide v1

    .line 71
    .line 72
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 73
    .line 74
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 75
    and-long/2addr v1, v5

    .line 76
    .line 77
    cmp-long v1, v1, v14

    .line 78
    .line 79
    if-eqz v1, :cond_0

    .line 80
    move-object v2, v4

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v2

    .line 109
    .line 110
    .line 111
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 112
    throw v1

    .line 113
    :cond_1
    move-object v2, v3

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 117
    move-result-object v1

    .line 118
    return-object v1

    .line 119
    .line 120
    :cond_3
    move-wide/from16 v5, p3

    .line 121
    move-wide v2, v3

    .line 122
    .line 123
    move-object/from16 v4, p2

    .line 124
    .line 125
    .line 126
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 127
    move-result-object v5

    .line 128
    .line 129
    if-eqz v5, :cond_8

    .line 130
    .line 131
    .line 132
    invoke-interface {v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 141
    move-result v1

    .line 142
    .line 143
    if-nez v1, :cond_5

    .line 144
    .line 145
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 146
    .line 147
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 148
    and-long/2addr v1, v10

    .line 149
    .line 150
    cmp-long v1, v1, v14

    .line 151
    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 156
    move-result-object v1

    .line 157
    return-object v1

    .line 158
    .line 159
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 160
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeName:Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 179
    move-result-object v3

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 190
    throw v1

    .line 191
    .line 192
    .line 193
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 194
    move-result-wide v6

    .line 195
    .line 196
    cmp-long v1, v2, v6

    .line 197
    .line 198
    if-nez v1, :cond_6

    .line 199
    return-object v0

    .line 200
    .line 201
    :cond_6
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 202
    .line 203
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 204
    and-long/2addr v1, v10

    .line 205
    .line 206
    cmp-long v1, v1, v14

    .line 207
    .line 208
    if-nez v1, :cond_7

    .line 209
    return-object v8

    .line 210
    :cond_7
    return-object v5

    .line 211
    .line 212
    :cond_8
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 213
    .line 214
    const-string v3, "auotype not support"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    .line 221
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 222
    throw v2

    .line 223
    :cond_9
    return-object v8
.end method

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->e(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createInstance(J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->f(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->h(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->j(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->k(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->l(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 3
    return-object v0
.end method

.method public synthetic getBuildFunction()Lcom/alibaba/fastjson2/function/Function;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->m(Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getFeatures()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->n(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->o(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->p(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->q(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object p1

    return-object p1
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public synthetic getTypeKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->s(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getTypeKeyHash()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->t(Lcom/alibaba/fastjson2/reader/ObjectReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeName:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeName:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeName:Ljava/lang/String;

    .line 17
    return-object v0
.end method

.method public getTypeNameHash()J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeNameHash:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeNameHash:J

    .line 21
    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeNameHash:J

    .line 23
    return-wide v0
.end method

.method public initDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public initStringFieldAsEmpty(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    return-void
.end method

.method public processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->extraFieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    or-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    move-result-wide v0

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 10
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 11
    const-class v4, Ljava/lang/Boolean;

    if-eq v1, v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v4, :cond_2

    .line 12
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_2
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->extraProcessor:Lcom/alibaba/fastjson2/filter/ExtraProcessor;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p3

    .line 15
    invoke-interface {v0, p3}, Lcom/alibaba/fastjson2/filter/ExtraProcessor;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object p4

    .line 16
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    invoke-interface {v0, p2, p3, p1}, Lcom/alibaba/fastjson2/filter/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_3
    invoke-virtual {p1, p3, p4}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide p2

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    cmp-long p2, p2, v2

    if-nez p2, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    return-void

    .line 20
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown Property "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "expect {, but [, class "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeName:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, ", parent fieldName "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 49
    move-result-wide p4

    .line 50
    .line 51
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 52
    .line 53
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 54
    and-long/2addr p4, v0

    .line 55
    .line 56
    const-wide/16 v0, 0x0

    .line 57
    .line 58
    cmp-long p4, p4, v0

    .line 59
    .line 60
    if-eqz p4, :cond_3

    .line 61
    .line 62
    if-nez p2, :cond_1

    .line 63
    .line 64
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 74
    move-result p2

    .line 75
    .line 76
    if-nez p2, :cond_2

    .line 77
    const/4 p1, 0x0

    .line 78
    return-object p1

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 82
    move-result p2

    .line 83
    const/4 p4, 0x1

    .line 84
    .line 85
    if-ne p2, p4, :cond_3

    .line 86
    const/4 p2, 0x0

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    .line 93
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p3}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p1
.end method

.method public synthetic readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->u(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->v(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValueWithLCase(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;JJ)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 4
    move-result p5

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 10
    move-result-wide p5

    .line 11
    .line 12
    cmp-long p3, p5, p3

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p5, p6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public synthetic readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->w(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->x(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->y(Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    .line 17
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 19
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object v4

    .line 21
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFeatures()J

    move-result-wide v5

    or-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v5

    .line 22
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_3

    .line 23
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v9, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v9, v5

    cmp-long v0, v9, v7

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide v4, v5

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v0

    return-object v1

    :cond_3
    move-wide v9, v5

    move-object/from16 v6, p0

    .line 26
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-nez v0, :cond_7

    .line 27
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v0

    const/16 v5, 0x74

    if-eq v0, v5, :cond_6

    const/16 v5, 0x66

    if-ne v0, v5, :cond_4

    goto :goto_0

    :cond_4
    const/16 v5, 0x22

    if-eq v0, v5, :cond_7

    const/16 v5, 0x27

    if-eq v0, v5, :cond_7

    const/16 v5, 0x7d

    if-ne v0, v5, :cond_5

    goto :goto_1

    .line 28
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_6
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    return-object v4

    :cond_7
    :goto_1
    const/4 v0, 0x0

    move-object v5, v4

    .line 30
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v11

    if-eqz v11, :cond_a

    if-nez v5, :cond_8

    .line 31
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->createInstance(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 32
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v9

    cmp-long v0, v2, v7

    if-eqz v0, :cond_8

    .line 33
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    .line 34
    :cond_8
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 35
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getBuildFunction()Lcom/alibaba/fastjson2/function/Function;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 36
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v5

    .line 37
    :cond_a
    iget-object v11, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 38
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v12

    .line 39
    iget-object v14, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-nez v14, :cond_b

    .line 40
    invoke-virtual {v11}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    move-result-object v14

    :cond_b
    move-object v15, v14

    if-nez v0, :cond_15

    .line 41
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeKeyHash()J

    move-result-wide v16

    cmp-long v14, v12, v16

    if-nez v14, :cond_15

    .line 42
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFeatures()J

    move-result-wide v16

    or-long v16, v2, v16

    move-object/from16 p2, v5

    iget-wide v4, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long v19, v16, v4

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long v4, v19, v4

    cmp-long v4, v4, v7

    if-nez v4, :cond_c

    if-eqz v15, :cond_16

    .line 43
    :cond_c
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v16

    if-eqz v15, :cond_d

    .line 44
    iget-object v4, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    move-object/from16 v18, v4

    invoke-interface/range {v15 .. v20}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v4

    move-wide/from16 v21, v16

    move-wide/from16 v7, v19

    if-nez v4, :cond_e

    .line 45
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-interface {v15, v4, v5, v7, v8}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 46
    invoke-virtual {v11, v4}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    goto :goto_3

    :cond_d
    move-wide/from16 v21, v16

    move-wide/from16 v7, v19

    :cond_e
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_f

    move-wide/from16 v14, v21

    .line 47
    invoke-virtual {v6, v11, v14, v15}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    :cond_f
    if-nez v4, :cond_11

    .line 48
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v4

    .line 49
    iget-object v5, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-virtual {v11, v4, v5, v7, v8}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    if-eqz v5, :cond_10

    move-object/from16 v23, v5

    move-object v5, v4

    move-object/from16 v4, v23

    goto :goto_4

    .line 50
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable ObjectReader found for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v5, 0x0

    :goto_4
    if-ne v4, v6, :cond_12

    move-object/from16 v5, p2

    goto :goto_6

    .line 51
    :cond_12
    invoke-interface {v4, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v7

    if-eqz v7, :cond_13

    if-nez v5, :cond_13

    .line 52
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v5

    :cond_13
    move-object v8, v5

    .line 53
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFeatures()J

    move-result-wide v9

    or-long/2addr v2, v9

    move-object v0, v4

    move-wide v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v7, :cond_14

    .line 55
    invoke-virtual {v7, v0, v8}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    return-object v0

    :cond_15
    move-object/from16 p2, v5

    .line 56
    :cond_16
    invoke-virtual {v6, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v4

    if-nez v4, :cond_17

    .line 57
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFeatures()J

    move-result-wide v7

    or-long/2addr v7, v2

    invoke-virtual {v1, v7, v8}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 58
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v4

    .line 59
    invoke-virtual {v6, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v4

    :cond_17
    if-nez p2, :cond_18

    .line 60
    iget-object v5, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v7, v5, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->createInstance(J)Ljava/lang/Object;

    move-result-object v5

    goto :goto_5

    :cond_18
    move-object/from16 v5, p2

    :goto_5
    if-nez v4, :cond_19

    .line 61
    invoke-virtual {v6, v1, v5, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    goto :goto_6

    .line 62
    :cond_19
    invoke-virtual {v4, v1, v5}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_2
.end method

.method public varargs synthetic readObject(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->z(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFeatures()J

    move-result-wide v1

    or-long/2addr v1, p3

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v0

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setAutoTypeBeforeHandler(Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 3
    return-void
.end method

.method public synthetic setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->A(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
