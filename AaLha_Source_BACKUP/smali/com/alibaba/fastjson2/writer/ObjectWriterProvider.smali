.class public Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/writer/ObjectWriterProvider$VoidObjectWriter;
    }
.end annotation


# static fields
.field static final ENUM:I = 0x4000

.field static final NOT_REFERENCES_TYPE_HASH_CODES:[I

.field static final PRIMITIVE_HASH_CODES:[I

.field static STACK_TRACE_ELEMENT_WRITER:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter; = null

.field static final TYPE_DATE_MASK:I = 0x10

.field static final TYPE_DECIMAL_MASK:I = 0x8

.field static final TYPE_ENUM_MASK:I = 0x20

.field static final TYPE_INT32_MASK:I = 0x2

.field static final TYPE_INT64_MASK:I = 0x4


# instance fields
.field final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ">;"
        }
    .end annotation
.end field

.field final cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ">;"
        }
    .end annotation
.end field

.field final creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

.field final mixInCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field volatile userDefineMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    const/16 v3, 0x1c

    .line 21
    .line 22
    new-array v4, v3, [Ljava/lang/Class;

    .line 23
    const/4 v5, 0x0

    .line 24
    .line 25
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 26
    .line 27
    aput-object v6, v4, v5

    .line 28
    .line 29
    const-class v6, Ljava/lang/Boolean;

    .line 30
    const/4 v7, 0x1

    .line 31
    .line 32
    aput-object v6, v4, v7

    .line 33
    const/4 v6, 0x2

    .line 34
    .line 35
    const-class v8, Ljava/lang/Character;

    .line 36
    .line 37
    aput-object v8, v4, v6

    .line 38
    const/4 v8, 0x3

    .line 39
    .line 40
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    aput-object v9, v4, v8

    .line 43
    .line 44
    const-class v9, Ljava/lang/Byte;

    .line 45
    const/4 v10, 0x4

    .line 46
    .line 47
    aput-object v9, v4, v10

    .line 48
    .line 49
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 50
    const/4 v10, 0x5

    .line 51
    .line 52
    aput-object v9, v4, v10

    .line 53
    .line 54
    const-class v9, Ljava/lang/Short;

    .line 55
    const/4 v10, 0x6

    .line 56
    .line 57
    aput-object v9, v4, v10

    .line 58
    .line 59
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 60
    const/4 v10, 0x7

    .line 61
    .line 62
    aput-object v9, v4, v10

    .line 63
    .line 64
    const-class v9, Ljava/lang/Integer;

    .line 65
    .line 66
    const/16 v10, 0x8

    .line 67
    .line 68
    aput-object v9, v4, v10

    .line 69
    .line 70
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    const/16 v10, 0x9

    .line 73
    .line 74
    aput-object v9, v4, v10

    .line 75
    .line 76
    const-class v9, Ljava/lang/Long;

    .line 77
    .line 78
    const/16 v10, 0xa

    .line 79
    .line 80
    aput-object v9, v4, v10

    .line 81
    .line 82
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 83
    .line 84
    const/16 v10, 0xb

    .line 85
    .line 86
    aput-object v9, v4, v10

    .line 87
    .line 88
    const-class v9, Ljava/lang/Float;

    .line 89
    .line 90
    const/16 v10, 0xc

    .line 91
    .line 92
    aput-object v9, v4, v10

    .line 93
    .line 94
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 95
    .line 96
    const/16 v10, 0xd

    .line 97
    .line 98
    aput-object v9, v4, v10

    .line 99
    .line 100
    const-class v9, Ljava/lang/Double;

    .line 101
    .line 102
    const/16 v10, 0xe

    .line 103
    .line 104
    aput-object v9, v4, v10

    .line 105
    .line 106
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 107
    .line 108
    const/16 v10, 0xf

    .line 109
    .line 110
    aput-object v9, v4, v10

    .line 111
    .line 112
    const-class v9, Ljava/math/BigInteger;

    .line 113
    .line 114
    const/16 v10, 0x10

    .line 115
    .line 116
    aput-object v9, v4, v10

    .line 117
    .line 118
    const-class v9, Ljava/math/BigDecimal;

    .line 119
    .line 120
    const/16 v10, 0x11

    .line 121
    .line 122
    aput-object v9, v4, v10

    .line 123
    .line 124
    const/16 v9, 0x12

    .line 125
    .line 126
    const-class v10, Ljava/lang/String;

    .line 127
    .line 128
    aput-object v10, v4, v9

    .line 129
    .line 130
    const-class v9, Ljava/util/Currency;

    .line 131
    .line 132
    const/16 v11, 0x13

    .line 133
    .line 134
    aput-object v9, v4, v11

    .line 135
    .line 136
    const-class v9, Ljava/util/Date;

    .line 137
    .line 138
    const/16 v11, 0x14

    .line 139
    .line 140
    aput-object v9, v4, v11

    .line 141
    .line 142
    const-class v9, Ljava/util/UUID;

    .line 143
    .line 144
    const/16 v11, 0x15

    .line 145
    .line 146
    aput-object v9, v4, v11

    .line 147
    .line 148
    const-class v9, Ljava/util/Locale;

    .line 149
    .line 150
    const/16 v11, 0x16

    .line 151
    .line 152
    aput-object v9, v4, v11

    .line 153
    .line 154
    const/16 v9, 0x17

    .line 155
    .line 156
    aput-object v10, v4, v9

    .line 157
    .line 158
    const-class v9, Ljava/lang/StackTraceElement;

    .line 159
    .line 160
    const/16 v10, 0x18

    .line 161
    .line 162
    aput-object v9, v4, v10

    .line 163
    .line 164
    const/16 v9, 0x19

    .line 165
    .line 166
    aput-object v0, v4, v9

    .line 167
    .line 168
    const/16 v0, 0x1a

    .line 169
    .line 170
    aput-object v1, v4, v0

    .line 171
    .line 172
    const/16 v0, 0x1b

    .line 173
    .line 174
    aput-object v2, v4, v0

    .line 175
    .line 176
    new-array v0, v3, [I

    .line 177
    .line 178
    :goto_0
    if-ge v5, v3, :cond_0

    .line 179
    .line 180
    aget-object v1, v4, v5

    .line 181
    .line 182
    .line 183
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 184
    move-result v1

    .line 185
    .line 186
    aput v1, v0, v5

    .line 187
    .line 188
    add-int/lit8 v5, v5, 0x1

    .line 189
    goto :goto_0

    .line 190
    .line 191
    .line 192
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 193
    .line 194
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->PRIMITIVE_HASH_CODES:[I

    .line 195
    .line 196
    const/16 v1, 0x1f

    .line 197
    .line 198
    .line 199
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 200
    move-result-object v0

    .line 201
    array-length v1, v0

    .line 202
    sub-int/2addr v1, v7

    .line 203
    .line 204
    const-class v2, Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 208
    move-result v2

    .line 209
    .line 210
    aput v2, v0, v1

    .line 211
    array-length v1, v0

    .line 212
    sub-int/2addr v1, v6

    .line 213
    .line 214
    const-class v2, [I

    .line 215
    .line 216
    .line 217
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 218
    move-result v2

    .line 219
    .line 220
    aput v2, v0, v1

    .line 221
    array-length v1, v0

    .line 222
    sub-int/2addr v1, v8

    .line 223
    .line 224
    const-class v2, [J

    .line 225
    .line 226
    .line 227
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 228
    move-result v2

    .line 229
    .line 230
    aput v2, v0, v1

    .line 231
    .line 232
    .line 233
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 234
    .line 235
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->NOT_REFERENCES_TYPE_HASH_CODES:[I

    .line 236
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 6
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 12
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    return-void
.end method

.method public static synthetic a(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 16
    move-result p3

    .line 17
    .line 18
    .line 19
    sparse-switch p3, :sswitch_data_0

    .line 20
    .line 21
    goto/16 :goto_0

    .line 22
    .line 23
    :sswitch_0
    const-string p0, "label"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 35
    move-result p0

    .line 36
    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    .line 40
    return-void

    .line 41
    .line 42
    :sswitch_1
    const-string p0, "jsonDirect"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p0

    .line 47
    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    check-cast p1, Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    move-result p0

    .line 55
    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    iget-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 59
    .line 60
    const-wide/high16 v0, 0x4000000000000L

    .line 61
    or-long/2addr p0, v0

    .line 62
    .line 63
    iput-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 64
    return-void

    .line 65
    .line 66
    :sswitch_2
    const-string p0, "name"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result p0

    .line 71
    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    check-cast p1, Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 78
    move-result p0

    .line 79
    .line 80
    if-nez p0, :cond_0

    .line 81
    .line 82
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 83
    return-void

    .line 84
    .line 85
    :sswitch_3
    const-string p0, "serialize"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p0

    .line 90
    .line 91
    if-eqz p0, :cond_0

    .line 92
    .line 93
    check-cast p1, Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    move-result p0

    .line 98
    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 p0, 0x1

    .line 101
    .line 102
    iput-boolean p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 103
    return-void

    .line 104
    .line 105
    :sswitch_4
    const-string p0, "defaultValue"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result p0

    .line 110
    .line 111
    if-eqz p0, :cond_0

    .line 112
    .line 113
    check-cast p1, Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 117
    move-result p0

    .line 118
    .line 119
    if-nez p0, :cond_0

    .line 120
    .line 121
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 122
    return-void

    .line 123
    .line 124
    :sswitch_5
    const-string p3, "serialzeFeatures"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result p3

    .line 129
    .line 130
    if-eqz p3, :cond_0

    .line 131
    .line 132
    check-cast p1, [Ljava/lang/Enum;

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->applyFeatures(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/Enum;)V

    .line 136
    return-void

    .line 137
    .line 138
    :sswitch_6
    const-string p0, "unwrapped"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    move-result p0

    .line 143
    .line 144
    if-eqz p0, :cond_0

    .line 145
    .line 146
    check-cast p1, Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 150
    move-result p0

    .line 151
    .line 152
    if-eqz p0, :cond_0

    .line 153
    .line 154
    iget-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 155
    .line 156
    const-wide/high16 v0, 0x2000000000000L

    .line 157
    or-long/2addr p0, v0

    .line 158
    .line 159
    iput-wide p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 160
    return-void

    .line 161
    .line 162
    :sswitch_7
    const-string p0, "ordinal"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result p0

    .line 167
    .line 168
    if-eqz p0, :cond_0

    .line 169
    .line 170
    check-cast p1, Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 174
    move-result p0

    .line 175
    .line 176
    if-eqz p0, :cond_0

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 180
    move-result p0

    .line 181
    .line 182
    iput p0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 183
    return-void

    .line 184
    .line 185
    :sswitch_8
    const-string p3, "format"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result p3

    .line 190
    .line 191
    if-eqz p3, :cond_0

    .line 192
    .line 193
    check-cast p1, Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    invoke-direct {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->loadJsonFieldFormat(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/String;)V

    .line 197
    return-void

    .line 198
    .line 199
    :sswitch_9
    const-string p0, "serializeUsing"

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result p0

    .line 204
    .line 205
    if-eqz p0, :cond_0

    .line 206
    .line 207
    check-cast p1, Ljava/lang/Class;

    .line 208
    .line 209
    const-class p0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 213
    move-result p0

    .line 214
    .line 215
    if-eqz p0, :cond_0

    .line 216
    .line 217
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :catchall_0
    :cond_0
    :goto_0
    return-void

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    :sswitch_data_0
    .sparse-switch
        -0x51c06e7c -> :sswitch_9
        -0x4ba00809 -> :sswitch_8
        -0x47f1458f -> :sswitch_7
        -0x3ade7834 -> :sswitch_6
        -0x3814e684 -> :sswitch_5
        -0x27497450 -> :sswitch_4
        -0x222e9920 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0xbd26f1 -> :sswitch_1
        0x61f7ef4 -> :sswitch_0
    .end sparse-switch
.end method

.method private applyFeatures(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/Enum;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p2

    .line 4
    .line 5
    if-ge v1, v2, :cond_e

    .line 6
    .line 7
    aget-object v2, p2, v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 18
    move-result v3

    .line 19
    const/4 v4, -0x1

    .line 20
    .line 21
    .line 22
    sparse-switch v3, :sswitch_data_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :sswitch_0
    const-string v3, "WriteMapNullValue"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    const/16 v4, 0xd

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :sswitch_1
    const-string v3, "WriteClassName"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_1
    const/16 v4, 0xc

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_2
    const-string v3, "WriteNullBooleanAsFalse"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_2
    const/16 v4, 0xb

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :sswitch_3
    const-string v3, "WriteNonStringValueAsString"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v2

    .line 73
    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_3
    const/16 v4, 0xa

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_4
    const-string v3, "WriteNullListAsEmpty"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v2

    .line 87
    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_4
    const/16 v4, 0x9

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :sswitch_5
    const-string v3, "NotWriteRootClassName"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v2

    .line 101
    .line 102
    if-nez v2, :cond_5

    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_5
    const/16 v4, 0x8

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :sswitch_6
    const-string v3, "WriteNullStringAsEmpty"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v2

    .line 115
    .line 116
    if-nez v2, :cond_6

    .line 117
    goto :goto_1

    .line 118
    :cond_6
    const/4 v4, 0x7

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :sswitch_7
    const-string v3, "BrowserCompatible"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v2

    .line 126
    .line 127
    if-nez v2, :cond_7

    .line 128
    goto :goto_1

    .line 129
    :cond_7
    const/4 v4, 0x6

    .line 130
    goto :goto_1

    .line 131
    .line 132
    :sswitch_8
    const-string v3, "WriteEnumUsingToString"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v2

    .line 137
    .line 138
    if-nez v2, :cond_8

    .line 139
    goto :goto_1

    .line 140
    :cond_8
    const/4 v4, 0x5

    .line 141
    goto :goto_1

    .line 142
    .line 143
    :sswitch_9
    const-string v3, "WriteBigDecimalAsPlain"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result v2

    .line 148
    .line 149
    if-nez v2, :cond_9

    .line 150
    goto :goto_1

    .line 151
    :cond_9
    const/4 v4, 0x4

    .line 152
    goto :goto_1

    .line 153
    .line 154
    :sswitch_a
    const-string v3, "UseISO8601DateFormat"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v2

    .line 159
    .line 160
    if-nez v2, :cond_a

    .line 161
    goto :goto_1

    .line 162
    :cond_a
    const/4 v4, 0x3

    .line 163
    goto :goto_1

    .line 164
    .line 165
    :sswitch_b
    const-string v3, "IgnoreErrorGetter"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v2

    .line 170
    .line 171
    if-nez v2, :cond_b

    .line 172
    goto :goto_1

    .line 173
    :cond_b
    const/4 v4, 0x2

    .line 174
    goto :goto_1

    .line 175
    .line 176
    :sswitch_c
    const-string v3, "WriteNullNumberAsZero"

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v2

    .line 181
    .line 182
    if-nez v2, :cond_c

    .line 183
    goto :goto_1

    .line 184
    :cond_c
    const/4 v4, 0x1

    .line 185
    goto :goto_1

    .line 186
    .line 187
    :sswitch_d
    const-string v3, "DisableCircularReferenceDetect"

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    move-result v2

    .line 192
    .line 193
    if-nez v2, :cond_d

    .line 194
    goto :goto_1

    .line 195
    :cond_d
    move v4, v0

    .line 196
    .line 197
    .line 198
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :pswitch_0
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 203
    .line 204
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 205
    .line 206
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 207
    or-long/2addr v2, v4

    .line 208
    .line 209
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 210
    .line 211
    goto/16 :goto_2

    .line 212
    .line 213
    :pswitch_1
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 214
    .line 215
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 216
    .line 217
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 218
    or-long/2addr v2, v4

    .line 219
    .line 220
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 221
    .line 222
    goto/16 :goto_2

    .line 223
    .line 224
    :pswitch_2
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 225
    .line 226
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 227
    .line 228
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 229
    or-long/2addr v2, v4

    .line 230
    .line 231
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 232
    goto :goto_2

    .line 233
    .line 234
    :pswitch_3
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 235
    .line 236
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 237
    .line 238
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 239
    or-long/2addr v2, v4

    .line 240
    .line 241
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 242
    goto :goto_2

    .line 243
    .line 244
    :pswitch_4
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 245
    .line 246
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 247
    .line 248
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 249
    or-long/2addr v2, v4

    .line 250
    .line 251
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 252
    goto :goto_2

    .line 253
    .line 254
    :pswitch_5
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 255
    .line 256
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 257
    .line 258
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 259
    or-long/2addr v2, v4

    .line 260
    .line 261
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 262
    goto :goto_2

    .line 263
    .line 264
    :pswitch_6
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 265
    .line 266
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 267
    .line 268
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 269
    or-long/2addr v2, v4

    .line 270
    .line 271
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 272
    goto :goto_2

    .line 273
    .line 274
    :pswitch_7
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 275
    .line 276
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 277
    .line 278
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 279
    or-long/2addr v2, v4

    .line 280
    .line 281
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 282
    goto :goto_2

    .line 283
    .line 284
    :pswitch_8
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 285
    .line 286
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 287
    .line 288
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 289
    or-long/2addr v2, v4

    .line 290
    .line 291
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 292
    goto :goto_2

    .line 293
    .line 294
    :pswitch_9
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 295
    .line 296
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 297
    .line 298
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 299
    or-long/2addr v2, v4

    .line 300
    .line 301
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 302
    goto :goto_2

    .line 303
    .line 304
    :pswitch_a
    const-string v2, "iso8601"

    .line 305
    .line 306
    iput-object v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 307
    goto :goto_2

    .line 308
    .line 309
    :pswitch_b
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 310
    .line 311
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 312
    .line 313
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 314
    or-long/2addr v2, v4

    .line 315
    .line 316
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 317
    goto :goto_2

    .line 318
    .line 319
    :pswitch_c
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 320
    .line 321
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 322
    .line 323
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 324
    or-long/2addr v2, v4

    .line 325
    .line 326
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 327
    goto :goto_2

    .line 328
    .line 329
    :pswitch_d
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 330
    .line 331
    const-wide/high16 v4, 0x400000000000000L

    .line 332
    or-long/2addr v2, v4

    .line 333
    .line 334
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 335
    .line 336
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    :cond_e
    return-void

    .line 340
    nop

    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    :sswitch_data_0
    .sparse-switch
        -0x7e4756b9 -> :sswitch_d
        -0x737c2857 -> :sswitch_c
        -0x6a158c1f -> :sswitch_b
        -0x1f6b42be -> :sswitch_a
        -0x14cc04b8 -> :sswitch_9
        -0x13fc7e70 -> :sswitch_8
        -0xca1b004 -> :sswitch_7
        -0x61b295c -> :sswitch_6
        -0x3c0c42b -> :sswitch_5
        0x3c26e3f7 -> :sswitch_4
        0x5a8cc575 -> :sswitch_3
        0x6bc5c64f -> :sswitch_2
        0x700b1b24 -> :sswitch_1
        0x7a300f8d -> :sswitch_0
    .end sparse-switch

    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic b(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJSONType1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    .line 4
    return-void
.end method

.method private createEnumWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    move-object v4, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v4, p1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v4, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;

    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v1, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    instance-of v2, v1, Ljava/lang/reflect/Field;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    .line 45
    :try_start_0
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 50
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    :cond_1
    :goto_1
    move-object v5, p1

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_2
    instance-of v2, v1, Ljava/lang/reflect/Method;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    .line 59
    :try_start_1
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :goto_2
    new-instance p1, Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 74
    .line 75
    iget-boolean p1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    return-object v0

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    .line 85
    const/4 v3, 0x0

    .line 86
    .line 87
    const-wide/16 v7, 0x0

    .line 88
    .line 89
    .line 90
    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V

    .line 91
    return-object v2
.end method

.method public static isNotReferenceDetect(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->NOT_REFERENCES_TYPE_HASH_CODES:[I

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-gez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 16
    move-result v0

    .line 17
    .line 18
    and-int/lit16 v0, v0, 0x4000

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    const-class v0, Ljava/lang/Enum;

    .line 27
    .line 28
    if-ne p0, v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method public static isPrimitiveOrEnum(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->PRIMITIVE_HASH_CODES:[I

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-gez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 16
    move-result v0

    .line 17
    .line 18
    and-int/lit16 v0, v0, 0x4000

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    const-class v0, Ljava/lang/Enum;

    .line 27
    .line 28
    if-ne p0, v0, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method private loadFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->name()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->defaultValue()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->format()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->loadJsonFieldFormat(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->label()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    .line 44
    .line 45
    :cond_2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 46
    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->serialize()Z

    .line 51
    move-result v0

    .line 52
    .line 53
    xor-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 64
    .line 65
    const-wide/high16 v2, 0x2000000000000L

    .line 66
    or-long/2addr v0, v2

    .line 67
    .line 68
    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->serializeFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 72
    move-result-object v0

    .line 73
    const/4 v1, 0x0

    .line 74
    :goto_0
    array-length v2, v0

    .line 75
    .line 76
    if-ge v1, v2, :cond_5

    .line 77
    .line 78
    aget-object v2, v0, v1

    .line 79
    .line 80
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 81
    .line 82
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 83
    or-long/2addr v3, v5

    .line 84
    .line 85
    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->ordinal()I

    .line 92
    move-result v0

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iput v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->value()Z

    .line 100
    move-result v0

    .line 101
    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 105
    .line 106
    const-wide/high16 v2, 0x1000000000000L

    .line 107
    or-long/2addr v0, v2

    .line 108
    .line 109
    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 110
    .line 111
    .line 112
    :cond_7
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->jsonDirect()Z

    .line 113
    move-result v0

    .line 114
    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 118
    .line 119
    const-wide/high16 v2, 0x4000000000000L

    .line 120
    or-long/2addr v0, v2

    .line 121
    .line 122
    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 123
    .line 124
    .line 125
    :cond_8
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    .line 126
    move-result-object p2

    .line 127
    .line 128
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 132
    move-result v0

    .line 133
    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 137
    :cond_9
    return-void
.end method

.method private loadJsonFieldFormat(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    const/16 v0, 0x54

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const-string v0, "\'T\'"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    const-string v1, "T"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    .line 42
    :cond_1
    return-void
.end method

.method public static match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    if-ne p0, p2, :cond_0

    .line 14
    return v0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    return v1

    .line 23
    .line 24
    :cond_1
    instance-of p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 25
    .line 26
    if-eqz p0, :cond_4

    .line 27
    .line 28
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 29
    .line 30
    iget-object p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    if-ne p0, p2, :cond_2

    .line 43
    return v0

    .line 44
    .line 45
    :cond_2
    iget-object p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyType:Ljava/lang/reflect/Type;

    .line 46
    .line 47
    .line 48
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    if-ne p0, p2, :cond_3

    .line 58
    return v0

    .line 59
    :cond_3
    return v1

    .line 60
    .line 61
    :cond_4
    instance-of p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    .line 62
    .line 63
    if-eqz p0, :cond_6

    .line 64
    .line 65
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    .line 66
    .line 67
    iget-object p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->itemType:Ljava/lang/reflect/Type;

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 71
    move-result-object p0

    .line 72
    .line 73
    if-eqz p0, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 77
    move-result-object p0

    .line 78
    .line 79
    if-ne p0, p2, :cond_5

    .line 80
    return v0

    .line 81
    :cond_5
    return v1

    .line 82
    .line 83
    :cond_6
    instance-of p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 84
    .line 85
    if-eqz p0, :cond_8

    .line 86
    const/4 p0, 0x0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, p1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 92
    .line 93
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 94
    move v2, v1

    .line 95
    .line 96
    .line 97
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 98
    move-result v3

    .line 99
    .line 100
    if-ge v2, v3, :cond_8

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    check-cast v3, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 107
    .line 108
    instance-of v4, v3, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    .line 109
    .line 110
    if-eqz v4, :cond_7

    .line 111
    .line 112
    check-cast v3, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/alibaba/fastjson2/writer/FieldWriter;->initObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v3, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z

    .line 118
    move-result v3

    .line 119
    .line 120
    if-eqz v3, :cond_7

    .line 121
    return v0

    .line 122
    .line 123
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 124
    goto :goto_0

    .line 125
    :cond_8
    return v1
.end method

.method private processAnnotations(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    .line 3
    .line 4
    if-ge v0, v1, :cond_3

    .line 5
    .line 6
    aget-object v1, p2, v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    const-class v3, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->loadFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    const-string v3, "java.beans.Transient"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v3

    .line 35
    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    const-string v3, "com.alibaba.fastjson.annotation.JSONField"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->processJSONField1x(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v1, 0x1

    .line 51
    .line 52
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 53
    .line 54
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->isTransient:Z

    .line 55
    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return-void
.end method

.method private processJSONField1x(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/alibaba/fastjson2/writer/j;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/fastjson2/writer/j;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 13
    return-void
.end method


# virtual methods
.method public cleanup(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/Class;)V

    return-void
.end method

.method public cleanup(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-static {v3, v2, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Type;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-static {v3, v2, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public cleanupMixIn()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 16
    return-void
.end method

.method public final varargs configEnumAsJavaBean([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 12
    move-result-object v3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 11

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-class v2, Ljava/lang/Object;

    .line 24
    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const-class v2, Ljava/lang/Enum;

    .line 30
    .line 31
    if-eq v1, v2, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 35
    .line 36
    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    move v1, v0

    .line 44
    .line 45
    :goto_0
    iget-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 46
    array-length v3, v2

    .line 47
    .line 48
    if-ge v1, v3, :cond_2

    .line 49
    .line 50
    aget-object v2, v2, v1

    .line 51
    .line 52
    if-ne v2, p2, :cond_1

    .line 53
    .line 54
    iget-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    .line 55
    array-length v3, v2

    .line 56
    .line 57
    if-ge v1, v3, :cond_1

    .line 58
    .line 59
    aget-object v2, v2, v1

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    iput-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 77
    move-result-object v1

    .line 78
    const/4 v2, 0x0

    .line 79
    move v4, v0

    .line 80
    move-object v3, v2

    .line 81
    :goto_2
    array-length v5, v1

    .line 82
    .line 83
    const-string v6, "com.alibaba.fastjson.annotation.JSONType"

    .line 84
    .line 85
    const-class v7, Lcom/alibaba/fastjson2/annotation/JSONType;

    .line 86
    const/4 v8, 0x1

    .line 87
    .line 88
    if-ge v4, v5, :cond_6

    .line 89
    .line 90
    aget-object v2, v1, v4

    .line 91
    .line 92
    .line 93
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 98
    move-result-object v7

    .line 99
    .line 100
    check-cast v7, Lcom/alibaba/fastjson2/annotation/JSONType;

    .line 101
    .line 102
    if-ne v7, v2, :cond_3

    .line 103
    goto :goto_3

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    const-string v9, "kotlin.Metadata"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v9

    .line 114
    .line 115
    if-nez v9, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v5

    .line 120
    .line 121
    if-nez v5, :cond_4

    .line 122
    goto :goto_3

    .line 123
    :cond_4
    move-object v3, v2

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_5
    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    .line 127
    .line 128
    .line 129
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getKotlinConstructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    .line 130
    .line 131
    .line 132
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getKotlinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    iput-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    .line 136
    .line 137
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 138
    move-object v2, v7

    .line 139
    goto :goto_2

    .line 140
    .line 141
    :cond_6
    if-nez v2, :cond_9

    .line 142
    .line 143
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 144
    .line 145
    .line 146
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    check-cast v1, Ljava/lang/Class;

    .line 150
    .line 151
    if-eqz v1, :cond_9

    .line 152
    .line 153
    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->mixIn:Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 157
    move-result-object v1

    .line 158
    move v4, v0

    .line 159
    :goto_4
    array-length v5, v1

    .line 160
    .line 161
    if-ge v4, v5, :cond_9

    .line 162
    .line 163
    aget-object v2, v1, v4

    .line 164
    .line 165
    .line 166
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 167
    move-result-object v5

    .line 168
    .line 169
    .line 170
    invoke-static {v2, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 171
    move-result-object v9

    .line 172
    .line 173
    check-cast v9, Lcom/alibaba/fastjson2/annotation/JSONType;

    .line 174
    .line 175
    if-ne v9, v2, :cond_7

    .line 176
    goto :goto_5

    .line 177
    .line 178
    .line 179
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 180
    move-result-object v5

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    move-result v5

    .line 185
    .line 186
    if-eqz v5, :cond_8

    .line 187
    move-object v3, v2

    .line 188
    .line 189
    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 190
    move-object v2, v9

    .line 191
    goto :goto_4

    .line 192
    .line 193
    :cond_9
    if-eqz v2, :cond_17

    .line 194
    .line 195
    .line 196
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    .line 197
    move-result-object v1

    .line 198
    array-length v3, v1

    .line 199
    .line 200
    if-eqz v3, :cond_a

    .line 201
    .line 202
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    :cond_a
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->typeKey()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 210
    move-result v3

    .line 211
    .line 212
    if-nez v3, :cond_b

    .line 213
    .line 214
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    :cond_b
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->typeName()Ljava/lang/String;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 222
    move-result v3

    .line 223
    .line 224
    if-nez v3, :cond_c

    .line 225
    .line 226
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    :cond_c
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->serializeFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 230
    move-result-object v1

    .line 231
    move v3, v0

    .line 232
    :goto_6
    array-length v4, v1

    .line 233
    .line 234
    if-ge v3, v4, :cond_d

    .line 235
    .line 236
    aget-object v4, v1, v3

    .line 237
    .line 238
    iget-wide v5, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 239
    .line 240
    iget-wide v9, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 241
    or-long/2addr v5, v9

    .line 242
    .line 243
    iput-wide v5, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 244
    .line 245
    add-int/lit8 v3, v3, 0x1

    .line 246
    goto :goto_6

    .line 247
    .line 248
    .line 249
    :cond_d
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->naming()Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 250
    move-result-object v1

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 254
    move-result-object v1

    .line 255
    .line 256
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->ignores()[Ljava/lang/String;

    .line 260
    move-result-object v1

    .line 261
    array-length v3, v1

    .line 262
    .line 263
    if-lez v3, :cond_e

    .line 264
    .line 265
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    :cond_e
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->includes()[Ljava/lang/String;

    .line 269
    move-result-object v1

    .line 270
    array-length v3, v1

    .line 271
    .line 272
    if-lez v3, :cond_f

    .line 273
    .line 274
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    :cond_f
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->orders()[Ljava/lang/String;

    .line 278
    move-result-object v1

    .line 279
    array-length v3, v1

    .line 280
    .line 281
    if-lez v3, :cond_10

    .line 282
    .line 283
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    :cond_10
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->serializer()Ljava/lang/Class;

    .line 287
    move-result-object v1

    .line 288
    .line 289
    const-class v3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 293
    move-result v3

    .line 294
    .line 295
    if-eqz v3, :cond_11

    .line 296
    .line 297
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    .line 298
    .line 299
    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    .line 300
    .line 301
    .line 302
    :cond_11
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->serializeFilters()[Ljava/lang/Class;

    .line 303
    move-result-object v1

    .line 304
    array-length v3, v1

    .line 305
    .line 306
    if-eqz v3, :cond_12

    .line 307
    .line 308
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializeFilters:[Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    :cond_12
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->format()Ljava/lang/String;

    .line 312
    move-result-object v1

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 316
    move-result v3

    .line 317
    .line 318
    if-nez v3, :cond_13

    .line 319
    .line 320
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    :cond_13
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->locale()Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 328
    move-result v3

    .line 329
    .line 330
    if-nez v3, :cond_14

    .line 331
    .line 332
    const-string v3, "_"

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 336
    move-result-object v1

    .line 337
    array-length v3, v1

    .line 338
    const/4 v4, 0x2

    .line 339
    .line 340
    if-ne v3, v4, :cond_14

    .line 341
    .line 342
    new-instance v3, Ljava/util/Locale;

    .line 343
    .line 344
    aget-object v4, v1, v0

    .line 345
    .line 346
    aget-object v1, v1, v8

    .line 347
    .line 348
    .line 349
    invoke-direct {v3, v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    iput-object v3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    .line 352
    .line 353
    .line 354
    :cond_14
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->alphabetic()Z

    .line 355
    move-result v1

    .line 356
    .line 357
    if-nez v1, :cond_15

    .line 358
    .line 359
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->alphabetic:Z

    .line 360
    .line 361
    .line 362
    :cond_15
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->writeEnumAsJavaBean()Z

    .line 363
    move-result v1

    .line 364
    .line 365
    if-eqz v1, :cond_16

    .line 366
    .line 367
    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    .line 368
    .line 369
    .line 370
    :cond_16
    invoke-interface {v2}, Lcom/alibaba/fastjson2/annotation/JSONType;->rootName()Ljava/lang/String;

    .line 371
    move-result-object v1

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 375
    move-result v2

    .line 376
    .line 377
    if-nez v2, :cond_18

    .line 378
    .line 379
    iput-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->rootName:Ljava/lang/String;

    .line 380
    goto :goto_7

    .line 381
    .line 382
    :cond_17
    if-eqz v3, :cond_18

    .line 383
    .line 384
    .line 385
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 386
    move-result-object v1

    .line 387
    .line 388
    new-instance v2, Lcom/alibaba/fastjson2/writer/f;

    .line 389
    .line 390
    .line 391
    invoke-direct {v2, p1, v3}, Lcom/alibaba/fastjson2/writer/f;-><init>(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 395
    .line 396
    :cond_18
    :goto_7
    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 397
    .line 398
    if-eqz v1, :cond_1b

    .line 399
    array-length v1, v1

    .line 400
    .line 401
    if-eqz v1, :cond_1b

    .line 402
    .line 403
    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 404
    .line 405
    if-eqz v1, :cond_19

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 409
    move-result v1

    .line 410
    .line 411
    if-nez v1, :cond_1b

    .line 412
    .line 413
    :cond_19
    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 414
    array-length v2, v1

    .line 415
    .line 416
    :goto_8
    if-ge v0, v2, :cond_1b

    .line 417
    .line 418
    aget-object v3, v1, v0

    .line 419
    .line 420
    if-ne v3, p2, :cond_1a

    .line 421
    .line 422
    .line 423
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 424
    move-result-object p2

    .line 425
    .line 426
    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 427
    return-void

    .line 428
    .line 429
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 430
    goto :goto_8

    .line 431
    :cond_1b
    return-void
.end method

.method public getExternalObjectWriter(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    const-string v0, "java.sql.Time"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    const-string v0, "java.sql.Timestamp"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-class p1, Ljava/sql/Clob;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Lcom/alibaba/fastjson2/util/JdbcSupport$ClobWriter;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Lcom/alibaba/fastjson2/util/JdbcSupport$ClobWriter;-><init>()V

    .line 34
    return-object p1

    .line 35
    :cond_0
    return-object v1

    .line 36
    .line 37
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampWriter;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v1}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampWriter;-><init>(Ljava/lang/String;)V

    .line 41
    return-object p1

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeWriter;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/util/JdbcSupport$TimeWriter;

    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    if-eq v1, p3, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 5
    iput-boolean p3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    .line 6
    :cond_1
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iput-boolean p3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 9
    iput-boolean p3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->isTransient:Z

    .line 10
    :cond_2
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    const/4 p3, 0x0

    .line 11
    :goto_1
    array-length v1, p1

    if-ge p3, v1, :cond_5

    .line 12
    aget-object v1, p1, p3

    .line 13
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    if-nez v0, :cond_3

    .line 14
    const-class v0, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 16
    const-string v3, "com.alibaba.fastjson.annotation.JSONField"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    invoke-direct {p0, p2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->processJSONField1x(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->loadFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V

    .line 19
    invoke-interface {v0}, Lcom/alibaba/fastjson2/annotation/JSONField;->writeUsing()Ljava/lang/Class;

    move-result-object p1

    .line 20
    const-class p3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 21
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 22
    :cond_7
    invoke-interface {v0}, Lcom/alibaba/fastjson2/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object p1

    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 24
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 25
    :cond_8
    invoke-interface {v0}, Lcom/alibaba/fastjson2/annotation/JSONField;->jsonDirect()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 26
    iget-wide v1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v3, 0x4000000000000L

    or-long/2addr v1, v3

    iput-wide v1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 27
    :cond_9
    iget-wide v1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_a

    const-class p1, Ljava/lang/String;

    .line 28
    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    if-nez p1, :cond_a

    .line 29
    const-class p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 30
    :cond_a
    invoke-interface {v0}, Lcom/alibaba/fastjson2/annotation/JSONField;->contentAs()Ljava/lang/Class;

    move-result-object p1

    .line 31
    const-class p3, Ljava/lang/Void;

    if-eq p1, p3, :cond_b

    .line 32
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->contentAs:Ljava/lang/Class;

    :cond_b
    :goto_3
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 7

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 34
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p3, :cond_0

    .line 35
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 39
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 40
    invoke-static {v1, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 42
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    move v4, v0

    .line 43
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 44
    aget-object v5, v3, v4

    invoke-static {v5, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 45
    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 46
    :cond_4
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 47
    invoke-direct {p0, p2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->processAnnotations(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    .line 48
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 49
    invoke-static {p3, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getField(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 50
    iget-wide v3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v5, 0x10000000000000L

    or-long/2addr v3, v5

    iput-wide v3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 51
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 52
    :cond_5
    iget-boolean p3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    if-eqz p3, :cond_7

    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 53
    invoke-static {p4, p3, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 54
    :goto_2
    iget-object p4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    array-length v1, p4

    if-ge v0, v1, :cond_7

    .line 55
    aget-object p4, p4, v0

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 56
    iget-object p4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 57
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p4

    .line 58
    array-length v1, p4

    if-ge v0, v1, :cond_6

    .line 59
    aget-object p1, p4, v0

    .line 60
    invoke-direct {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->processAnnotations(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public getMixIn(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Class;

    .line 9
    return-object p1
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0, v0, v0, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 9
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.protobuf.GeneratedMessageV3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    if-eqz p3, :cond_2

    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    if-eqz p3, :cond_4

    .line 13
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Ljava/util/Collection;

    .line 14
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriterModule(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p3, :cond_5

    .line 16
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_1
    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    return-object v0

    .line 18
    :cond_7
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 19
    const-string v2, "android.net.Uri$HierarchicalUri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.net.Uri$StringUri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "android.net.Uri$OpaqueUri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    .line 20
    :cond_8
    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v0

    goto :goto_3

    .line 21
    :cond_9
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    :goto_3
    if-nez v0, :cond_d

    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    if-eqz p3, :cond_a

    .line 23
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    goto :goto_4

    :cond_a
    const-wide/16 v1, 0x0

    .line 24
    :goto_4
    invoke-virtual {v0, p2, v1, v2, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p2

    if-eqz p3, :cond_b

    .line 25
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_5

    .line 26
    :cond_b
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_5
    if-eqz p1, :cond_c

    return-object p1

    :cond_c
    return-object p2

    :cond_d
    return-object v0
.end method

.method public getObjectWriterFromCache(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    .line 16
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 20
    return-object p1
.end method

.method public getObjectWriterModule(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 19

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-class v2, Ljava/lang/String;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplString;

    .line 11
    return-object v1

    .line 12
    .line 13
    :cond_0
    if-nez p2, :cond_2

    .line 14
    .line 15
    instance-of v3, v1, Ljava/lang/Class;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    move-object v3, v1

    .line 19
    .line 20
    check-cast v3, Ljava/lang/Class;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 25
    move-result-object v3

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_2
    move-object/from16 v3, p2

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getExternalObjectWriter(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 36
    move-result-object v5

    .line 37
    .line 38
    if-eqz v5, :cond_3

    .line 39
    return-object v5

    .line 40
    .line 41
    :cond_3
    const-string v5, "java.util.regex.Pattern"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v5

    .line 46
    .line 47
    if-nez v5, :cond_47

    .line 48
    .line 49
    const-string v5, "net.sf.json.JSONNull"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v5

    .line 54
    .line 55
    if-nez v5, :cond_47

    .line 56
    .line 57
    const-string v5, "java.net.Inet6Address"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v5

    .line 62
    .line 63
    if-nez v5, :cond_47

    .line 64
    .line 65
    const-string v5, "java.net.Inet4Address"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v5

    .line 70
    .line 71
    if-nez v5, :cond_47

    .line 72
    .line 73
    const-string v5, "java.text.SimpleDateFormat"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v5

    .line 78
    .line 79
    if-nez v5, :cond_47

    .line 80
    .line 81
    const-string v5, "java.net.InetSocketAddress"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v4

    .line 86
    .line 87
    if-nez v4, :cond_47

    .line 88
    .line 89
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x1

    .line 92
    .line 93
    const-class v7, Ljava/util/Map;

    .line 94
    .line 95
    const-class v8, Ljava/util/ArrayList;

    .line 96
    .line 97
    const-class v9, Ljava/util/List;

    .line 98
    .line 99
    if-eqz v4, :cond_7

    .line 100
    move-object v4, v1

    .line 101
    .line 102
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 103
    .line 104
    .line 105
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 106
    move-result-object v10

    .line 107
    .line 108
    .line 109
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    if-eq v10, v9, :cond_4

    .line 113
    .line 114
    if-ne v10, v8, :cond_6

    .line 115
    :cond_4
    array-length v1, v4

    .line 116
    .line 117
    if-ne v1, v6, :cond_5

    .line 118
    .line 119
    aget-object v1, v4, v5

    .line 120
    .line 121
    if-ne v1, v2, :cond_5

    .line 122
    .line 123
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;

    .line 124
    return-object v1

    .line 125
    :cond_5
    move-object v1, v10

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 129
    move-result v4

    .line 130
    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 135
    move-result-object v1

    .line 136
    return-object v1

    .line 137
    .line 138
    :cond_7
    const-class v4, Ljava/util/LinkedList;

    .line 139
    .line 140
    if-ne v1, v4, :cond_8

    .line 141
    .line 142
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    .line 143
    return-object v1

    .line 144
    .line 145
    :cond_8
    if-eq v1, v8, :cond_46

    .line 146
    .line 147
    if-eq v1, v9, :cond_46

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 151
    move-result v4

    .line 152
    .line 153
    if-eqz v4, :cond_9

    .line 154
    .line 155
    goto/16 :goto_5

    .line 156
    .line 157
    :cond_9
    const-class v4, Ljava/util/Collection;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 161
    move-result v4

    .line 162
    .line 163
    if-eqz v4, :cond_a

    .line 164
    .line 165
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    .line 166
    return-object v1

    .line 167
    .line 168
    .line 169
    :cond_a
    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 170
    move-result v4

    .line 171
    .line 172
    if-eqz v4, :cond_b

    .line 173
    .line 174
    .line 175
    invoke-static {v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 176
    move-result-object v1

    .line 177
    return-object v1

    .line 178
    .line 179
    :cond_b
    const-class v4, Ljava/util/Map$Entry;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 183
    move-result v4

    .line 184
    .line 185
    if-eqz v4, :cond_c

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 189
    move-result-object v3

    .line 190
    .line 191
    const-string v4, "java.util"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 195
    move-result v3

    .line 196
    .line 197
    if-eqz v3, :cond_c

    .line 198
    .line 199
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;

    .line 200
    return-object v1

    .line 201
    .line 202
    :cond_c
    const-class v3, Ljava/lang/Integer;

    .line 203
    .line 204
    if-ne v1, v3, :cond_d

    .line 205
    .line 206
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;

    .line 207
    return-object v1

    .line 208
    .line 209
    :cond_d
    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 210
    .line 211
    if-ne v1, v3, :cond_e

    .line 212
    .line 213
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;

    .line 214
    return-object v1

    .line 215
    .line 216
    :cond_e
    const-class v3, Ljava/lang/Byte;

    .line 217
    .line 218
    if-ne v1, v3, :cond_f

    .line 219
    .line 220
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;

    .line 221
    return-object v1

    .line 222
    .line 223
    :cond_f
    const-class v3, Ljava/lang/Short;

    .line 224
    .line 225
    if-ne v1, v3, :cond_10

    .line 226
    .line 227
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16;

    .line 228
    return-object v1

    .line 229
    .line 230
    :cond_10
    const-class v3, Ljava/lang/Long;

    .line 231
    .line 232
    if-ne v1, v3, :cond_11

    .line 233
    .line 234
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;

    .line 235
    return-object v1

    .line 236
    .line 237
    :cond_11
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 238
    .line 239
    if-ne v1, v3, :cond_12

    .line 240
    .line 241
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;

    .line 242
    return-object v1

    .line 243
    .line 244
    :cond_12
    const-class v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 245
    .line 246
    if-ne v1, v3, :cond_13

    .line 247
    .line 248
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;

    .line 249
    return-object v1

    .line 250
    .line 251
    :cond_13
    const-class v3, Ljava/lang/Float;

    .line 252
    .line 253
    if-ne v1, v3, :cond_14

    .line 254
    .line 255
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    .line 256
    return-object v1

    .line 257
    .line 258
    :cond_14
    const-class v3, Ljava/lang/Double;

    .line 259
    .line 260
    if-ne v1, v3, :cond_15

    .line 261
    .line 262
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    .line 263
    return-object v1

    .line 264
    .line 265
    :cond_15
    const-class v3, Ljava/math/BigInteger;

    .line 266
    .line 267
    if-ne v1, v3, :cond_16

    .line 268
    .line 269
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;

    .line 270
    return-object v1

    .line 271
    .line 272
    :cond_16
    const-class v3, Ljava/math/BigDecimal;

    .line 273
    .line 274
    if-ne v1, v3, :cond_17

    .line 275
    .line 276
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 277
    return-object v1

    .line 278
    .line 279
    :cond_17
    const-class v3, Ljava/lang/Boolean;

    .line 280
    .line 281
    if-ne v1, v3, :cond_18

    .line 282
    .line 283
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolean;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolean;

    .line 284
    return-object v1

    .line 285
    .line 286
    :cond_18
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 287
    .line 288
    if-ne v1, v3, :cond_19

    .line 289
    .line 290
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;

    .line 291
    return-object v1

    .line 292
    .line 293
    :cond_19
    const-class v3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 294
    .line 295
    if-ne v1, v3, :cond_1a

    .line 296
    .line 297
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicIntegerArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicIntegerArray;

    .line 298
    return-object v1

    .line 299
    .line 300
    :cond_1a
    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 301
    .line 302
    if-ne v1, v3, :cond_1b

    .line 303
    .line 304
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;

    .line 305
    return-object v1

    .line 306
    .line 307
    :cond_1b
    const-class v3, Ljava/lang/Character;

    .line 308
    .line 309
    if-ne v1, v3, :cond_1c

    .line 310
    .line 311
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharacter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharacter;

    .line 312
    return-object v1

    .line 313
    .line 314
    :cond_1c
    instance-of v3, v1, Ljava/lang/Class;

    .line 315
    const/4 v4, 0x0

    .line 316
    .line 317
    if-eqz v3, :cond_45

    .line 318
    .line 319
    check-cast v1, Ljava/lang/Class;

    .line 320
    .line 321
    const-class v3, Ljava/util/concurrent/TimeUnit;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 325
    move-result v3

    .line 326
    .line 327
    if-eqz v3, :cond_1d

    .line 328
    .line 329
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    .line 330
    const/4 v11, 0x0

    .line 331
    .line 332
    const-wide/16 v12, 0x0

    .line 333
    const/4 v8, 0x0

    .line 334
    .line 335
    const-class v9, Ljava/util/concurrent/TimeUnit;

    .line 336
    const/4 v10, 0x0

    .line 337
    .line 338
    .line 339
    invoke-direct/range {v7 .. v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V

    .line 340
    return-object v7

    .line 341
    .line 342
    :cond_1d
    const-class v3, Ljava/lang/Enum;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 346
    move-result v3

    .line 347
    .line 348
    if-eqz v3, :cond_1e

    .line 349
    .line 350
    .line 351
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->createEnumWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 352
    move-result-object v3

    .line 353
    .line 354
    if-eqz v3, :cond_1e

    .line 355
    return-object v3

    .line 356
    .line 357
    :cond_1e
    const-class v3, Lcom/alibaba/fastjson2/JSONPath;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 361
    move-result v3

    .line 362
    .line 363
    if-eqz v3, :cond_1f

    .line 364
    .line 365
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    .line 366
    return-object v1

    .line 367
    .line 368
    :cond_1f
    const-class v3, [Z

    .line 369
    .line 370
    if-ne v1, v3, :cond_20

    .line 371
    .line 372
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;

    .line 373
    return-object v1

    .line 374
    .line 375
    :cond_20
    const-class v3, [C

    .line 376
    .line 377
    if-ne v1, v3, :cond_21

    .line 378
    .line 379
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;

    .line 380
    return-object v1

    .line 381
    .line 382
    :cond_21
    const-class v3, Ljava/lang/StringBuffer;

    .line 383
    .line 384
    if-eq v1, v3, :cond_44

    .line 385
    .line 386
    const-class v3, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    if-ne v1, v3, :cond_22

    .line 389
    .line 390
    goto/16 :goto_4

    .line 391
    .line 392
    :cond_22
    const-class v3, [B

    .line 393
    .line 394
    if-ne v1, v3, :cond_23

    .line 395
    .line 396
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;

    .line 397
    return-object v1

    .line 398
    .line 399
    :cond_23
    const-class v3, [S

    .line 400
    .line 401
    if-ne v1, v3, :cond_24

    .line 402
    .line 403
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

    .line 404
    return-object v1

    .line 405
    .line 406
    :cond_24
    const-class v3, [I

    .line 407
    .line 408
    if-ne v1, v3, :cond_25

    .line 409
    .line 410
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32ValueArray;

    .line 411
    return-object v1

    .line 412
    .line 413
    :cond_25
    const-class v3, [J

    .line 414
    .line 415
    if-ne v1, v3, :cond_26

    .line 416
    .line 417
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;

    .line 418
    return-object v1

    .line 419
    .line 420
    :cond_26
    const-class v3, [F

    .line 421
    .line 422
    if-ne v1, v3, :cond_27

    .line 423
    .line 424
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloatValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloatValueArray;

    .line 425
    return-object v1

    .line 426
    .line 427
    :cond_27
    const-class v3, [D

    .line 428
    .line 429
    if-ne v1, v3, :cond_28

    .line 430
    .line 431
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDoubleValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDoubleValueArray;

    .line 432
    return-object v1

    .line 433
    .line 434
    :cond_28
    const-class v3, [Ljava/lang/Byte;

    .line 435
    .line 436
    if-ne v1, v3, :cond_29

    .line 437
    .line 438
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;

    .line 439
    return-object v1

    .line 440
    .line 441
    :cond_29
    const-class v3, [Ljava/lang/Integer;

    .line 442
    .line 443
    if-ne v1, v3, :cond_2a

    .line 444
    .line 445
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32Array;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32Array;

    .line 446
    return-object v1

    .line 447
    .line 448
    :cond_2a
    const-class v3, [Ljava/lang/Long;

    .line 449
    .line 450
    if-ne v1, v3, :cond_2b

    .line 451
    .line 452
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;

    .line 453
    return-object v1

    .line 454
    .line 455
    :cond_2b
    const-class v3, [Ljava/lang/String;

    .line 456
    .line 457
    if-ne v3, v1, :cond_2c

    .line 458
    .line 459
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

    .line 460
    return-object v1

    .line 461
    .line 462
    :cond_2c
    const-class v3, [Ljava/math/BigDecimal;

    .line 463
    .line 464
    if-ne v3, v1, :cond_2d

    .line 465
    .line 466
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;

    .line 467
    return-object v1

    .line 468
    .line 469
    :cond_2d
    const-class v3, [Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 473
    move-result v7

    .line 474
    .line 475
    if-eqz v7, :cond_30

    .line 476
    .line 477
    if-ne v1, v3, :cond_2e

    .line 478
    .line 479
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterArray;

    .line 480
    return-object v1

    .line 481
    .line 482
    .line 483
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 484
    move-result-object v1

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    .line 488
    move-result v2

    .line 489
    .line 490
    .line 491
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 492
    move-result v2

    .line 493
    .line 494
    if-eqz v2, :cond_2f

    .line 495
    .line 496
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 497
    .line 498
    .line 499
    invoke-direct {v2, v1, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 500
    return-object v2

    .line 501
    .line 502
    :cond_2f
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;

    .line 503
    .line 504
    .line 505
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;-><init>(Ljava/lang/reflect/Type;)V

    .line 506
    return-object v2

    .line 507
    .line 508
    :cond_30
    const-class v3, Ljava/util/UUID;

    .line 509
    .line 510
    if-ne v1, v3, :cond_31

    .line 511
    .line 512
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;

    .line 513
    return-object v1

    .line 514
    .line 515
    :cond_31
    const-class v3, Ljava/util/Locale;

    .line 516
    .line 517
    if-ne v1, v3, :cond_32

    .line 518
    .line 519
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocale;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocale;

    .line 520
    return-object v1

    .line 521
    .line 522
    :cond_32
    const-class v3, Ljava/util/Currency;

    .line 523
    .line 524
    if-ne v1, v3, :cond_33

    .line 525
    .line 526
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    .line 527
    return-object v1

    .line 528
    .line 529
    :cond_33
    const-class v3, Ljava/util/TimeZone;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 533
    move-result v3

    .line 534
    .line 535
    if-eqz v3, :cond_34

    .line 536
    .line 537
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplTimeZone;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplTimeZone;

    .line 538
    return-object v1

    .line 539
    .line 540
    :cond_34
    const-class v3, Ljava/net/URI;

    .line 541
    .line 542
    if-eq v1, v3, :cond_43

    .line 543
    .line 544
    const-class v3, Ljava/net/URL;

    .line 545
    .line 546
    if-eq v1, v3, :cond_43

    .line 547
    .line 548
    const-class v3, Ljava/io/File;

    .line 549
    .line 550
    if-eq v1, v3, :cond_43

    .line 551
    .line 552
    const-class v3, Lcom/alibaba/fastjson2/time/ZoneId;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 556
    move-result v3

    .line 557
    .line 558
    if-nez v3, :cond_43

    .line 559
    .line 560
    const-class v3, Ljava/nio/charset/Charset;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 564
    move-result v3

    .line 565
    .line 566
    if-eqz v3, :cond_35

    .line 567
    .line 568
    goto/16 :goto_3

    .line 569
    .line 570
    .line 571
    :cond_35
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 572
    move-result-object v3

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getExternalObjectWriter(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 576
    move-result-object v3

    .line 577
    .line 578
    if-eqz v3, :cond_36

    .line 579
    return-object v3

    .line 580
    .line 581
    :cond_36
    new-instance v3, Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 582
    .line 583
    .line 584
    invoke-direct {v3}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    .line 588
    move-result-object v7

    .line 589
    .line 590
    if-eqz v7, :cond_37

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v3, v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 594
    .line 595
    :cond_37
    const-class v7, Ljava/util/Date;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 599
    move-result v7

    .line 600
    .line 601
    if-eqz v7, :cond_3a

    .line 602
    .line 603
    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    .line 604
    .line 605
    if-nez v1, :cond_39

    .line 606
    .line 607
    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    .line 608
    .line 609
    if-eqz v1, :cond_38

    .line 610
    goto :goto_1

    .line 611
    .line 612
    :cond_38
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    .line 613
    return-object v1

    .line 614
    .line 615
    :cond_39
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    .line 616
    .line 617
    iget-object v2, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    .line 618
    .line 619
    iget-object v3, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    .line 620
    .line 621
    .line 622
    invoke-direct {v1, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 623
    return-object v1

    .line 624
    .line 625
    :cond_3a
    const-class v7, Ljava/util/Calendar;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 629
    move-result v7

    .line 630
    .line 631
    if-eqz v7, :cond_3d

    .line 632
    .line 633
    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    .line 634
    .line 635
    if-nez v1, :cond_3c

    .line 636
    .line 637
    iget-object v1, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    .line 638
    .line 639
    if-eqz v1, :cond_3b

    .line 640
    goto :goto_2

    .line 641
    .line 642
    :cond_3b
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    .line 643
    return-object v1

    .line 644
    .line 645
    :cond_3c
    :goto_2
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    .line 646
    .line 647
    iget-object v2, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    .line 648
    .line 649
    iget-object v3, v3, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    .line 650
    .line 651
    .line 652
    invoke-direct {v1, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 653
    return-object v1

    .line 654
    .line 655
    :cond_3d
    const-class v3, Ljava/lang/StackTraceElement;

    .line 656
    const/4 v7, 0x3

    .line 657
    const/4 v8, 0x2

    .line 658
    .line 659
    if-ne v3, v1, :cond_3f

    .line 660
    .line 661
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->STACK_TRACE_ELEMENT_WRITER:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 662
    .line 663
    if-nez v1, :cond_3e

    .line 664
    .line 665
    new-instance v9, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 666
    .line 667
    new-instance v1, Lcom/alibaba/fastjson2/writer/k;

    .line 668
    .line 669
    .line 670
    invoke-direct {v1}, Lcom/alibaba/fastjson2/writer/k;-><init>()V

    .line 671
    .line 672
    const-string v3, "fileName"

    .line 673
    .line 674
    .line 675
    invoke-static {v3, v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 676
    move-result-object v1

    .line 677
    .line 678
    new-instance v3, Lcom/alibaba/fastjson2/writer/n;

    .line 679
    .line 680
    .line 681
    invoke-direct {v3}, Lcom/alibaba/fastjson2/writer/n;-><init>()V

    .line 682
    .line 683
    const-string v4, "lineNumber"

    .line 684
    .line 685
    .line 686
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 687
    move-result-object v3

    .line 688
    .line 689
    new-instance v4, Lcom/alibaba/fastjson2/writer/o;

    .line 690
    .line 691
    .line 692
    invoke-direct {v4}, Lcom/alibaba/fastjson2/writer/o;-><init>()V

    .line 693
    .line 694
    const-string v10, "className"

    .line 695
    .line 696
    .line 697
    invoke-static {v10, v2, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 698
    move-result-object v4

    .line 699
    .line 700
    new-instance v10, Lcom/alibaba/fastjson2/writer/p;

    .line 701
    .line 702
    .line 703
    invoke-direct {v10}, Lcom/alibaba/fastjson2/writer/p;-><init>()V

    .line 704
    .line 705
    const-string v11, "methodName"

    .line 706
    .line 707
    .line 708
    invoke-static {v11, v2, v10}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 709
    move-result-object v2

    .line 710
    const/4 v10, 0x4

    .line 711
    .line 712
    new-array v10, v10, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 713
    .line 714
    aput-object v1, v10, v5

    .line 715
    .line 716
    aput-object v3, v10, v6

    .line 717
    .line 718
    aput-object v4, v10, v8

    .line 719
    .line 720
    aput-object v2, v10, v7

    .line 721
    .line 722
    .line 723
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 724
    move-result-object v15

    .line 725
    .line 726
    const-class v10, Ljava/lang/StackTraceElement;

    .line 727
    const/4 v11, 0x0

    .line 728
    const/4 v12, 0x0

    .line 729
    .line 730
    const-wide/16 v13, 0x0

    .line 731
    .line 732
    .line 733
    invoke-direct/range {v9 .. v15}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 734
    .line 735
    sput-object v9, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->STACK_TRACE_ELEMENT_WRITER:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 736
    .line 737
    :cond_3e
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->STACK_TRACE_ELEMENT_WRITER:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 738
    return-object v1

    .line 739
    .line 740
    :cond_3f
    const-class v3, Ljava/lang/Class;

    .line 741
    .line 742
    if-ne v3, v1, :cond_40

    .line 743
    .line 744
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;

    .line 745
    return-object v1

    .line 746
    .line 747
    :cond_40
    const-class v9, Ljava/lang/reflect/Method;

    .line 748
    .line 749
    const-string v10, "name"

    .line 750
    .line 751
    const-string v11, "declaringClass"

    .line 752
    .line 753
    if-ne v9, v1, :cond_41

    .line 754
    .line 755
    new-instance v12, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 756
    .line 757
    new-instance v1, Lcom/alibaba/fastjson2/writer/q;

    .line 758
    .line 759
    .line 760
    invoke-direct {v1}, Lcom/alibaba/fastjson2/writer/q;-><init>()V

    .line 761
    .line 762
    .line 763
    invoke-static {v11, v3, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 764
    move-result-object v1

    .line 765
    .line 766
    new-instance v3, Lcom/alibaba/fastjson2/writer/r;

    .line 767
    .line 768
    .line 769
    invoke-direct {v3}, Lcom/alibaba/fastjson2/writer/r;-><init>()V

    .line 770
    .line 771
    .line 772
    invoke-static {v10, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 773
    move-result-object v2

    .line 774
    .line 775
    new-instance v3, Lcom/alibaba/fastjson2/writer/s;

    .line 776
    .line 777
    .line 778
    invoke-direct {v3}, Lcom/alibaba/fastjson2/writer/s;-><init>()V

    .line 779
    .line 780
    const-string v4, "parameterTypes"

    .line 781
    .line 782
    const-class v9, [Ljava/lang/Class;

    .line 783
    .line 784
    .line 785
    invoke-static {v4, v9, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 786
    move-result-object v3

    .line 787
    .line 788
    new-array v4, v7, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 789
    .line 790
    aput-object v1, v4, v5

    .line 791
    .line 792
    aput-object v2, v4, v6

    .line 793
    .line 794
    aput-object v3, v4, v8

    .line 795
    .line 796
    .line 797
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 798
    move-result-object v18

    .line 799
    .line 800
    const-class v13, Ljava/lang/reflect/Method;

    .line 801
    const/4 v14, 0x0

    .line 802
    const/4 v15, 0x0

    .line 803
    .line 804
    const-wide/16 v16, 0x0

    .line 805
    .line 806
    .line 807
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 808
    return-object v12

    .line 809
    .line 810
    :cond_41
    const-class v9, Ljava/lang/reflect/Field;

    .line 811
    .line 812
    if-ne v9, v1, :cond_42

    .line 813
    .line 814
    new-instance v12, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 815
    .line 816
    new-instance v1, Lcom/alibaba/fastjson2/writer/g;

    .line 817
    .line 818
    .line 819
    invoke-direct {v1}, Lcom/alibaba/fastjson2/writer/g;-><init>()V

    .line 820
    .line 821
    .line 822
    invoke-static {v11, v3, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 823
    move-result-object v1

    .line 824
    .line 825
    new-instance v3, Lcom/alibaba/fastjson2/writer/h;

    .line 826
    .line 827
    .line 828
    invoke-direct {v3}, Lcom/alibaba/fastjson2/writer/h;-><init>()V

    .line 829
    .line 830
    .line 831
    invoke-static {v10, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 832
    move-result-object v2

    .line 833
    .line 834
    new-array v3, v8, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 835
    .line 836
    aput-object v1, v3, v5

    .line 837
    .line 838
    aput-object v2, v3, v6

    .line 839
    .line 840
    .line 841
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 842
    move-result-object v18

    .line 843
    .line 844
    const-class v13, Ljava/lang/reflect/Method;

    .line 845
    const/4 v14, 0x0

    .line 846
    const/4 v15, 0x0

    .line 847
    .line 848
    const-wide/16 v16, 0x0

    .line 849
    .line 850
    .line 851
    invoke-direct/range {v12 .. v18}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 852
    return-object v12

    .line 853
    .line 854
    :cond_42
    const-class v2, Ljava/lang/reflect/ParameterizedType;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 858
    move-result v1

    .line 859
    .line 860
    if-eqz v1, :cond_45

    .line 861
    .line 862
    new-instance v1, Lcom/alibaba/fastjson2/writer/i;

    .line 863
    .line 864
    .line 865
    invoke-direct {v1}, Lcom/alibaba/fastjson2/writer/i;-><init>()V

    .line 866
    .line 867
    const-string v3, "actualTypeArguments"

    .line 868
    .line 869
    const-class v4, [Ljava/lang/reflect/Type;

    .line 870
    .line 871
    .line 872
    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 873
    move-result-object v1

    .line 874
    .line 875
    new-instance v3, Lcom/alibaba/fastjson2/writer/l;

    .line 876
    .line 877
    .line 878
    invoke-direct {v3}, Lcom/alibaba/fastjson2/writer/l;-><init>()V

    .line 879
    .line 880
    const-string v4, "ownerType"

    .line 881
    .line 882
    const-class v9, Ljava/lang/reflect/Type;

    .line 883
    .line 884
    .line 885
    invoke-static {v4, v9, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 886
    move-result-object v3

    .line 887
    .line 888
    new-instance v4, Lcom/alibaba/fastjson2/writer/m;

    .line 889
    .line 890
    .line 891
    invoke-direct {v4}, Lcom/alibaba/fastjson2/writer/m;-><init>()V

    .line 892
    .line 893
    const-string v10, "rawType"

    .line 894
    .line 895
    .line 896
    invoke-static {v10, v9, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 897
    move-result-object v4

    .line 898
    .line 899
    new-array v7, v7, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 900
    .line 901
    aput-object v1, v7, v5

    .line 902
    .line 903
    aput-object v3, v7, v6

    .line 904
    .line 905
    aput-object v4, v7, v8

    .line 906
    .line 907
    .line 908
    invoke-static {v2, v7}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->objectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 909
    move-result-object v1

    .line 910
    return-object v1

    .line 911
    .line 912
    :cond_43
    :goto_3
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    .line 913
    return-object v1

    .line 914
    .line 915
    :cond_44
    :goto_4
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    .line 916
    return-object v1

    .line 917
    :cond_45
    return-object v4

    .line 918
    .line 919
    :cond_46
    :goto_5
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    .line 920
    return-object v1

    .line 921
    .line 922
    :cond_47
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;

    .line 923
    return-object v1
.end method

.method public mixIn(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 4

    .line 2
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 3
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto/16 :goto_5

    .line 5
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto/16 :goto_5

    .line 6
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_b

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_5

    .line 8
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    if-ne p2, v0, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 10
    :cond_5
    :goto_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 11
    :cond_6
    const-class v0, Ljava/util/Date;

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_8

    .line 12
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    if-ne p2, v0, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 14
    :cond_8
    :goto_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x11

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 15
    :cond_9
    const-class v0, Ljava/lang/Enum;

    if-ne p1, v0, :cond_e

    if-nez p2, :cond_a

    .line 16
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 17
    :cond_a
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    .line 18
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;

    if-ne p2, v0, :cond_c

    goto :goto_4

    .line 19
    :cond_c
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 20
    :cond_d
    :goto_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    :cond_e
    :goto_5
    if-nez p2, :cond_10

    if-eqz p3, :cond_f

    .line 21
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    .line 22
    :cond_f
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    :cond_10
    if-eqz p3, :cond_11

    .line 23
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    .line 24
    :cond_11
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1
.end method

.method public registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    return-object v0
.end method

.method public unregister(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1
.end method

.method public unregister(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
