.class public abstract Lcom/alibaba/fastjson2/TypeReference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->rawType:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 9
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/TypeReference;->rawType:Ljava/lang/Class;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Type;ZLcom/alibaba/fastjson2/TypeReference$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/TypeReference;-><init>(Ljava/lang/reflect/Type;Z)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 11
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 12
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    if-nez v0, :cond_0

    .line 13
    new-array p1, v1, [Ljava/lang/reflect/Type;

    const-class v0, Ljava/lang/Object;

    aput-object v0, p1, v2

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 17
    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/fastjson2/TypeReference;->canonicalize(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 18
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/TypeReference;->rawType:Ljava/lang/Class;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 19
    throw p1
.end method

.method public static arrayType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    .line 6
    return-object v0
.end method

.method private static canonicalize(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "[",
            "Ljava/lang/reflect/Type;",
            "I)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    array-length v3, p1

    .line 12
    .line 13
    if-ge v2, v3, :cond_c

    .line 14
    .line 15
    aget-object v3, p1, v2

    .line 16
    .line 17
    instance-of v3, v3, Ljava/lang/reflect/TypeVariable;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    array-length v3, p2

    .line 21
    .line 22
    if-ge p3, v3, :cond_0

    .line 23
    .line 24
    add-int/lit8 v3, p3, 0x1

    .line 25
    .line 26
    aget-object p3, p2, p3

    .line 27
    .line 28
    aput-object p3, p1, v2

    .line 29
    move p3, v3

    .line 30
    .line 31
    :cond_0
    aget-object v3, p1, v2

    .line 32
    .line 33
    instance-of v4, v3, Ljava/lang/reflect/GenericArrayType;

    .line 34
    .line 35
    if-eqz v4, :cond_a

    .line 36
    move v4, v1

    .line 37
    .line 38
    :goto_1
    instance-of v5, v3, Ljava/lang/reflect/GenericArrayType;

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    .line 45
    .line 46
    .line 47
    invoke-interface {v3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 48
    move-result-object v3

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    instance-of v5, v3, Ljava/lang/Class;

    .line 52
    .line 53
    if-eqz v5, :cond_a

    .line 54
    .line 55
    check-cast v3, Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    .line 59
    move-result v5

    .line 60
    .line 61
    if-eqz v5, :cond_a

    .line 62
    .line 63
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    if-ne v3, v5, :cond_2

    .line 66
    .line 67
    const/16 v3, 0x49

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_2
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    if-ne v3, v5, :cond_3

    .line 73
    .line 74
    const/16 v3, 0x4a

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_3
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    if-ne v3, v5, :cond_4

    .line 80
    .line 81
    const/16 v3, 0x46

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_4
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 85
    .line 86
    if-ne v3, v5, :cond_5

    .line 87
    .line 88
    const/16 v3, 0x44

    .line 89
    goto :goto_2

    .line 90
    .line 91
    :cond_5
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 92
    .line 93
    if-ne v3, v5, :cond_6

    .line 94
    .line 95
    const/16 v3, 0x5a

    .line 96
    goto :goto_2

    .line 97
    .line 98
    :cond_6
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 99
    .line 100
    if-ne v3, v5, :cond_7

    .line 101
    .line 102
    const/16 v3, 0x43

    .line 103
    goto :goto_2

    .line 104
    .line 105
    :cond_7
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 106
    .line 107
    if-ne v3, v5, :cond_8

    .line 108
    .line 109
    const/16 v3, 0x42

    .line 110
    goto :goto_2

    .line 111
    .line 112
    :cond_8
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 113
    .line 114
    if-ne v3, v5, :cond_a

    .line 115
    .line 116
    const/16 v3, 0x53

    .line 117
    .line 118
    :goto_2
    add-int/lit8 v5, v4, 0x1

    .line 119
    .line 120
    new-array v5, v5, [C

    .line 121
    move v6, v1

    .line 122
    .line 123
    :goto_3
    if-ge v6, v4, :cond_9

    .line 124
    .line 125
    const/16 v7, 0x5b

    .line 126
    .line 127
    aput-char v7, v5, v6

    .line 128
    .line 129
    add-int/lit8 v6, v6, 0x1

    .line 130
    goto :goto_3

    .line 131
    .line 132
    :cond_9
    aput-char v3, v5, v4

    .line 133
    .line 134
    new-instance v3, Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    .line 138
    .line 139
    .line 140
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    aput-object v3, p1, v2

    .line 144
    .line 145
    :cond_a
    aget-object v3, p1, v2

    .line 146
    .line 147
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    .line 148
    .line 149
    if-eqz v4, :cond_b

    .line 150
    .line 151
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 152
    .line 153
    .line 154
    invoke-static {p0, v3, p2, p3}, Lcom/alibaba/fastjson2/TypeReference;->canonicalize(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    aput-object v3, p1, v2

    .line 158
    .line 159
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_c
    new-instance p2, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 164
    .line 165
    .line 166
    invoke-direct {p2, p1, p0, v0}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 167
    return-object p2
.end method

.method public static collectionType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/reflect/Type;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    aput-object p1, v1, v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 12
    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson2/TypeReference<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/TypeReference$1;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/TypeReference$1;-><init>(Ljava/lang/reflect/Type;Z)V

    .line 7
    return-object v0
.end method

.method public static mapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/reflect/Type;

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    aput-object p1, v1, v2

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    aput-object p2, v1, p1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 15
    return-object v0
.end method

.method public static varargs of([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/MultiType;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/MultiType;-><init>([Ljava/lang/reflect/Type;)V

    .line 6
    return-object v0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->rawType:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 3
    return-object v0
.end method

.method public varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson2/a;->T(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs parseArray([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson2/a;->Y([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/a;->E0(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseObject([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/a;->W0([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public to(Lcom/alibaba/fastjson2/JSONArray;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs to(Lcom/alibaba/fastjson2/JSONObject;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONObject;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONObject;->to(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJavaObject(Lcom/alibaba/fastjson2/JSONArray;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs toJavaObject(Lcom/alibaba/fastjson2/JSONObject;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONObject;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONObject;->to(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
