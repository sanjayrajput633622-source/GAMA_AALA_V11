.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final instanceType:Ljava/lang/Class;

.field final listType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->instanceType:Ljava/lang/Class;

    .line 8
    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static synthetic b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/d;->a(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/d;->b(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
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

.method public synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->e(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(J)Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->instanceType:Ljava/lang/Class;

    const-class p2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 8
    :cond_0
    const-class p2, Ljava/util/LinkedList;

    if-ne p1, p2, :cond_1

    .line 9
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 10
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 11
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create list error, type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->instanceType:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 14
    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    return-object p1

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 17
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    invoke-static {p3}, Lcom/alibaba/fastjson2/a;->B1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 19
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_4
    :goto_2
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p2
.end method

.method public varargs synthetic createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->j(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 5
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

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

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->instanceType:Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 6
    move-result p3

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    return-object v0

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    move-object v1, p1

    .line 16
    move-wide v5, p4

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    :cond_1
    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    .line 29
    const/4 p3, 0x0

    .line 30
    .line 31
    if-ne p2, p1, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 35
    move-result p1

    .line 36
    .line 37
    new-array p2, p1, [Ljava/lang/String;

    .line 38
    .line 39
    :goto_0
    if-ge p3, p1, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 43
    move-result-object p4

    .line 44
    .line 45
    aput-object p4, p2, p3

    .line 46
    .line 47
    add-int/lit8 p3, p3, 0x1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 57
    move-result p1

    .line 58
    .line 59
    const-class p4, Ljava/util/ArrayList;

    .line 60
    .line 61
    if-ne p2, p4, :cond_5

    .line 62
    .line 63
    new-instance p2, Ljava/util/ArrayList;

    .line 64
    .line 65
    if-lez p1, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_5
    const-class p4, Lcom/alibaba/fastjson2/JSONArray;

    .line 78
    .line 79
    if-ne p2, p4, :cond_7

    .line 80
    .line 81
    new-instance p2, Lcom/alibaba/fastjson2/JSONArray;

    .line 82
    .line 83
    if-lez p1, :cond_6

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    .line 91
    :cond_6
    invoke-direct {p2}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_7
    sget-object p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    .line 96
    .line 97
    if-ne p2, p4, :cond_8

    .line 98
    .line 99
    new-instance p2, Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    new-instance v0, Lcom/alibaba/fastjson2/reader/n;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/n;-><init>()V

    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :cond_8
    sget-object p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    .line 112
    .line 113
    if-ne p2, p4, :cond_9

    .line 114
    .line 115
    new-instance p2, Ljava/util/ArrayList;

    .line 116
    .line 117
    .line 118
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    new-instance v0, Lcom/alibaba/fastjson2/reader/o;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/o;-><init>()V

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_9
    sget-object p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    .line 127
    .line 128
    if-ne p2, p4, :cond_a

    .line 129
    .line 130
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 131
    .line 132
    .line 133
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 134
    .line 135
    new-instance v0, Lcom/alibaba/fastjson2/reader/p;

    .line 136
    .line 137
    .line 138
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/p;-><init>()V

    .line 139
    goto :goto_3

    .line 140
    .line 141
    :cond_a
    sget-object p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    .line 142
    .line 143
    if-ne p2, p4, :cond_b

    .line 144
    .line 145
    new-instance p2, Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .line 150
    new-instance v0, Lcom/alibaba/fastjson2/reader/e0;

    .line 151
    .line 152
    .line 153
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/e0;-><init>()V

    .line 154
    goto :goto_3

    .line 155
    .line 156
    :cond_b
    sget-object p4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    .line 157
    .line 158
    if-ne p2, p4, :cond_c

    .line 159
    .line 160
    new-instance p2, Ljava/util/ArrayList;

    .line 161
    .line 162
    .line 163
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    new-instance v0, Lcom/alibaba/fastjson2/reader/f0;

    .line 166
    .line 167
    .line 168
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/f0;-><init>()V

    .line 169
    goto :goto_3

    .line 170
    .line 171
    :cond_c
    if-eqz p2, :cond_d

    .line 172
    .line 173
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

    .line 174
    .line 175
    if-eq p2, p4, :cond_d

    .line 176
    .line 177
    .line 178
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 179
    move-result-object p4

    .line 180
    .line 181
    check-cast p4, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    move-object p2, p4

    .line 183
    goto :goto_3

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :goto_1
    move-object p1, v0

    .line 186
    goto :goto_2

    .line 187
    :catch_1
    move-exception v0

    .line 188
    goto :goto_1

    .line 189
    .line 190
    :goto_2
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 191
    .line 192
    new-instance p4, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    const-string p5, "create instance error "

    .line 198
    .line 199
    .line 200
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object p2

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object p2

    .line 212
    .line 213
    .line 214
    invoke-direct {p3, p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    throw p3

    .line 216
    .line 217
    :cond_d
    iget-object p2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 218
    .line 219
    iget-wide p4, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 220
    or-long/2addr p4, v5

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->createInstance(J)Ljava/lang/Object;

    .line 224
    move-result-object p2

    .line 225
    .line 226
    check-cast p2, Ljava/util/Collection;

    .line 227
    .line 228
    :goto_3
    if-ge p3, p1, :cond_e

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 232
    move-result-object p4

    .line 233
    .line 234
    .line 235
    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    add-int/lit8 p3, p3, 0x1

    .line 238
    goto :goto_3

    .line 239
    .line 240
    :cond_e
    if-eqz v0, :cond_f

    .line 241
    .line 242
    .line 243
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    move-result-object p1

    .line 245
    .line 246
    check-cast p1, Ljava/util/Collection;

    .line 247
    return-object p1

    .line 248
    :cond_f
    return-object p2
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
    .locals 7

    .line 4
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p0

    move-object v2, p1

    .line 6
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p1, p4

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->createInstance(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 10
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p2

    const/16 p3, 0x5b

    if-ne p2, p3, :cond_5

    .line 11
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 12
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    .line 14
    instance-of p3, p1, Ljava/util/SortedSet;

    if-eqz p3, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/16 p3, 0x22

    if-eq p2, p3, :cond_7

    const/16 p3, 0x27

    if-eq p2, p3, :cond_7

    const/16 p3, 0x7b

    if-ne p2, p3, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    .line 19
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_8
    :goto_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p1
.end method

.method public varargs synthetic readObject(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->z(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->A(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
