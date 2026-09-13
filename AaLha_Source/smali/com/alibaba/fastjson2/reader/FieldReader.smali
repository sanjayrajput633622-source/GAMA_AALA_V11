.class public abstract Lcom/alibaba/fastjson2/reader/FieldReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson2/reader/FieldReader;",
        ">;"
    }
.end annotation


# instance fields
.field public final defaultValue:Ljava/lang/Object;

.field public final features:J

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldClass:Ljava/lang/Class;

.field final fieldClassSerializable:Z

.field public final fieldName:Ljava/lang/String;

.field final fieldNameHash:J

.field final fieldNameHashLCase:J

.field protected final fieldOffset:J

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field itemClass:Ljava/lang/Class;

.field volatile itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field itemType:Ljava/lang/reflect/Type;

.field public final locale:Ljava/util/Locale;

.field public final method:Ljava/lang/reflect/Method;

.field final noneStaticMemberClass:Z

.field public final ordinal:I

.field final readOnly:Z

.field volatile reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field volatile referenceCache:Lcom/alibaba/fastjson2/JSONPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p3

    .line 5
    .line 6
    move-wide/from16 v2, p5

    .line 7
    .line 8
    move-object/from16 v4, p10

    .line 9
    .line 10
    move-object/from16 v5, p11

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    move-object/from16 v6, p1

    .line 16
    .line 17
    iput-object v6, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 18
    .line 19
    move-object/from16 v7, p2

    .line 20
    .line 21
    iput-object v7, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 24
    .line 25
    const-class v7, Ljava/util/List;

    .line 26
    .line 27
    const-class v8, Ljava/lang/String;

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 35
    move-result v11

    .line 36
    .line 37
    if-nez v11, :cond_0

    .line 38
    .line 39
    if-eq v1, v8, :cond_0

    .line 40
    .line 41
    if-eq v1, v7, :cond_0

    .line 42
    .line 43
    const-class v11, Ljava/io/Serializable;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v11, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 47
    move-result v11

    .line 48
    .line 49
    if-nez v11, :cond_0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    .line 53
    move-result v11

    .line 54
    .line 55
    .line 56
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 57
    move-result v11

    .line 58
    .line 59
    if-eqz v11, :cond_1

    .line 60
    :cond_0
    move v11, v10

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v11, v9

    .line 63
    .line 64
    :goto_0
    iput-boolean v11, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClassSerializable:Z

    .line 65
    .line 66
    iput-wide v2, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 67
    .line 68
    .line 69
    invoke-static {v6}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 70
    move-result-wide v11

    .line 71
    .line 72
    iput-wide v11, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 73
    .line 74
    .line 75
    invoke-static {v6}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64LCase(Ljava/lang/String;)J

    .line 76
    move-result-wide v11

    .line 77
    .line 78
    iput-wide v11, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 79
    .line 80
    move/from16 v6, p4

    .line 81
    .line 82
    iput v6, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->ordinal:I

    .line 83
    .line 84
    move-object/from16 v6, p7

    .line 85
    .line 86
    iput-object v6, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->format:Ljava/lang/String;

    .line 87
    .line 88
    move-object/from16 v6, p8

    .line 89
    .line 90
    iput-object v6, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->locale:Ljava/util/Locale;

    .line 91
    .line 92
    move-object/from16 v6, p9

    .line 93
    .line 94
    iput-object v6, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 95
    .line 96
    iput-object v4, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 97
    .line 98
    iput-object v5, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 99
    .line 100
    const-wide/16 v11, 0x0

    .line 101
    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 106
    move-result v6

    .line 107
    .line 108
    .line 109
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 110
    move-result v6

    .line 111
    .line 112
    if-nez v6, :cond_3

    .line 113
    .line 114
    :cond_2
    const-wide/high16 v13, 0x100000000000000L

    .line 115
    and-long/2addr v13, v2

    .line 116
    .line 117
    cmp-long v6, v13, v11

    .line 118
    .line 119
    if-eqz v6, :cond_4

    .line 120
    :cond_3
    move v6, v10

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    move v6, v9

    .line 123
    .line 124
    :goto_1
    iput-boolean v6, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->readOnly:Z

    .line 125
    .line 126
    const-wide/16 v13, -0x1

    .line 127
    .line 128
    if-eqz v5, :cond_6

    .line 129
    .line 130
    const-wide/high16 v15, 0x80000000000000L

    .line 131
    and-long/2addr v2, v15

    .line 132
    .line 133
    cmp-long v2, v2, v11

    .line 134
    .line 135
    if-nez v2, :cond_6

    .line 136
    .line 137
    sget v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 138
    .line 139
    const/16 v3, 0x18

    .line 140
    .line 141
    if-ge v2, v3, :cond_5

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 145
    move-result v2

    .line 146
    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 150
    .line 151
    if-eq v1, v2, :cond_5

    .line 152
    .line 153
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 154
    .line 155
    if-ne v1, v2, :cond_6

    .line 156
    .line 157
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 161
    move-result-wide v2

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    move-wide v2, v13

    .line 164
    .line 165
    :goto_2
    iput-wide v2, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    .line 166
    .line 167
    cmp-long v2, v2, v13

    .line 168
    .line 169
    if-nez v2, :cond_7

    .line 170
    .line 171
    if-eqz v5, :cond_7

    .line 172
    .line 173
    if-nez v4, :cond_7

    .line 174
    .line 175
    .line 176
    :try_start_0
    invoke-virtual {v5, v10}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    :catchall_0
    :cond_7
    if-eqz v1, :cond_b

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    .line 182
    move-result v2

    .line 183
    .line 184
    if-nez v2, :cond_b

    .line 185
    .line 186
    if-eq v1, v8, :cond_b

    .line 187
    .line 188
    if-eq v1, v7, :cond_b

    .line 189
    .line 190
    const-class v2, Ljava/util/Map;

    .line 191
    .line 192
    if-eq v1, v2, :cond_b

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    .line 196
    move-result v2

    .line 197
    .line 198
    if-eqz v2, :cond_8

    .line 199
    goto :goto_4

    .line 200
    .line 201
    :cond_8
    if-eqz v4, :cond_9

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 205
    move-result-object v2

    .line 206
    goto :goto_3

    .line 207
    .line 208
    :cond_9
    if-eqz v5, :cond_a

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 212
    move-result-object v2

    .line 213
    goto :goto_3

    .line 214
    :cond_a
    const/4 v2, 0x0

    .line 215
    .line 216
    .line 217
    :goto_3
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->isNoneStaticMemberClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    .line 218
    move-result v9

    .line 219
    .line 220
    :cond_b
    :goto_4
    iput-boolean v9, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->noneStaticMemberClass:Z

    .line 221
    return-void
.end method

.method public static createFormattedObjectReader(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 2

    .line 1
    .line 2
    if-eqz p2, :cond_6

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, -0x1

    .line 21
    .line 22
    .line 23
    sparse-switch v0, :sswitch_data_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :sswitch_0
    const-string v0, "java.sql.Timestamp"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 31
    .line 32
    if-nez p0, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x4

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :sswitch_1
    const-string v0, "java.sql.Time"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 42
    .line 43
    if-nez p0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x3

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :sswitch_2
    const-string v0, "java.sql.Date"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p0

    .line 53
    .line 54
    if-nez p0, :cond_2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v1, 0x2

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :sswitch_3
    const-string v0, "[B"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 64
    .line 65
    if-nez p0, :cond_3

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v1, 0x1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :sswitch_4
    const-string v0, "byte[]"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p0

    .line 75
    .line 76
    if-nez p0, :cond_4

    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/4 v1, 0x0

    .line 79
    .line 80
    .line 81
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 82
    .line 83
    const-class p0, Ljava/util/Calendar;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 87
    move-result p0

    .line 88
    .line 89
    if-eqz p0, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    .line 96
    :cond_5
    const-class p0, Ljava/util/Date;

    .line 97
    .line 98
    if-ne p1, p0, :cond_6

    .line 99
    .line 100
    .line 101
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    .line 105
    :pswitch_0
    new-instance p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimestampReader;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 109
    return-object p0

    .line 110
    .line 111
    :pswitch_1
    new-instance p0, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/util/JdbcSupport$TimeReader;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 115
    return-object p0

    .line 116
    .line 117
    :pswitch_2
    new-instance p0, Lcom/alibaba/fastjson2/util/JdbcSupport$DateReader;

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/util/JdbcSupport$DateReader;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 121
    return-object p0

    .line 122
    .line 123
    :pswitch_3
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;

    .line 124
    .line 125
    .line 126
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;-><init>(Ljava/lang/String;)V

    .line 127
    return-object p0

    .line 128
    :cond_6
    const/4 p0, 0x0

    .line 129
    return-object p0

    .line 130
    nop

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
    .line 151
    .line 152
    :sswitch_data_0
    .sparse-switch
        -0x51e5b596 -> :sswitch_4
        0xb47 -> :sswitch_3
        0x40d5de3a -> :sswitch_2
        0x40dd4159 -> :sswitch_1
        0x4aad720a -> :sswitch_0
    .end sparse-switch

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
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static needCompareToActualFieldClass(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;B)V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;C)V"
        }
    .end annotation

    .line 6
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 7
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public accept(Ljava/lang/Object;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;S)V"
        }
    .end annotation

    .line 3
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public acceptAny(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    move-wide v5, p3

    .line 2
    .line 3
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    .line 9
    if-eqz p2, :cond_5

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v7

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->supportAcceptType(Ljava/lang/Class;)Z

    .line 17
    move-result v8

    .line 18
    .line 19
    if-nez v8, :cond_5

    .line 20
    .line 21
    const-class v8, Ljava/lang/String;

    .line 22
    .line 23
    if-ne v7, v8, :cond_0

    .line 24
    .line 25
    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 26
    .line 27
    const-class v9, Ljava/util/Date;

    .line 28
    .line 29
    if-ne v8, v9, :cond_3

    .line 30
    move-object v8, p2

    .line 31
    move v9, v3

    .line 32
    goto :goto_2

    .line 33
    .line 34
    :cond_0
    const-class v8, Ljava/lang/Integer;

    .line 35
    .line 36
    if-ne v7, v8, :cond_3

    .line 37
    .line 38
    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 39
    .line 40
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    if-eq v8, v9, :cond_1

    .line 43
    .line 44
    const-class v9, Ljava/lang/Boolean;

    .line 45
    .line 46
    if-ne v8, v9, :cond_3

    .line 47
    .line 48
    :cond_1
    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonZeroNumberCastToBooleanAsTrue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 49
    .line 50
    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 51
    and-long/2addr v8, v5

    .line 52
    .line 53
    cmp-long v8, v8, v1

    .line 54
    .line 55
    if-eqz v8, :cond_3

    .line 56
    move-object v8, p2

    .line 57
    .line 58
    check-cast v8, Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 62
    move-result v8

    .line 63
    .line 64
    if-eqz v8, :cond_2

    .line 65
    move v8, v4

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v8, v3

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    move-result-object v8

    .line 72
    :goto_1
    move v9, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move-object v8, p2

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :goto_2
    iget-object v10, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 78
    .line 79
    if-eq v7, v10, :cond_4

    .line 80
    .line 81
    if-eqz v9, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v7, v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    .line 85
    move-result-object v7

    .line 86
    .line 87
    if-eqz v7, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-interface {v7, v8}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v7

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    move-object v7, v8

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    move-object v7, p2

    .line 96
    move v9, v4

    .line 97
    .line 98
    :goto_3
    if-eqz v7, :cond_d

    .line 99
    .line 100
    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    move-result-object v10

    .line 105
    .line 106
    if-ne v8, v10, :cond_6

    .line 107
    .line 108
    goto/16 :goto_7

    .line 109
    .line 110
    :cond_6
    instance-of v8, v7, Lcom/alibaba/fastjson2/JSONObject;

    .line 111
    .line 112
    if-eqz v8, :cond_8

    .line 113
    .line 114
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 115
    .line 116
    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 117
    and-long/2addr v5, v8

    .line 118
    .line 119
    cmp-long v1, v5, v1

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    new-array v1, v4, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 124
    .line 125
    aput-object v0, v1, v3

    .line 126
    goto :goto_4

    .line 127
    .line 128
    :cond_7
    new-array v1, v3, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 129
    .line 130
    :goto_4
    check-cast v7, Lcom/alibaba/fastjson2/JSONObject;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7, v0, v1}, Lcom/alibaba/fastjson2/JSONObject;->to(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    .line 136
    move-result-object v7

    .line 137
    .line 138
    goto/16 :goto_7

    .line 139
    .line 140
    :cond_8
    instance-of v3, v7, Lcom/alibaba/fastjson2/JSONArray;

    .line 141
    .line 142
    if-eqz v3, :cond_9

    .line 143
    .line 144
    check-cast v7, Lcom/alibaba/fastjson2/JSONArray;

    .line 145
    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v0, p3, p4}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;J)Ljava/lang/Object;

    .line 150
    move-result-object v7

    .line 151
    goto :goto_7

    .line 152
    .line 153
    :cond_9
    cmp-long v1, v5, v1

    .line 154
    .line 155
    if-nez v1, :cond_b

    .line 156
    .line 157
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 161
    move-result v1

    .line 162
    .line 163
    if-nez v1, :cond_b

    .line 164
    .line 165
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->format:Ljava/lang/String;

    .line 166
    .line 167
    if-nez v1, :cond_b

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->getInitReader()Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    if-eqz v1, :cond_a

    .line 174
    .line 175
    .line 176
    invoke-static {v7}, Lcom/alibaba/fastjson2/a;->B1(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    .line 180
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    .line 181
    move-result-object v2

    .line 182
    const/4 v3, 0x0

    .line 183
    const/4 v4, 0x0

    .line 184
    .line 185
    .line 186
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 187
    move-result-object v0

    .line 188
    :goto_5
    move-object v7, v0

    .line 189
    goto :goto_7

    .line 190
    .line 191
    :cond_a
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    invoke-static {v7, v1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    .line 195
    move-result-object v0

    .line 196
    goto :goto_5

    .line 197
    .line 198
    :cond_b
    if-eqz v9, :cond_d

    .line 199
    .line 200
    .line 201
    invoke-static {v7}, Lcom/alibaba/fastjson2/a;->B1(Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    .line 205
    invoke-static {p3, p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(J)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    .line 209
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    .line 213
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/reader/FieldReader;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 217
    const/4 v3, 0x0

    .line 218
    move-wide v5, p3

    .line 219
    .line 220
    .line 221
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 222
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .line 224
    if-eqz v2, :cond_d

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 228
    goto :goto_7

    .line 229
    :catchall_0
    move-exception v0

    .line 230
    move-object v1, v0

    .line 231
    .line 232
    if-eqz v2, :cond_c

    .line 233
    .line 234
    .line 235
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    goto :goto_6

    .line 237
    :catchall_1
    move-exception v0

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 241
    :cond_c
    :goto_6
    throw v1

    .line 242
    .line 243
    .line 244
    :cond_d
    :goto_7
    invoke-virtual {p0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public acceptDefaultValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
.end method

.method public acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public addResolveTask(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->referenceCache:Lcom/alibaba/fastjson2/JSONPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->referenceCache:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->referenceCache:Lcom/alibaba/fastjson2/JSONPath;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->referenceCache:Lcom/alibaba/fastjson2/JSONPath;

    .line 4
    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    return-void
.end method

.method public addResolveTask(Lcom/alibaba/fastjson2/JSONReader;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    return-void
.end method

.method public checkObjectAutoType(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public compareTo(Lcom/alibaba/fastjson2/reader/FieldReader;)I
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->ordinal:I

    iget p1, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->ordinal:I

    if-ge v3, p1, :cond_0

    return v1

    :cond_0
    if-le v3, p1, :cond_1

    return v2

    :cond_1
    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->isReadOnly()Z

    move-result v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->isReadOnly()Z

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    goto/16 :goto_9

    .line 5
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 6
    :goto_1
    iget-object v5, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    :goto_2
    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_9

    .line 8
    invoke-interface {v5}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 9
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v5, :cond_9

    .line 10
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_8

    return v2

    .line 11
    :cond_8
    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v1

    .line 12
    :cond_9
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    const-class v5, Ljava/lang/Object;

    if-eqz v3, :cond_c

    iget-object v6, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    if-eqz v6, :cond_c

    .line 13
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 14
    iget-object v6, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    .line 15
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_b

    if-eq v7, v5, :cond_b

    if-ne v7, v6, :cond_a

    return v2

    :cond_a
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_3

    .line 16
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_c

    if-eq v6, v5, :cond_c

    if-ne v6, v3, :cond_b

    return v1

    .line 17
    :cond_c
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1e

    iget-object v6, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1e

    .line 18
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 19
    iget-object v6, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    .line 20
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    :goto_4
    if-eqz v7, :cond_e

    if-eq v7, v5, :cond_e

    if-ne v7, v6, :cond_d

    return v1

    :cond_d
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_4

    .line 21
    :cond_e
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    :goto_5
    if-eqz v7, :cond_10

    if-eq v7, v5, :cond_10

    if-ne v7, v3, :cond_f

    return v2

    :cond_f
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_5

    .line 22
    :cond_10
    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 23
    iget-object v8, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 24
    array-length v9, v7

    const/4 v10, 0x0

    if-ne v9, v2, :cond_1c

    array-length v9, v8

    if-ne v9, v2, :cond_1c

    .line 25
    aget-object v7, v7, v4

    .line 26
    aget-object v8, v8, v4

    if-eq v7, v8, :cond_1c

    .line 27
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_11

    return v2

    .line 28
    :cond_11
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_12

    return v1

    .line 29
    :cond_12
    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_13

    return v2

    .line 30
    :cond_13
    invoke-virtual {v9, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_14

    return v1

    .line 31
    :cond_14
    invoke-static {v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->needCompareToActualFieldClass(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-static {v8}, Lcom/alibaba/fastjson2/reader/FieldReader;->needCompareToActualFieldClass(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 32
    :cond_15
    :try_start_0
    iget-object v9, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_16

    .line 33
    :try_start_1
    iget-object v9, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_0
    move-object v3, v10

    :catch_1
    :cond_16
    :goto_6
    if-eqz v3, :cond_1a

    :goto_7
    if-eqz v7, :cond_18

    if-eq v7, v5, :cond_18

    if-ne v7, v3, :cond_17

    return v1

    .line 34
    :cond_17
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_7

    :cond_18
    :goto_8
    if-eqz v8, :cond_1a

    if-eq v8, v5, :cond_1a

    if-ne v8, v3, :cond_19

    return v2

    .line 35
    :cond_19
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_8

    .line 36
    :cond_1a
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    const-class v5, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-static {v3, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 37
    iget-object v6, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    invoke-static {v6, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-eqz v3, :cond_1b

    if-nez v5, :cond_1b

    return v1

    :cond_1b
    if-nez v3, :cond_1c

    if-eqz v5, :cond_1c

    return v2

    .line 38
    :cond_1c
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 39
    iget-object v5, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 41
    invoke-static {v3, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-static {v5, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 43
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    return v2

    .line 44
    :cond_1d
    iget-object v6, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    return v1

    .line 45
    :cond_1e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->getInitReader()Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->getInitReader()Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    if-eqz v3, :cond_1f

    if-nez v5, :cond_1f

    return v1

    :cond_1f
    if-nez v3, :cond_20

    if-eqz v5, :cond_20

    return v2

    .line 47
    :cond_20
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 48
    iget-object p1, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 49
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    .line 50
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v5, :cond_21

    if-nez v6, :cond_21

    return v1

    :cond_21
    if-nez v5, :cond_22

    if-eqz v6, :cond_22

    return v2

    .line 51
    :cond_22
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "java."

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz v3, :cond_23

    if-nez p1, :cond_23

    return v1

    :cond_23
    if-nez v3, :cond_24

    if-eqz p1, :cond_24

    return v2

    :cond_24
    :goto_9
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->compareTo(Lcom/alibaba/fastjson2/reader/FieldReader;)I

    move-result p1

    return p1
.end method

.method public getInitReader()Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemClass()Ljava/lang/Class;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemClass:Ljava/lang/Class;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemClass:Ljava/lang/Class;

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemClass:Ljava/lang/Class;

    .line 19
    return-object v0
.end method

.method public getItemClassHash()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->getItemClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    return-wide v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 4
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public getItemType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    .line 3
    return-object v0
.end method

.method public getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public getObjectReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 9
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->readOnly:Z

    .line 3
    return v0
.end method

.method public isUnwrapped()Z
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 3
    .line 4
    const-wide/high16 v2, 0x2000000000000L

    .line 5
    and-long/2addr v0, v2

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 4
    return-void
.end method

.method public abstract readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
.end method

.method public abstract readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation
.end method

.method public readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public supportAcceptType(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 17
    return-object v0
.end method
