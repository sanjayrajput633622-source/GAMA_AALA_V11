.class public Lcom/alibaba/fastjson2/JSONArray;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static arrayWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 3

    .line 4
    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 6
    invoke-super {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 6
    return-object v0
.end method

.method public static from(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->r1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONArray;

    return-object p0
.end method

.method public static varargs from(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->s1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONArray;

    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 2

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 2

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 2

    .line 7
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->L(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->L(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->Q(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseArray(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/a;->R(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->G1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addArray()Lcom/alibaba/fastjson2/JSONArray;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9
    return-object v0
.end method

.method public addObject()Lcom/alibaba/fastjson2/JSONObject;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 9
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 6
    return-object v0
.end method

.method public fluentAdd(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    return-object p0
.end method

.method public fluentAddAll(Ljava/util/Collection;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/alibaba/fastjson2/JSONArray;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 4
    return-object p0
.end method

.method public fluentClear()Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    .line 4
    return-object p0
.end method

.method public fluentRemove(I)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public fluentRemove(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public fluentRemoveAll(Ljava/util/Collection;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/alibaba/fastjson2/JSONArray;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 4
    return-object p0
.end method

.method public fluentSet(ILjava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-object p0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    instance-of v0, p1, Ljava/math/BigDecimal;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Ljava/math/BigDecimal;

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_1
    instance-of v0, p1, Ljava/math/BigInteger;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    new-instance v0, Ljava/math/BigDecimal;

    .line 26
    .line 27
    check-cast p1, Ljava/math/BigInteger;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 31
    return-object v0

    .line 32
    .line 33
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    check-cast p1, Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(F)Ljava/math/BigDecimal;

    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    .line 48
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    check-cast p1, Ljava/lang/Double;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(D)Ljava/math/BigDecimal;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    .line 63
    :cond_4
    check-cast p1, Ljava/lang/Number;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 67
    move-result-wide v0

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    .line 74
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    check-cast p1, Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    .line 85
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    check-cast p1, Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    move-result p1

    .line 94
    .line 95
    if-eqz p1, :cond_7

    .line 96
    .line 97
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 98
    return-object p1

    .line 99
    .line 100
    :cond_7
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 101
    return-object p1

    .line 102
    .line 103
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 104
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    const-string v2, "Can not cast \'"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string p1, "\' to BigDecimal"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 133
    throw v0
.end method

.method public getBigInteger(I)Ljava/math/BigInteger;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    instance-of v0, p1, Ljava/math/BigInteger;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Ljava/math/BigInteger;

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    check-cast p1, Ljava/math/BigDecimal;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_2
    check-cast p1, Ljava/lang/Number;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    .line 43
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v1, :cond_6

    .line 46
    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-nez v1, :cond_5

    .line 54
    .line 55
    const-string v1, "null"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_4
    new-instance v0, Ljava/math/BigInteger;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 68
    :cond_5
    :goto_0
    return-object v0

    .line 69
    .line 70
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 71
    .line 72
    if-eqz v0, :cond_8

    .line 73
    .line 74
    check-cast p1, Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    sget-object p1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 83
    return-object p1

    .line 84
    .line 85
    :cond_7
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 86
    return-object p1

    .line 87
    .line 88
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v2, "Can not cast \'"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string p1, "\' to BigInteger"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 118
    throw v0
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x1

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Number;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 27
    move-result p1

    .line 28
    .line 29
    if-ne p1, v3, :cond_2

    .line 30
    move v2, v3

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    .line 37
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v1, :cond_8

    .line 40
    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 45
    move-result v1

    .line 46
    .line 47
    if-nez v1, :cond_7

    .line 48
    .line 49
    const-string v1, "null"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_4
    const-string v0, "true"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-nez v0, :cond_5

    .line 65
    .line 66
    const-string v0, "1"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result p1

    .line 71
    .line 72
    if-eqz p1, :cond_6

    .line 73
    :cond_5
    move v2, v3

    .line 74
    .line 75
    .line 76
    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_7
    :goto_0
    return-object v0

    .line 80
    .line 81
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    const-string v2, "Can not cast \'"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string p1, "\' to boolean"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 111
    throw v0
.end method

.method public getBooleanValue(I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->getBoolean(I)Ljava/lang/Boolean;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public getByte(I)Ljava/lang/Byte;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Number;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    const-string v1, "null"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_3
    :goto_0
    return-object v0

    .line 55
    .line 56
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v2, "Can not cast \'"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p1, "\' to byte"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 86
    throw v0
.end method

.method public getByteValue(I)B
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->getByte(I)Ljava/lang/Byte;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 4
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseDate(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 7
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    return-object v0

    .line 8
    :cond_3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 9
    :cond_4
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(ILjava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->getDate(I)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getDouble(I)Ljava/lang/Double;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Ljava/lang/Double;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Double;

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    const-string v1, "null"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 55
    move-result-wide v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_4
    :goto_0
    return-object v0

    .line 62
    .line 63
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "Can not cast \'"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p1, "\' to double"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0
.end method

.method public getDoubleValue(I)D
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->getDouble(I)Ljava/lang/Double;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    return-wide v0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getFloat(I)Ljava/lang/Float;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Ljava/lang/Float;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Float;

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    const-string v1, "null"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 55
    move-result p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_4
    :goto_0
    return-object v0

    .line 62
    .line 63
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "Can not cast \'"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p1, "\' to float"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0
.end method

.method public getFloatValue(I)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->getFloat(I)Ljava/lang/Float;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getIntValue(I)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Number;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    .line 21
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-nez v1, :cond_4

    .line 32
    .line 33
    const-string v1, "null"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    move-result v1

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_2
    const/16 v0, 0x2e

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 46
    move-result v0

    .line 47
    const/4 v1, -0x1

    .line 48
    .line 49
    if-eq v0, v1, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 53
    move-result-wide v0

    .line 54
    double-to-int p1, v0

    .line 55
    return p1

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :cond_4
    :goto_0
    return v0

    .line 62
    .line 63
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "Can not cast \'"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p1, "\' to int value"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Integer;

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    const-string v1, "null"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_3
    const/16 v0, 0x2e

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 57
    move-result v0

    .line 58
    const/4 v1, -0x1

    .line 59
    .line 60
    if-eq v0, v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 64
    move-result-wide v0

    .line 65
    double-to-int p1, v0

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    move-result p1

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_5
    :goto_0
    return-object v0

    .line 81
    .line 82
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 83
    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    check-cast p1, Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_7

    .line 93
    const/4 p1, 0x1

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_7
    const/4 p1, 0x0

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    .line 106
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    const-string v2, "Can not cast \'"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string p1, "\' to Integer"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 136
    throw v0
.end method

.method public getJSONArray(I)Lcom/alibaba/fastjson2/JSONArray;
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    instance-of v2, v0, Lcom/alibaba/fastjson2/JSONArray;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    check-cast v0, Lcom/alibaba/fastjson2/JSONArray;

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    .line 18
    const/4 v3, 0x0

    .line 19
    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_4

    .line 29
    .line 30
    const-string p1, "null"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 41
    move-result p1

    .line 42
    .line 43
    const/16 v1, 0x5b

    .line 44
    .line 45
    if-eq p1, v1, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 57
    const/4 v3, 0x0

    .line 58
    .line 59
    const-wide/16 v4, 0x0

    .line 60
    const/4 v2, 0x0

    .line 61
    .line 62
    .line 63
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    check-cast p1, Lcom/alibaba/fastjson2/JSONArray;

    .line 67
    return-object p1

    .line 68
    :cond_4
    :goto_0
    return-object v1

    .line 69
    .line 70
    :cond_5
    instance-of v2, v0, Ljava/util/Collection;

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    .line 75
    .line 76
    check-cast v0, Ljava/util/Collection;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object v1

    .line 84
    .line 85
    :cond_6
    instance-of v2, v0, [Ljava/lang/Object;

    .line 86
    .line 87
    if-eqz v2, :cond_7

    .line 88
    .line 89
    check-cast v0, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONArray;->of([Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-object v0

    .line 98
    .line 99
    .line 100
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 105
    move-result v2

    .line 106
    .line 107
    if-eqz v2, :cond_9

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 111
    move-result v1

    .line 112
    .line 113
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    .line 114
    .line 115
    .line 116
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 117
    .line 118
    :goto_1
    if-ge v3, v1, :cond_8

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 122
    move-result-object v4

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 128
    goto :goto_1

    .line 129
    .line 130
    .line 131
    :cond_8
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson2/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object v2

    .line 133
    :cond_9
    return-object v1
.end method

.method public getJSONObject(I)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    instance-of v2, v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    check-cast v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 15
    return-object v0

    .line 16
    .line 17
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v2, :cond_4

    .line 20
    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    const-string p1, "null"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->OBJECT_READER:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 43
    const/4 v5, 0x0

    .line 44
    .line 45
    const-wide/16 v6, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    .line 48
    .line 49
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    check-cast p1, Lcom/alibaba/fastjson2/JSONObject;

    .line 53
    return-object p1

    .line 54
    :cond_3
    :goto_0
    return-object v1

    .line 55
    .line 56
    :cond_4
    instance-of v1, v0, Ljava/util/Map;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    new-instance v1, Lcom/alibaba/fastjson2/JSONObject;

    .line 61
    .line 62
    check-cast v0, Ljava/util/Map;

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>(Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object v1

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    instance-of v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 84
    .line 85
    if-eqz v2, :cond_6

    .line 86
    .line 87
    check-cast v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->toJSONObject(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    .line 91
    move-result-object v0

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_6
    invoke-static {v0}, Lcom/alibaba/fastjson2/a;->r1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    check-cast v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-object v0
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Ljava/lang/Long;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Long;

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    const-string v1, "null"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_3
    const/16 v0, 0x2e

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 57
    move-result v0

    .line 58
    const/4 v1, -0x1

    .line 59
    .line 60
    if-eq v0, v1, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 64
    move-result-wide v0

    .line 65
    double-to-long v0, v0

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    move-result-object p1

    .line 70
    return-object p1

    .line 71
    .line 72
    .line 73
    :cond_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 74
    move-result-wide v0

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :cond_5
    :goto_0
    return-object v0

    .line 81
    .line 82
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 83
    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    check-cast p1, Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    move-result p1

    .line 91
    .line 92
    if-eqz p1, :cond_7

    .line 93
    .line 94
    const-wide/16 v0, 0x1

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    .line 101
    :cond_7
    const-wide/16 v0, 0x0

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    move-result-object p1

    .line 106
    return-object p1

    .line 107
    .line 108
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    const-string v2, "Can not cast \'"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string p1, "\' to Long"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v0
.end method

.method public getLongValue(I)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    return-wide v0

    .line 10
    .line 11
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Number;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 19
    move-result-wide v0

    .line 20
    return-wide v0

    .line 21
    .line 22
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    check-cast p1, Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v2, :cond_4

    .line 33
    .line 34
    const-string v2, "null"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    const/16 v0, 0x2e

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 47
    move-result v0

    .line 48
    const/4 v1, -0x1

    .line 49
    .line 50
    if-eq v0, v1, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 54
    move-result-wide v0

    .line 55
    double-to-long v0, v0

    .line 56
    return-wide v0

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 60
    move-result-wide v0

    .line 61
    :cond_4
    :goto_0
    return-wide v0

    .line 62
    .line 63
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "Can not cast \'"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p1, "\' to long value"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0
.end method

.method public getObject(ILcom/alibaba/fastjson2/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs getObject(ILjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 24
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 25
    invoke-virtual {v2, v1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 26
    invoke-interface {v1, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :cond_1
    array-length v1, p3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v5, v4

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v7, p3, v3

    .line 28
    iget-wide v8, v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v5, v8

    .line 29
    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    if-ne v7, v8, :cond_2

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    :cond_3
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 31
    invoke-virtual {v2, p2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    .line 32
    check-cast p1, Ljava/util/Map;

    invoke-interface {p2, p1, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 33
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {v2, p2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    .line 35
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :cond_5
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object p1

    .line 38
    :cond_6
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 39
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 41
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 42
    invoke-virtual {v2, p2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 43
    instance-of v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    if-eqz v3, :cond_9

    .line 44
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    .line 45
    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object v0

    .line 47
    :cond_9
    invoke-static {p1}, Lcom/alibaba/fastjson2/a;->B1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v6

    .line 49
    iget-object v1, v6, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    if-nez v0, :cond_a

    .line 50
    invoke-virtual {v2, p2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    :cond_a
    move-object v5, v0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    .line 51
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 52
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result p3

    if-eqz p3, :cond_b

    return-object p2

    .line 53
    :cond_b
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support input "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs getObject(ILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 4
    invoke-virtual {v1, v0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    array-length v0, p3

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v6, p3, v2

    .line 7
    iget-wide v7, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v4, v7

    .line 8
    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    if-ne v6, v7, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v1, p2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    .line 11
    check-cast p1, Ljava/util/Map;

    invoke-interface {p2, p1, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v1, p2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p2

    .line 14
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_5
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p1

    .line 17
    :cond_6
    invoke-static {p1}, Lcom/alibaba/fastjson2/a;->B1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v5

    .line 19
    iget-object p1, v5, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 20
    invoke-virtual {v1, p2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 21
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getShort(I)Ljava/lang/Short;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Ljava/lang/Short;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/lang/Short;

    .line 15
    return-object p1

    .line 16
    .line 17
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Number;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    .line 25
    move-result p1

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    const-string v1, "null"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 55
    move-result p1

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_4
    :goto_0
    return-object v0

    .line 62
    .line 63
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v2, "Can not cast \'"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string p1, "\' to short"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    throw v0
.end method

.method public getShortValue(I)S
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->getShort(I)Ljava/lang/Short;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    instance-of p2, p1, Ljava/util/Date;

    if-eqz p2, :cond_2

    .line 6
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const/4 v0, 0x0

    .line 7
    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->toString(JZLcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    instance-of p2, p1, Ljava/lang/Boolean;

    if-nez p2, :cond_4

    instance-of p2, p1, Ljava/lang/Character;

    if-nez p2, :cond_4

    instance-of p2, p1, Ljava/lang/Number;

    if-nez p2, :cond_4

    instance-of p2, p1, Ljava/util/UUID;

    if-nez p2, :cond_4

    instance-of p2, p1, Ljava/lang/Enum;

    if-eqz p2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p1}, Lcom/alibaba/fastjson2/a;->B1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-gez p1, :cond_1

    .line 8
    add-int/2addr p1, v0

    .line 9
    .line 10
    if-gez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    return-object v1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_1
    if-ge p1, v0, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    add-int/lit16 v2, v0, 0x1000

    .line 30
    .line 31
    if-ge p1, v2, :cond_4

    .line 32
    .line 33
    :goto_0
    add-int/lit8 v2, p1, -0x1

    .line 34
    .line 35
    if-eq p1, v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-super {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    move p1, v2

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-super {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_4
    return-object v1
.end method

.method public to(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 7
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    .line 10
    invoke-interface {p1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/reflect/Type;J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "J)TT;"
        }
    .end annotation

    .line 2
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    .line 6
    invoke-interface {p1, p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs toArray(Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")[TT;"
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    move v4, v1

    .line 6
    move v5, v4

    .line 7
    .line 8
    :goto_0
    if-ge v4, v0, :cond_1

    .line 9
    .line 10
    aget-object v6, p2, v4

    .line 11
    .line 12
    iget-wide v7, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 13
    or-long/2addr v2, v7

    .line 14
    .line 15
    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 16
    .line 17
    if-ne v6, v7, :cond_0

    .line 18
    const/4 v5, 0x1

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 31
    move-result v4

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    check-cast v4, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 41
    move-result v5

    .line 42
    .line 43
    if-ge v1, v5, :cond_7

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    instance-of v6, v5, Lcom/alibaba/fastjson2/JSONObject;

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    check-cast v5, Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v5, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    goto :goto_2

    .line 59
    .line 60
    :cond_2
    instance-of v6, v5, Ljava/util/Map;

    .line 61
    .line 62
    if-eqz v6, :cond_3

    .line 63
    .line 64
    check-cast v5, Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v5, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 68
    move-result-object v5

    .line 69
    goto :goto_2

    .line 70
    .line 71
    :cond_3
    if-eqz v5, :cond_6

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 75
    move-result v6

    .line 76
    .line 77
    if-eqz v6, :cond_4

    .line 78
    goto :goto_2

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v6, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    .line 86
    move-result-object v7

    .line 87
    .line 88
    if-eqz v7, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-interface {v7, v5}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    aput-object v5, v4, v1

    .line 95
    goto :goto_3

    .line 96
    .line 97
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, " cannot be converted to "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p2

    .line 122
    .line 123
    :cond_6
    :goto_2
    aput-object v5, v4, v1

    .line 124
    .line 125
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_7
    return-object v4
.end method

.method public varargs toJSONBBytes([Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriter;->ofJSONB([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    .line 14
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 18
    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    goto :goto_0

    .line 26
    :catchall_1
    move-exception p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    :cond_0
    :goto_0
    throw v0
.end method

.method public varargs toJSONString([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->toString([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs toJavaList(Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONArray;->toList(Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs toList(Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    move v4, v1

    .line 6
    move v5, v4

    .line 7
    .line 8
    :goto_0
    if-ge v4, v0, :cond_1

    .line 9
    .line 10
    aget-object v6, p2, v4

    .line 11
    .line 12
    iget-wide v7, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 13
    or-long/2addr v2, v7

    .line 14
    .line 15
    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 16
    .line 17
    if-ne v6, v7, :cond_0

    .line 18
    const/4 v5, 0x1

    .line 19
    .line 20
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    sget-object p2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    new-instance v4, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 33
    move-result v5

    .line 34
    .line 35
    .line 36
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 40
    move-result v5

    .line 41
    .line 42
    if-ge v1, v5, :cond_7

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v5

    .line 47
    .line 48
    instance-of v6, v5, Lcom/alibaba/fastjson2/JSONObject;

    .line 49
    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    check-cast v5, Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v5, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_2
    instance-of v6, v5, Ljava/util/Map;

    .line 60
    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    check-cast v5, Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v5, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 68
    goto :goto_2

    .line 69
    .line 70
    :cond_3
    if-eqz v5, :cond_6

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 74
    move-result v6

    .line 75
    .line 76
    if-eqz v6, :cond_4

    .line 77
    goto :goto_2

    .line 78
    .line 79
    .line 80
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v6, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    .line 85
    move-result-object v7

    .line 86
    .line 87
    if-eqz v7, :cond_5

    .line 88
    .line 89
    .line 90
    invoke-interface {v7, v5}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    .line 94
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_3

    .line 96
    .line 97
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v1, " cannot be converted to "

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    .line 120
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p2

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_7
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->of()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
.end method

.method public varargs toString([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 8

    .line 7
    const-class v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriter;->of([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v2

    .line 8
    :try_start_0
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    .line 9
    iget-object p1, v2, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 12
    sget-object p1, Lcom/alibaba/fastjson2/JSONArray;->arrayWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-nez p1, :cond_1

    .line 13
    invoke-virtual {v2, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    sput-object p1, Lcom/alibaba/fastjson2/JSONArray;->arrayWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 14
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson2/JSONArray;->arrayWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 15
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    return-object p1

    :goto_1
    if-eqz v2, :cond_2

    .line 17
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method
