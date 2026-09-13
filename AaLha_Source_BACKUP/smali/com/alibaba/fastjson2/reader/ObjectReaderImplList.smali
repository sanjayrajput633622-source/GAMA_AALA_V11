.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field static final CLASS_ARRAYS_LIST:Ljava/lang/Class;

.field static final CLASS_EMPTY_LIST:Ljava/lang/Class;

.field static final CLASS_EMPTY_SET:Ljava/lang/Class;

.field static final CLASS_SINGLETON:Ljava/lang/Class;

.field static final CLASS_SINGLETON_LIST:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

.field public static INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

.field public static JSON_ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;


# instance fields
.field final builder:Lcom/alibaba/fastjson2/function/Function;

.field volatile instanceError:Z

.field final instanceType:Ljava/lang/Class;

.field final instanceTypeHash:J

.field final itemClass:Ljava/lang/Class;

.field final itemClassName:Ljava/lang/String;

.field final itemClassNameHash:J

.field itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final itemType:Ljava/lang/reflect/Type;

.field final listClass:Ljava/lang/Class;

.field listSingleton:Ljava/lang/Object;

.field final listType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_SET:Ljava/lang/Class;

    .line 9
    .line 10
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    sput-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_LIST:Ljava/lang/Class;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 25
    move-result-object v4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    sput-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    move-result-object v4

    .line 40
    .line 41
    sput-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    .line 42
    const/4 v4, 0x1

    .line 43
    .line 44
    new-array v4, v4, [Ljava/lang/Integer;

    .line 45
    .line 46
    aput-object v3, v4, v2

    .line 47
    .line 48
    .line 49
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    sput-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    sput-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    .line 87
    .line 88
    new-instance v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 89
    .line 90
    const-string v10, "Object"

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const-wide v11, 0x7463656a624fL

    .line 96
    .line 97
    const-class v2, Ljava/util/ArrayList;

    .line 98
    .line 99
    const-class v3, Ljava/util/ArrayList;

    .line 100
    .line 101
    const-class v4, Ljava/util/ArrayList;

    .line 102
    .line 103
    const-wide/16 v5, 0x41

    .line 104
    .line 105
    const-class v7, Ljava/lang/Object;

    .line 106
    .line 107
    const-class v8, Ljava/lang/Object;

    .line 108
    const/4 v9, 0x0

    .line 109
    .line 110
    .line 111
    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/String;J)V

    .line 112
    .line 113
    sput-object v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 114
    .line 115
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 116
    .line 117
    const-string v11, "Object"

    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    const-wide v12, 0x7463656a624fL

    .line 123
    .line 124
    const-class v3, Lcom/alibaba/fastjson2/JSONArray;

    .line 125
    .line 126
    const-class v4, Lcom/alibaba/fastjson2/JSONArray;

    .line 127
    .line 128
    const-class v5, Lcom/alibaba/fastjson2/JSONArray;

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    const-wide v6, 0x7b6c46ca33cd9078L    # 3.3638134088297784E286

    .line 134
    .line 135
    const-class v8, Ljava/lang/Object;

    .line 136
    .line 137
    const-class v9, Ljava/lang/Object;

    .line 138
    const/4 v10, 0x0

    .line 139
    .line 140
    .line 141
    invoke-direct/range {v2 .. v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/String;J)V

    .line 142
    .line 143
    sput-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->JSON_ARRAY_READER:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6

    .line 1
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)V

    .line 2
    iput-object p2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listSingleton:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;JLjava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;Ljava/lang/String;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listType:Ljava/lang/reflect/Type;

    .line 15
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listClass:Ljava/lang/Class;

    .line 16
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    .line 17
    iput-wide p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceTypeHash:J

    .line 18
    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 19
    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    .line 20
    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 21
    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClassName:Ljava/lang/String;

    .line 22
    iput-wide p10, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClassNameHash:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listType:Ljava/lang/reflect/Type;

    .line 5
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listClass:Ljava/lang/Class;

    .line 6
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    .line 7
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceTypeHash:J

    .line 8
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 9
    invoke-static {p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    .line 10
    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClassName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 12
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClassNameHash:J

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p0, Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p0, Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    check-cast p0, Ljava/util/List;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static synthetic e(Ljava/util/Collection;)Ljava/util/Collection;
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

.method public static synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    check-cast p0, Ljava/util/List;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static synthetic g(Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    check-cast p1, Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 14
    .line 15
    instance-of v0, p0, Ljava/lang/Class;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p0, Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p0, Ljava/util/Collection;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    check-cast p1, Ljava/util/Collection;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    instance-of v0, p0, Ljava/lang/Class;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p0, Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static synthetic j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p0, Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic k(Ljava/util/Collection;)Ljava/util/Collection;
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

.method public static synthetic l(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 11

    .line 1
    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const-string p2, ""

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object p3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 22
    move-result-object p1

    .line 23
    :cond_0
    move-object v1, p0

    .line 24
    nop

    .line 25
    .line 26
    instance-of p0, v1, Ljava/lang/reflect/ParameterizedType;

    .line 27
    const/4 p2, 0x0

    .line 28
    const/4 p3, 0x1

    .line 29
    .line 30
    const-class v0, Ljava/lang/Object;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    move-object p0, v1

    .line 34
    .line 35
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 43
    move-result-object p0

    .line 44
    array-length v3, p0

    .line 45
    .line 46
    if-ne v3, p3, :cond_1

    .line 47
    .line 48
    aget-object v0, p0, p2

    .line 49
    :cond_1
    :goto_0
    move-object v4, v0

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_2
    if-eqz p1, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 63
    .line 64
    .line 65
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 70
    move-result-object p0

    .line 71
    array-length v3, p0

    .line 72
    .line 73
    if-ne v3, p3, :cond_1

    .line 74
    .line 75
    aget-object v0, p0, p2

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move-object v4, v0

    .line 78
    move-object v2, v1

    .line 79
    .line 80
    :goto_1
    if-nez p1, :cond_4

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 84
    move-result-object p1

    .line 85
    :cond_4
    move-object v2, p1

    .line 86
    .line 87
    const-class p0, Ljava/lang/Iterable;

    .line 88
    const/4 p1, 0x3

    .line 89
    const/4 v0, 0x2

    .line 90
    const/4 v3, -0x1

    .line 91
    const/4 v5, 0x0

    .line 92
    .line 93
    const-class v6, Ljava/util/ArrayList;

    .line 94
    .line 95
    if-eq v2, p0, :cond_18

    .line 96
    .line 97
    const-class p0, Ljava/util/Collection;

    .line 98
    .line 99
    if-eq v2, p0, :cond_18

    .line 100
    .line 101
    const-class p0, Ljava/util/List;

    .line 102
    .line 103
    if-eq v2, p0, :cond_18

    .line 104
    .line 105
    const-class p0, Ljava/util/AbstractCollection;

    .line 106
    .line 107
    if-eq v2, p0, :cond_18

    .line 108
    .line 109
    const-class p0, Ljava/util/AbstractList;

    .line 110
    .line 111
    if-ne v2, p0, :cond_5

    .line 112
    .line 113
    goto/16 :goto_5

    .line 114
    .line 115
    :cond_5
    const-class p0, Ljava/util/Queue;

    .line 116
    .line 117
    if-eq v2, p0, :cond_1b

    .line 118
    .line 119
    const-class p0, Ljava/util/Deque;

    .line 120
    .line 121
    if-eq v2, p0, :cond_1b

    .line 122
    .line 123
    const-class p0, Ljava/util/AbstractSequentialList;

    .line 124
    .line 125
    if-ne v2, p0, :cond_6

    .line 126
    .line 127
    goto/16 :goto_9

    .line 128
    .line 129
    :cond_6
    const-class p0, Ljava/util/Set;

    .line 130
    .line 131
    const-class v7, Ljava/util/HashSet;

    .line 132
    .line 133
    if-eq v2, p0, :cond_1a

    .line 134
    .line 135
    const-class p0, Ljava/util/AbstractSet;

    .line 136
    .line 137
    if-ne v2, p0, :cond_7

    .line 138
    .line 139
    goto/16 :goto_8

    .line 140
    .line 141
    :cond_7
    const-class p0, Ljava/util/EnumSet;

    .line 142
    .line 143
    if-ne v2, p0, :cond_8

    .line 144
    .line 145
    new-instance p0, Lcom/alibaba/fastjson2/reader/l;

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson2/reader/l;-><init>(Ljava/lang/reflect/Type;)V

    .line 149
    :goto_2
    move-object v6, v7

    .line 150
    .line 151
    goto/16 :goto_a

    .line 152
    .line 153
    :cond_8
    const-class p0, Ljava/util/NavigableSet;

    .line 154
    .line 155
    const-class v8, Ljava/util/TreeSet;

    .line 156
    .line 157
    if-eq v2, p0, :cond_19

    .line 158
    .line 159
    const-class p0, Ljava/util/SortedSet;

    .line 160
    .line 161
    if-ne v2, p0, :cond_9

    .line 162
    .line 163
    goto/16 :goto_7

    .line 164
    .line 165
    :cond_9
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    .line 166
    .line 167
    if-ne v2, p0, :cond_a

    .line 168
    .line 169
    new-instance p0, Lcom/alibaba/fastjson2/reader/w;

    .line 170
    .line 171
    .line 172
    invoke-direct {p0}, Lcom/alibaba/fastjson2/reader/w;-><init>()V

    .line 173
    .line 174
    goto/16 :goto_a

    .line 175
    .line 176
    :cond_a
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    .line 177
    .line 178
    if-ne v2, p0, :cond_b

    .line 179
    .line 180
    new-instance p0, Lcom/alibaba/fastjson2/reader/x;

    .line 181
    .line 182
    .line 183
    invoke-direct {p0}, Lcom/alibaba/fastjson2/reader/x;-><init>()V

    .line 184
    .line 185
    goto/16 :goto_a

    .line 186
    .line 187
    :cond_b
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    .line 188
    .line 189
    if-ne v2, p0, :cond_c

    .line 190
    .line 191
    new-instance v6, Lcom/alibaba/fastjson2/reader/y;

    .line 192
    .line 193
    .line 194
    invoke-direct {v6}, Lcom/alibaba/fastjson2/reader/y;-><init>()V

    .line 195
    move-object v10, v6

    .line 196
    move-object v6, p0

    .line 197
    move-object p0, v10

    .line 198
    .line 199
    goto/16 :goto_a

    .line 200
    .line 201
    :cond_c
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    .line 202
    .line 203
    if-ne v2, p0, :cond_d

    .line 204
    .line 205
    new-instance p0, Lcom/alibaba/fastjson2/reader/z;

    .line 206
    .line 207
    .line 208
    invoke-direct {p0}, Lcom/alibaba/fastjson2/reader/z;-><init>()V

    .line 209
    .line 210
    goto/16 :goto_a

    .line 211
    .line 212
    :cond_d
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    .line 213
    .line 214
    if-ne v2, p0, :cond_e

    .line 215
    .line 216
    new-instance p0, Lcom/alibaba/fastjson2/reader/a0;

    .line 217
    .line 218
    .line 219
    invoke-direct {p0}, Lcom/alibaba/fastjson2/reader/a0;-><init>()V

    .line 220
    .line 221
    goto/16 :goto_a

    .line 222
    .line 223
    :cond_e
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    .line 224
    .line 225
    if-ne v2, p0, :cond_f

    .line 226
    .line 227
    new-instance p0, Lcom/alibaba/fastjson2/reader/b0;

    .line 228
    .line 229
    .line 230
    invoke-direct {p0}, Lcom/alibaba/fastjson2/reader/b0;-><init>()V

    .line 231
    .line 232
    const-class v6, Ljava/util/LinkedHashSet;

    .line 233
    .line 234
    goto/16 :goto_a

    .line 235
    .line 236
    .line 237
    :cond_f
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 238
    move-result-object p0

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 245
    move-result v9

    .line 246
    .line 247
    .line 248
    sparse-switch v9, :sswitch_data_0

    .line 249
    :goto_3
    move p0, v3

    .line 250
    .line 251
    goto/16 :goto_4

    .line 252
    .line 253
    :sswitch_0
    const-string v9, "java.util.AbstractList$SubList"

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    move-result p0

    .line 258
    .line 259
    if-nez p0, :cond_10

    .line 260
    goto :goto_3

    .line 261
    :cond_10
    const/4 p0, 0x7

    .line 262
    goto :goto_4

    .line 263
    .line 264
    :sswitch_1
    const-string v9, "java.util.RandomAccessSubList"

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    move-result p0

    .line 269
    .line 270
    if-nez p0, :cond_11

    .line 271
    goto :goto_3

    .line 272
    :cond_11
    const/4 p0, 0x6

    .line 273
    goto :goto_4

    .line 274
    .line 275
    :sswitch_2
    const-string v9, "java.util.SubList"

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    move-result p0

    .line 280
    .line 281
    if-nez p0, :cond_12

    .line 282
    goto :goto_3

    .line 283
    :cond_12
    const/4 p0, 0x5

    .line 284
    goto :goto_4

    .line 285
    .line 286
    :sswitch_3
    const-string v9, "java.util.Collections$SynchronizedRandomAccessList"

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    move-result p0

    .line 291
    .line 292
    if-nez p0, :cond_13

    .line 293
    goto :goto_3

    .line 294
    :cond_13
    const/4 p0, 0x4

    .line 295
    goto :goto_4

    .line 296
    .line 297
    :sswitch_4
    const-string v9, "java.util.Collections$SynchronizedCollection"

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    move-result p0

    .line 302
    .line 303
    if-nez p0, :cond_14

    .line 304
    goto :goto_3

    .line 305
    :cond_14
    move p0, p1

    .line 306
    goto :goto_4

    .line 307
    .line 308
    :sswitch_5
    const-string v9, "java.util.Collections$SynchronizedSet"

    .line 309
    .line 310
    .line 311
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    move-result p0

    .line 313
    .line 314
    if-nez p0, :cond_15

    .line 315
    goto :goto_3

    .line 316
    :cond_15
    move p0, v0

    .line 317
    goto :goto_4

    .line 318
    .line 319
    :sswitch_6
    const-string v9, "java.util.Collections$SynchronizedSortedSet"

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    move-result p0

    .line 324
    .line 325
    if-nez p0, :cond_16

    .line 326
    goto :goto_3

    .line 327
    :cond_16
    move p0, p3

    .line 328
    goto :goto_4

    .line 329
    .line 330
    :sswitch_7
    const-string v9, "java.util.AbstractList$RandomAccessSubList"

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    move-result p0

    .line 335
    .line 336
    if-nez p0, :cond_17

    .line 337
    goto :goto_3

    .line 338
    :cond_17
    move p0, p2

    .line 339
    .line 340
    .line 341
    :goto_4
    packed-switch p0, :pswitch_data_0

    .line 342
    move-object v6, v2

    .line 343
    :cond_18
    :goto_5
    :pswitch_0
    move-object p0, v5

    .line 344
    goto :goto_a

    .line 345
    .line 346
    :pswitch_1
    new-instance p0, Lcom/alibaba/fastjson2/reader/c0;

    .line 347
    .line 348
    .line 349
    invoke-direct {p0}, Lcom/alibaba/fastjson2/reader/c0;-><init>()V

    .line 350
    goto :goto_a

    .line 351
    .line 352
    :pswitch_2
    new-instance p0, Lcom/alibaba/fastjson2/reader/d0;

    .line 353
    .line 354
    .line 355
    invoke-direct {p0}, Lcom/alibaba/fastjson2/reader/d0;-><init>()V

    .line 356
    goto :goto_a

    .line 357
    .line 358
    :pswitch_3
    new-instance p0, Lcom/alibaba/fastjson2/reader/m;

    .line 359
    .line 360
    .line 361
    invoke-direct {p0}, Lcom/alibaba/fastjson2/reader/m;-><init>()V

    .line 362
    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    :pswitch_4
    new-instance p0, Lcom/alibaba/fastjson2/reader/v;

    .line 366
    .line 367
    .line 368
    invoke-direct {p0}, Lcom/alibaba/fastjson2/reader/v;-><init>()V

    .line 369
    :goto_6
    move-object v6, v8

    .line 370
    goto :goto_a

    .line 371
    :cond_19
    :goto_7
    move-object p0, v5

    .line 372
    goto :goto_6

    .line 373
    :cond_1a
    :goto_8
    move-object p0, v5

    .line 374
    .line 375
    goto/16 :goto_2

    .line 376
    .line 377
    :cond_1b
    :goto_9
    const-class v6, Ljava/util/LinkedList;

    .line 378
    goto :goto_5

    .line 379
    .line 380
    .line 381
    :goto_a
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    .line 382
    move-result-object v7

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 389
    move-result v8

    .line 390
    .line 391
    .line 392
    sparse-switch v8, :sswitch_data_1

    .line 393
    :goto_b
    move p2, v3

    .line 394
    goto :goto_c

    .line 395
    .line 396
    :sswitch_8
    const-string p2, "kotlin.collections.EmptySet"

    .line 397
    .line 398
    .line 399
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    move-result p2

    .line 401
    .line 402
    if-nez p2, :cond_1c

    .line 403
    goto :goto_b

    .line 404
    :cond_1c
    move p2, p1

    .line 405
    goto :goto_c

    .line 406
    .line 407
    :sswitch_9
    const-string p1, "java.util.Collections$EmptyList"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    move-result p1

    .line 412
    .line 413
    if-nez p1, :cond_1d

    .line 414
    goto :goto_b

    .line 415
    :cond_1d
    move p2, v0

    .line 416
    goto :goto_c

    .line 417
    .line 418
    :sswitch_a
    const-string p1, "java.util.Collections$EmptySet"

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    move-result p1

    .line 423
    .line 424
    if-nez p1, :cond_1e

    .line 425
    goto :goto_b

    .line 426
    :cond_1e
    move p2, p3

    .line 427
    goto :goto_c

    .line 428
    .line 429
    :sswitch_b
    const-string p1, "kotlin.collections.EmptyList"

    .line 430
    .line 431
    .line 432
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    move-result p1

    .line 434
    .line 435
    if-nez p1, :cond_1f

    .line 436
    goto :goto_b

    .line 437
    .line 438
    .line 439
    :cond_1f
    :goto_c
    packed-switch p2, :pswitch_data_1

    .line 440
    .line 441
    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_SET:Ljava/lang/Class;

    .line 442
    .line 443
    if-eq v1, p1, :cond_23

    .line 444
    .line 445
    sget-object p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_LIST:Ljava/lang/Class;

    .line 446
    .line 447
    if-ne v1, p1, :cond_20

    .line 448
    goto :goto_d

    .line 449
    .line 450
    :cond_20
    const-class p1, Ljava/lang/String;

    .line 451
    .line 452
    if-ne v4, p1, :cond_21

    .line 453
    .line 454
    if-nez p0, :cond_21

    .line 455
    .line 456
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    .line 457
    .line 458
    .line 459
    invoke-direct {p0, v2, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 460
    return-object p0

    .line 461
    .line 462
    :cond_21
    const-class p1, Ljava/lang/Long;

    .line 463
    .line 464
    if-ne v4, p1, :cond_22

    .line 465
    .line 466
    if-nez p0, :cond_22

    .line 467
    .line 468
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    .line 469
    .line 470
    .line 471
    invoke-direct {p0, v2, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 472
    return-object p0

    .line 473
    .line 474
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 475
    move-object v5, p0

    .line 476
    move-object v3, v6

    .line 477
    .line 478
    .line 479
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)V

    .line 480
    return-object v0

    .line 481
    .line 482
    :cond_23
    :goto_d
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 483
    move-object v2, v1

    .line 484
    .line 485
    check-cast v2, Ljava/lang/Class;

    .line 486
    .line 487
    const-class v4, Ljava/lang/Object;

    .line 488
    const/4 v5, 0x0

    .line 489
    move-object v3, v2

    .line 490
    .line 491
    .line 492
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Function;)V

    .line 493
    return-object v0

    .line 494
    .line 495
    :pswitch_5
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 496
    .line 497
    check-cast v1, Ljava/lang/Class;

    .line 498
    .line 499
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 500
    .line 501
    .line 502
    invoke-direct {p0, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 503
    return-object p0

    .line 504
    .line 505
    :pswitch_6
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 506
    .line 507
    check-cast v1, Ljava/lang/Class;

    .line 508
    .line 509
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 510
    .line 511
    .line 512
    invoke-direct {p0, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 513
    return-object p0

    .line 514
    :pswitch_7
    move-object p0, v1

    .line 515
    .line 516
    check-cast p0, Ljava/lang/Class;

    .line 517
    .line 518
    :try_start_0
    const-string p1, "INSTANCE"

    .line 519
    .line 520
    .line 521
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 522
    move-result-object p1

    .line 523
    .line 524
    .line 525
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 526
    move-result p2

    .line 527
    .line 528
    if-nez p2, :cond_24

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1, p3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 532
    goto :goto_f

    .line 533
    :catch_0
    move-exception v0

    .line 534
    :goto_e
    move-object p0, v0

    .line 535
    goto :goto_10

    .line 536
    :catch_1
    move-exception v0

    .line 537
    goto :goto_e

    .line 538
    .line 539
    .line 540
    :cond_24
    :goto_f
    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .line 543
    new-instance p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 544
    .line 545
    .line 546
    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 547
    return-object p2

    .line 548
    .line 549
    :goto_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 550
    .line 551
    new-instance p2, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .line 556
    const-string p3, "Failed to get singleton of "

    .line 557
    .line 558
    .line 559
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    move-result-object p2

    .line 567
    .line 568
    .line 569
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    throw p1

    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    :sswitch_data_0
    .sparse-switch
        -0x7fab182d -> :sswitch_7
        -0x7a823dfe -> :sswitch_6
        -0x6007a441 -> :sswitch_5
        -0x30d4835f -> :sswitch_4
        -0xcb38ef8 -> :sswitch_3
        0x136dc13e -> :sswitch_2
        0x1bd28b37 -> :sswitch_1
        0x300127da -> :sswitch_0
    .end sparse-switch

    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    :sswitch_data_1
    .sparse-switch
        -0x6c36e6db -> :sswitch_b
        -0x18a7e41c -> :sswitch_a
        0x3a8415c -> :sswitch_9
        0x1548a6fb -> :sswitch_8
    .end sparse-switch

    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
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
    .locals 3

    .line 45
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    const-class p2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_0

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 47
    :cond_0
    const-class p2, Ljava/util/LinkedList;

    if-ne p1, p2, :cond_1

    .line 48
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 49
    :cond_1
    const-class p2, Ljava/util/HashSet;

    if-ne p1, p2, :cond_2

    .line 50
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 51
    :cond_2
    const-class p2, Ljava/util/LinkedHashSet;

    if-ne p1, p2, :cond_3

    .line 52
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p1

    .line 53
    :cond_3
    const-class p2, Ljava/util/TreeSet;

    if-ne p1, p2, :cond_4

    .line 54
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    return-object p1

    .line 55
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listSingleton:Ljava/lang/Object;

    if-eqz p2, :cond_5

    return-object p2

    :cond_5
    if-eqz p1, :cond_9

    .line 56
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceError:Z

    const-string p2, "create list error, type "

    const/4 v0, 0x1

    if-nez p1, :cond_6

    .line 57
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 58
    :catch_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceError:Z

    .line 59
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 60
    :goto_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceError:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 62
    :catch_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceError:Z

    .line 63
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    :cond_7
    if-nez p1, :cond_8

    goto :goto_1

    .line 64
    :cond_8
    throw p1

    .line 65
    :cond_9
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 8

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listClass:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    if-ne v0, v1, :cond_1

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p2, :cond_0

    .line 10
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1

    .line 11
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    if-ne v1, v2, :cond_2

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 16
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 18
    const-class v4, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v3, v4, :cond_4

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    if-eq v4, v3, :cond_6

    .line 19
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v3, :cond_5

    .line 20
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 21
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-interface {v3, v2, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 22
    :cond_6
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    if-eq v3, v4, :cond_10

    .line 23
    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 24
    invoke-interface {v4, v2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 25
    :cond_7
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_9

    .line 26
    check-cast v2, Ljava/util/Map;

    .line 27
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v3, :cond_8

    .line 28
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 29
    :cond_8
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-interface {v3, v2, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 30
    :cond_9
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_b

    .line 31
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v3, :cond_a

    .line 32
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 33
    :cond_a
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 34
    :cond_b
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_2

    .line 35
    :cond_c
    const-class v4, Ljava/lang/Enum;

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    const-string v5, " to "

    const-string v6, "can not convert from "

    if-eqz v4, :cond_f

    .line 36
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v4, :cond_d

    .line 37
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 38
    :cond_d
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    instance-of v7, v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    if-eqz v7, :cond_e

    .line 39
    check-cast v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;->getEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_2

    .line 40
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_f
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_10
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 43
    :cond_11
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p1, :cond_12

    .line 44
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    return-object v1
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

.method public getBuildFunction()Lcom/alibaba/fastjson2/function/Function;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 3
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listClass:Ljava/lang/Class;

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
    .locals 16

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 8
    move-result v2

    .line 9
    const/4 v8, 0x0

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    return-object v8

    .line 13
    .line 14
    :cond_0
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listClass:Ljava/lang/Class;

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    move-object/from16 v2, p1

    .line 19
    .line 20
    move-wide/from16 v6, p4

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    iget-object v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 27
    .line 28
    iget-object v5, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    .line 29
    .line 30
    const-class v6, Ljava/util/LinkedHashSet;

    .line 31
    .line 32
    const-class v7, Ljava/util/ArrayList;

    .line 33
    .line 34
    if-eqz v3, :cond_6

    .line 35
    .line 36
    instance-of v5, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    check-cast v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    .line 41
    .line 42
    iget-object v4, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    .line 45
    move-object v5, v4

    .line 46
    move-object v4, v3

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-interface {v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 51
    move-result-object v3

    .line 52
    move-object v5, v3

    .line 53
    .line 54
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    .line 55
    .line 56
    if-ne v5, v3, :cond_2

    .line 57
    .line 58
    new-instance v4, Lcom/alibaba/fastjson2/reader/n;

    .line 59
    .line 60
    .line 61
    invoke-direct {v4}, Lcom/alibaba/fastjson2/reader/n;-><init>()V

    .line 62
    :goto_1
    move-object v5, v7

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_2
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    .line 66
    .line 67
    if-ne v5, v3, :cond_3

    .line 68
    .line 69
    new-instance v4, Lcom/alibaba/fastjson2/reader/o;

    .line 70
    .line 71
    .line 72
    invoke-direct {v4}, Lcom/alibaba/fastjson2/reader/o;-><init>()V

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_3
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    .line 76
    .line 77
    if-ne v5, v3, :cond_4

    .line 78
    .line 79
    new-instance v4, Lcom/alibaba/fastjson2/reader/p;

    .line 80
    .line 81
    .line 82
    invoke-direct {v4}, Lcom/alibaba/fastjson2/reader/p;-><init>()V

    .line 83
    move-object v5, v6

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_4
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    .line 87
    .line 88
    if-ne v5, v3, :cond_5

    .line 89
    .line 90
    new-instance v4, Lcom/alibaba/fastjson2/reader/q;

    .line 91
    .line 92
    .line 93
    invoke-direct {v4}, Lcom/alibaba/fastjson2/reader/q;-><init>()V

    .line 94
    goto :goto_1

    .line 95
    .line 96
    :cond_5
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    .line 97
    .line 98
    if-ne v5, v3, :cond_6

    .line 99
    .line 100
    new-instance v4, Lcom/alibaba/fastjson2/reader/r;

    .line 101
    .line 102
    .line 103
    invoke-direct {v4}, Lcom/alibaba/fastjson2/reader/r;-><init>()V

    .line 104
    goto :goto_1

    .line 105
    .line 106
    .line 107
    :cond_6
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 108
    move-result v9

    .line 109
    .line 110
    if-lez v9, :cond_7

    .line 111
    .line 112
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 113
    .line 114
    if-nez v3, :cond_7

    .line 115
    .line 116
    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 117
    .line 118
    iget-object v10, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 122
    move-result-object v3

    .line 123
    .line 124
    iput-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 125
    .line 126
    :cond_7
    sget-object v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    .line 127
    .line 128
    const-string v10, ".."

    .line 129
    const/4 v11, 0x0

    .line 130
    .line 131
    if-ne v5, v3, :cond_b

    .line 132
    .line 133
    new-array v0, v9, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    move-result-object v12

    .line 138
    .line 139
    :goto_3
    if-ge v11, v9, :cond_a

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 143
    move-result v3

    .line 144
    .line 145
    if-eqz v3, :cond_9

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 149
    move-result-object v3

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v4

    .line 154
    .line 155
    if-eqz v4, :cond_8

    .line 156
    move-object v3, v12

    .line 157
    goto :goto_4

    .line 158
    .line 159
    .line 160
    :cond_8
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 161
    move-result-object v3

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v12, v11, v3}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    .line 165
    move-object v3, v8

    .line 166
    :goto_4
    move-object v15, v3

    .line 167
    move-object v3, v2

    .line 168
    move-object v2, v15

    .line 169
    goto :goto_5

    .line 170
    .line 171
    :cond_9
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 172
    .line 173
    iget-object v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 174
    .line 175
    .line 176
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object v5

    .line 178
    .line 179
    move-object/from16 v3, p1

    .line 180
    .line 181
    move-wide/from16 v6, p4

    .line 182
    .line 183
    .line 184
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 185
    move-result-object v2

    .line 186
    .line 187
    :goto_5
    aput-object v2, v0, v11

    .line 188
    .line 189
    add-int/lit8 v11, v11, 0x1

    .line 190
    move-object v2, v3

    .line 191
    goto :goto_3

    .line 192
    :cond_a
    return-object v12

    .line 193
    :cond_b
    move-object v3, v2

    .line 194
    .line 195
    if-ne v5, v7, :cond_d

    .line 196
    .line 197
    new-instance v2, Ljava/util/ArrayList;

    .line 198
    .line 199
    if-lez v9, :cond_c

    .line 200
    .line 201
    .line 202
    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    goto :goto_6

    .line 204
    .line 205
    .line 206
    :cond_c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :goto_6
    move-object v12, v2

    .line 208
    move-object v13, v4

    .line 209
    .line 210
    goto/16 :goto_8

    .line 211
    .line 212
    :cond_d
    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    .line 213
    .line 214
    if-ne v5, v2, :cond_f

    .line 215
    .line 216
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    .line 217
    .line 218
    if-lez v9, :cond_e

    .line 219
    .line 220
    .line 221
    invoke-direct {v2, v9}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 222
    goto :goto_6

    .line 223
    .line 224
    .line 225
    :cond_e
    invoke-direct {v2}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 226
    goto :goto_6

    .line 227
    .line 228
    :cond_f
    const-class v2, Ljava/util/HashSet;

    .line 229
    .line 230
    if-ne v5, v2, :cond_10

    .line 231
    .line 232
    new-instance v2, Ljava/util/HashSet;

    .line 233
    .line 234
    .line 235
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 236
    goto :goto_6

    .line 237
    .line 238
    :cond_10
    if-ne v5, v6, :cond_11

    .line 239
    .line 240
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 241
    .line 242
    .line 243
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 244
    goto :goto_6

    .line 245
    .line 246
    :cond_11
    const-class v2, Ljava/util/TreeSet;

    .line 247
    .line 248
    if-ne v5, v2, :cond_12

    .line 249
    .line 250
    new-instance v2, Ljava/util/TreeSet;

    .line 251
    .line 252
    .line 253
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 254
    goto :goto_6

    .line 255
    .line 256
    :cond_12
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_SET:Ljava/lang/Class;

    .line 257
    .line 258
    if-ne v5, v2, :cond_13

    .line 259
    .line 260
    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 261
    goto :goto_6

    .line 262
    .line 263
    :cond_13
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_LIST:Ljava/lang/Class;

    .line 264
    .line 265
    if-ne v5, v2, :cond_14

    .line 266
    .line 267
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 268
    goto :goto_6

    .line 269
    .line 270
    :cond_14
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    .line 271
    .line 272
    if-ne v5, v2, :cond_15

    .line 273
    .line 274
    new-instance v2, Ljava/util/ArrayList;

    .line 275
    .line 276
    .line 277
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    new-instance v4, Lcom/alibaba/fastjson2/reader/s;

    .line 280
    .line 281
    .line 282
    invoke-direct {v4}, Lcom/alibaba/fastjson2/reader/s;-><init>()V

    .line 283
    goto :goto_6

    .line 284
    .line 285
    :cond_15
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    .line 286
    .line 287
    if-ne v5, v2, :cond_16

    .line 288
    .line 289
    new-instance v2, Ljava/util/ArrayList;

    .line 290
    .line 291
    .line 292
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .line 294
    new-instance v4, Lcom/alibaba/fastjson2/reader/t;

    .line 295
    .line 296
    .line 297
    invoke-direct {v4}, Lcom/alibaba/fastjson2/reader/t;-><init>()V

    .line 298
    goto :goto_6

    .line 299
    .line 300
    :cond_16
    if-eqz v5, :cond_17

    .line 301
    .line 302
    const-class v2, Ljava/util/EnumSet;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 306
    move-result v2

    .line 307
    .line 308
    if-eqz v2, :cond_17

    .line 309
    .line 310
    new-instance v2, Ljava/util/HashSet;

    .line 311
    .line 312
    .line 313
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 314
    .line 315
    new-instance v4, Lcom/alibaba/fastjson2/reader/u;

    .line 316
    .line 317
    .line 318
    invoke-direct {v4, v1}, Lcom/alibaba/fastjson2/reader/u;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;)V

    .line 319
    goto :goto_6

    .line 320
    .line 321
    :cond_17
    if-eqz v5, :cond_18

    .line 322
    .line 323
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listType:Ljava/lang/reflect/Type;

    .line 324
    .line 325
    if-eq v5, v2, :cond_18

    .line 326
    .line 327
    .line 328
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 329
    move-result-object v2

    .line 330
    .line 331
    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_6

    .line 333
    :catch_0
    move-exception v0

    .line 334
    goto :goto_7

    .line 335
    :catch_1
    move-exception v0

    .line 336
    .line 337
    :goto_7
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 338
    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .line 344
    const-string v6, "create instance error "

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    move-result-object v4

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    move-result-object v3

    .line 359
    .line 360
    .line 361
    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    throw v2

    .line 363
    .line 364
    :cond_18
    iget-object v2, v3, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 365
    .line 366
    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 367
    .line 368
    or-long v6, v6, p4

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->createInstance(J)Ljava/lang/Object;

    .line 372
    move-result-object v2

    .line 373
    .line 374
    check-cast v2, Ljava/util/Collection;

    .line 375
    .line 376
    goto/16 :goto_6

    .line 377
    .line 378
    :goto_8
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 379
    .line 380
    iget-object v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 381
    .line 382
    if-eqz v0, :cond_1d

    .line 383
    .line 384
    if-eq v0, v5, :cond_1d

    .line 385
    .line 386
    instance-of v5, v0, Ljava/lang/reflect/ParameterizedType;

    .line 387
    .line 388
    if-eqz v5, :cond_1d

    .line 389
    .line 390
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 391
    .line 392
    .line 393
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 394
    move-result-object v0

    .line 395
    array-length v5, v0

    .line 396
    const/4 v6, 0x1

    .line 397
    .line 398
    if-ne v5, v6, :cond_1d

    .line 399
    .line 400
    aget-object v4, v0, v11

    .line 401
    .line 402
    iget-object v0, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 403
    .line 404
    if-eq v4, v0, :cond_1d

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 408
    move-result-object v2

    .line 409
    .line 410
    goto/16 :goto_d

    .line 411
    .line 412
    :goto_9
    if-ge v11, v9, :cond_1e

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 416
    move-result v2

    .line 417
    .line 418
    if-eqz v2, :cond_1b

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 422
    move-result-object v2

    .line 423
    .line 424
    .line 425
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    move-result v4

    .line 427
    .line 428
    if-eqz v4, :cond_19

    .line 429
    move-object v2, v12

    .line 430
    goto :goto_a

    .line 431
    .line 432
    .line 433
    :cond_19
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 434
    move-result-object v2

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3, v12, v11, v2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    .line 438
    .line 439
    instance-of v2, v12, Ljava/util/List;

    .line 440
    .line 441
    if-eqz v2, :cond_1a

    .line 442
    move-object v2, v8

    .line 443
    :goto_a
    move-object v4, v2

    .line 444
    move-object v2, v0

    .line 445
    move-object v0, v4

    .line 446
    move-object v4, v14

    .line 447
    goto :goto_b

    .line 448
    :cond_1a
    move-object v2, v0

    .line 449
    move-object v4, v14

    .line 450
    goto :goto_c

    .line 451
    .line 452
    :cond_1b
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    .line 453
    .line 454
    iget-wide v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClassNameHash:J

    .line 455
    .line 456
    move-object/from16 v2, p1

    .line 457
    .line 458
    move-wide/from16 v6, p4

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 462
    move-result-object v3

    .line 463
    .line 464
    if-eqz v3, :cond_1c

    .line 465
    .line 466
    .line 467
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    move-result-object v5

    .line 469
    .line 470
    move-wide/from16 v6, p4

    .line 471
    move-object v2, v3

    .line 472
    move-object v4, v14

    .line 473
    .line 474
    move-object/from16 v3, p1

    .line 475
    .line 476
    .line 477
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 478
    move-result-object v2

    .line 479
    move-object v15, v2

    .line 480
    move-object v2, v0

    .line 481
    move-object v0, v15

    .line 482
    goto :goto_b

    .line 483
    :cond_1c
    move-object v4, v14

    .line 484
    .line 485
    .line 486
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    move-result-object v5

    .line 488
    .line 489
    move-object/from16 v3, p1

    .line 490
    .line 491
    move-wide/from16 v6, p4

    .line 492
    move-object v2, v0

    .line 493
    .line 494
    .line 495
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 496
    move-result-object v0

    .line 497
    .line 498
    .line 499
    :goto_b
    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 500
    .line 501
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 502
    .line 503
    move-object/from16 v3, p1

    .line 504
    :cond_1d
    :goto_d
    move-object v0, v2

    .line 505
    move-object v14, v4

    .line 506
    goto :goto_9

    .line 507
    .line 508
    :cond_1e
    if-eqz v13, :cond_1f

    .line 509
    .line 510
    .line 511
    invoke-interface {v13, v12}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    move-result-object v0

    .line 513
    return-object v0

    .line 514
    :cond_1f
    return-object v12
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
    .locals 10

    .line 4
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 7
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 8
    :cond_0
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 9
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    move-object v2, p0

    move-object v4, p1

    move-object p1, p2

    .line 10
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    return-object p3

    .line 11
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 13
    :cond_3
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr v5, p4

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 14
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v1

    const/16 v3, 0x22

    .line 15
    const-class v9, Ljava/lang/String;

    if-ne v1, v3, :cond_a

    .line 16
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    if-ne v1, v9, :cond_4

    .line 18
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 19
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 20
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p3

    .line 22
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v1

    .line 23
    iget-object v3, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 24
    iget-object v3, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 25
    instance-of v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    if-eqz v3, :cond_8

    .line 26
    check-cast v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;->getEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-nez v0, :cond_7

    .line 27
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v4, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Lcom/alibaba/fastjson2/JSONReader$Feature;->isEnabled(J)Z

    move-result p2

    if-nez p2, :cond_6

    return-object p3

    .line 28
    :cond_6
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "enum not match : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 29
    :cond_7
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 30
    :cond_8
    iget-object p3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object p4, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p3, v9, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 31
    invoke-interface {p3, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 33
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 34
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/16 p3, 0x5b

    const/4 p4, 0x0

    if-ne v1, p3, :cond_13

    .line 35
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 36
    iget-object p3, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    iget-object p5, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    if-eqz p1, :cond_b

    .line 38
    iget-object v0, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listType:Ljava/lang/reflect/Type;

    if-eq p1, v0, :cond_b

    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_b

    .line 39
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 40
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 41
    aget-object p5, p1, p4

    .line 42
    iget-object p1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    if-eq p5, p1, :cond_b

    .line 43
    invoke-virtual {v4, p5}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p3

    :cond_b
    move-object v3, p3

    move-object v5, p5

    .line 44
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 45
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 46
    iget-object p1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p1, :cond_c

    .line 47
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    return-object p2

    .line 48
    :cond_d
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p1

    const/16 p3, 0x2c

    if-eq p1, p3, :cond_12

    if-ne v5, v9, :cond_e

    .line 49
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_e
    if-eqz v3, :cond_11

    .line 50
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 51
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object p1

    .line 52
    const-string p3, ".."

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    move-object p1, v2

    goto :goto_2

    .line 53
    :cond_f
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    invoke-virtual {v4, p2, p4, p1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_3

    .line 54
    :cond_10
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 55
    :goto_2
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 56
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TODO : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_12
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "illegal input error"

    invoke-virtual {v4, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_13
    iget-object p1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    const-class p3, Ljava/lang/Object;

    if-eq p1, p3, :cond_14

    iget-object p5, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez p5, :cond_15

    :cond_14
    if-ne p1, p3, :cond_17

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 59
    :cond_15
    iget-object v3, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v5, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 60
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object p1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p1, :cond_16

    .line 62
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    :cond_16
    return-object p2

    .line 63
    :cond_17
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
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
