.class public Lcom/alibaba/fastjson2/reader/FieldReaderList;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final fieldClassHash:J

.field final itemClassHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V
    .locals 15

    .line 1
    .line 2
    move-object/from16 v0, p4

    .line 3
    .line 4
    move-object/from16 v1, p5

    .line 5
    move-object v2, p0

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    move-object/from16 v4, p2

    .line 10
    .line 11
    move-object/from16 v5, p3

    .line 12
    .line 13
    move/from16 v6, p6

    .line 14
    .line 15
    move-wide/from16 v7, p7

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    move-object/from16 v13, p13

    .line 26
    .line 27
    move-object/from16 v14, p14

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v2 .. v14}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemClass:Ljava/lang/Class;

    .line 35
    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    move-wide v5, v3

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 48
    move-result-wide v5

    .line 49
    .line 50
    :goto_0
    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemClassHash:J

    .line 51
    .line 52
    if-nez p3, :cond_1

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 61
    move-result-wide v3

    .line 62
    .line 63
    :goto_1
    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->fieldClassHash:J

    .line 64
    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    const-class v1, Ljava/util/Date;

    .line 68
    .line 69
    if-ne v0, v1, :cond_2

    .line 70
    .line 71
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    .line 72
    .line 73
    move-object/from16 v10, p10

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v9, v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    .line 78
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 79
    :cond_2
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method public checkObjectAutoType(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 8

    .line 1
    .line 2
    const/16 v0, -0x6e

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 18
    move-result-wide v5

    .line 19
    .line 20
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v4, v7, v5, v6}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 44
    move-result-object v4

    .line 45
    .line 46
    :cond_0
    if-eqz v4, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p1, v5, v6}, Lcom/alibaba/fastjson2/JSONReader;->isSupportAutoType(J)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    .line 80
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    const-string v2, "autoType not support input "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v0

    .line 110
    .line 111
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 112
    move-object v1, p1

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    instance-of v0, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 119
    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    check-cast p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 123
    .line 124
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 129
    .line 130
    iget-object v5, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    .line 131
    .line 132
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    .line 133
    .line 134
    iget-object v7, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 135
    .line 136
    .line 137
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)V

    .line 138
    move-object p1, v2

    .line 139
    .line 140
    :cond_4
    if-eqz p1, :cond_5

    .line 141
    return-object p1

    .line 142
    .line 143
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 144
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    const-string v2, "auotype not support : "

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 172
    throw p1

    .line 173
    :cond_6
    const/4 p1, 0x0

    .line 174
    return-object p1
.end method

.method public createList(Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 3
    .line 4
    const-class v1, Ljava/util/List;

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const-class v1, Ljava/util/Collection;

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const-class v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Ljava/util/Collection;

    .line 26
    return-object p1

    .line 27
    .line 28
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    return-object p1
.end method

.method public getItemClassHash()J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderList;->itemClassHash:J

    .line 3
    return-wide v0
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 11

    .line 40
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v0

    .line 42
    new-array v2, v0, [Ljava/lang/Object;

    .line 43
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 44
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/reader/FieldReader;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    .line 45
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    move-object p1, v5

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v5, p1

    .line 47
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p1

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_3

    .line 48
    iget-object p1, v5, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    move-object v6, v5

    .line 49
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->createList(Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/util/Collection;

    move-result-object p1

    .line 51
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 52
    :goto_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p1

    .line 54
    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    const-wide/16 v9, 0x0

    .line 55
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v5

    move-object v5, v6

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    move-object v5, v2

    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 59
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_5

    const-class v2, Ljava/lang/Number;

    check-cast v0, Ljava/lang/Class;

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, v5, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 63
    iget-object v2, v5, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->createList(Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/util/Collection;

    move-result-object v2

    const/16 v3, 0x2c

    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 65
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 66
    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, p1, v1

    .line 67
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v2

    .line 69
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->accept(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONArray;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v0

    const-string v2, ".."

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, p2, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->addResolveTask(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_3
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v4, :cond_4

    .line 13
    invoke-interface {v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Lcom/alibaba/fastjson2/function/Function;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_4
    instance-of v4, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    if-eqz v4, :cond_5

    .line 15
    invoke-interface {v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Lcom/alibaba/fastjson2/function/Function;

    move-result-object v1

    .line 16
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_a

    .line 17
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    .line 18
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderList;->createList(Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/util/Collection;

    move-result-object v5

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    const/4 v0, 0x0

    .line 20
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v1, :cond_6

    .line 21
    invoke-interface {v1, v5}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    .line 22
    :cond_6
    invoke-virtual {p0, p2, v5}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 24
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v7, p1

    move-object p1, v5

    goto :goto_2

    .line 27
    :cond_8
    move-object v4, v5

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, p1, v4, v0, v3}, Lcom/alibaba/fastjson2/reader/FieldReader;->addResolveTask(Lcom/alibaba/fastjson2/JSONReader;Ljava/util/List;ILjava/lang/String;)V

    move-object v7, p1

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    .line 28
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 29
    :goto_2
    invoke-interface {v5, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object p1, v7

    goto :goto_1

    :cond_a
    move-object v7, p1

    const/16 p1, 0x7b

    if-ne v4, p1, :cond_c

    .line 31
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->getItemObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    instance-of p1, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz p1, :cond_c

    move-object v4, v7

    .line 32
    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->itemReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    const/4 v10, 0x0

    iget-wide v11, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    const/4 v9, 0x0

    move-object v8, v4

    invoke-interface/range {v7 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 33
    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    invoke-interface {v3, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 34
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_b

    .line 35
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 36
    :cond_b
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    :cond_c
    move-object v4, v7

    const/4 v6, 0x0

    .line 38
    iget-wide v7, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    const/4 v5, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
