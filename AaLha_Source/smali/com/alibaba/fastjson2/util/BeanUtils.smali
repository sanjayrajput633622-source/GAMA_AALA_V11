.class public abstract Lcom/alibaba/fastjson2/util/BeanUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;,
        Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;,
        Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

.field static final NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

.field static final charsCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[C>;"
        }
    .end annotation
.end field

.field static final constructorCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field static final declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field static final fieldCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field static final fieldMapCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile kotlinClassKlassError:Z

.field private static volatile kotlinError:Z

.field private static volatile kotlinKClassConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile kotlinKClassGetConstructors:Ljava/lang/reflect/Method;

.field private static volatile kotlinKFunctionGetParameters:Ljava/lang/reflect/Method;

.field private static volatile kotlinKParameterGetName:Ljava/lang/reflect/Method;

.field static final methodCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->charsCache:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    const/16 v0, 0x800

    .line 10
    .line 11
    new-array v0, v0, [Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 12
    .line 13
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 17
    .line 18
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 24
    .line 25
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    .line 32
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldMapCache:Ljava/util/concurrent/ConcurrentMap;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 38
    .line 39
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    .line 46
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 52
    .line 53
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJSONType1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    .line 4
    return-void
.end method

.method public static annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, [Ljava/lang/reflect/Method;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    array-length p0, v1

    .line 19
    const/4 v0, 0x0

    .line 20
    move v2, v0

    .line 21
    .line 22
    :goto_0
    if-ge v2, p0, :cond_6

    .line 23
    .line 24
    aget-object v3, v1, v2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 28
    move-result-object v4

    .line 29
    array-length v4, v4

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    goto :goto_2

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    const-class v5, Ljava/lang/Object;

    .line 39
    .line 40
    if-ne v4, v5, :cond_2

    .line 41
    goto :goto_2

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 52
    move-result v5

    .line 53
    const/4 v6, -0x1

    .line 54
    .line 55
    .line 56
    sparse-switch v5, :sswitch_data_0

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :sswitch_0
    const-string v5, "annotationType"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v4

    .line 64
    .line 65
    if-nez v4, :cond_3

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 v6, 0x2

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :sswitch_1
    const-string v5, "hashCode"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v4

    .line 75
    .line 76
    if-nez v4, :cond_4

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    const/4 v6, 0x1

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :sswitch_2
    const-string v5, "toString"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v4

    .line 86
    .line 87
    if-nez v4, :cond_5

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    move v6, v0

    .line 90
    .line 91
    .line 92
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v3}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 96
    .line 97
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    return-void

    .line 100
    nop

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_2
        0x8cdac1b -> :sswitch_1
        0x5620bf09 -> :sswitch_0
    .end sparse-switch

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 1

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

.method public static synthetic b(IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr p0, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-ne v1, p0, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    if-eq p0, p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 26
    move-result p0

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    :cond_0
    const/16 p0, 0x41

    .line 31
    const/4 p2, 0x1

    .line 32
    .line 33
    if-lt p3, p0, :cond_1

    .line 34
    .line 35
    const/16 p0, 0x5a

    .line 36
    .line 37
    if-gt p3, p0, :cond_1

    .line 38
    .line 39
    add-int/lit8 p3, p3, 0x20

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 43
    move-result p0

    .line 44
    .line 45
    if-ne p3, p0, :cond_1

    .line 46
    .line 47
    add-int/lit8 p0, p1, 0x1

    .line 48
    .line 49
    add-int/lit8 p3, v1, -0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2, p4, p0, p3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 53
    move-result p0

    .line 54
    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    aput-object p6, p5, v2

    .line 58
    return-void

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0, v2, p4, p1, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 62
    move-result p0

    .line 63
    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    aput-object p6, p5, p2

    .line 67
    return-void

    .line 68
    .line 69
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    if-ne p0, p1, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result p0

    .line 80
    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    aput-object p6, p5, v2

    .line 84
    :cond_3
    return-void
.end method

.method public static buildMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, [Ljava/lang/reflect/Method;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    array-length p0, v1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    if-ge v0, p0, :cond_4

    .line 22
    .line 23
    aget-object v2, v1, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 38
    move-result-object v3

    .line 39
    array-length v3, v3

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    return-object v2

    .line 54
    .line 55
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    :cond_0
    return-void
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/Class;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    .line 26
    return-object v0

    .line 27
    :cond_0
    return-object p0

    .line 28
    .line 29
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 34
    .line 35
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    .line 46
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 47
    move-result-object p0

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 51
    return-object v0

    .line 52
    .line 53
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 58
    .line 59
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;

    .line 60
    .line 61
    .line 62
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 63
    move-result-object p0

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    .line 67
    return-object v0

    .line 68
    .line 69
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 74
    .line 75
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;

    .line 76
    .line 77
    .line 78
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 83
    move-result-object p0

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 87
    return-object v0

    .line 88
    :cond_4
    return-object p0
.end method

.method public static checkArgument(Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 9
    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-object p0
.end method

.method public static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/Class;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 10
    move-result p0

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    .line 18
    .line 19
    :goto_1
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->checkArgument(Z)V

    .line 20
    return-void
.end method

.method public static cleanupCache(Ljava/lang/Class;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldMapCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static cleanupCache(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 6
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldMapCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 16
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_4

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 21
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_6

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 26
    :cond_7
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_8

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public static constructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Constructor;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, [Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    array-length p0, v1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    if-ge v0, p0, :cond_1

    .line 22
    .line 23
    aget-object v2, v1, v0

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public static synthetic d(Ljava/lang/String;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    .line 14
    aput-object p2, p1, p0

    .line 15
    return-void
.end method

.method public static dashes(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, [C

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x80

    .line 20
    .line 21
    new-array v1, v1, [C

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    move v3, p1

    .line 24
    move v4, v2

    .line 25
    .line 26
    :goto_0
    if-ge v3, v0, :cond_5

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v5

    .line 31
    .line 32
    const/16 v6, 0x2d

    .line 33
    .line 34
    const/16 v7, 0x5a

    .line 35
    .line 36
    const/16 v8, 0x41

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    if-lt v5, v8, :cond_1

    .line 41
    .line 42
    if-gt v5, v7, :cond_1

    .line 43
    .line 44
    if-le v3, p1, :cond_4

    .line 45
    .line 46
    add-int/lit8 v7, v4, 0x1

    .line 47
    .line 48
    aput-char v6, v1, v4

    .line 49
    move v4, v7

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_1
    const/16 v6, 0x61

    .line 55
    .line 56
    if-lt v5, v6, :cond_4

    .line 57
    .line 58
    const/16 v6, 0x7a

    .line 59
    .line 60
    if-gt v5, v6, :cond_4

    .line 61
    .line 62
    add-int/lit8 v5, v5, -0x20

    .line 63
    :goto_1
    int-to-char v5, v5

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_2
    if-lt v5, v8, :cond_4

    .line 67
    .line 68
    if-gt v5, v7, :cond_4

    .line 69
    .line 70
    if-le v3, p1, :cond_3

    .line 71
    .line 72
    add-int/lit8 v7, v4, 0x1

    .line 73
    .line 74
    aput-char v6, v1, v4

    .line 75
    move v4, v7

    .line 76
    .line 77
    :cond_3
    add-int/lit8 v5, v5, 0x20

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_4
    :goto_2
    add-int/lit8 v6, v4, 0x1

    .line 81
    .line 82
    aput-char v5, v1, v4

    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    move v4, v6

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_5
    new-instance p0, Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 94
    .line 95
    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-object p0

    .line 100
    .line 101
    :goto_3
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 102
    .line 103
    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    throw p0
.end method

.method public static declaredFields(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_c

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto/16 :goto_8

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-class v2, Ljava/lang/Object;

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    const-string v3, "com.google.protobuf.GeneratedMessageV3"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v2, v1

    .line 35
    .line 36
    :cond_2
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, [Ljava/lang/reflect/Field;

    .line 43
    .line 44
    if-nez v3, :cond_7

    .line 45
    .line 46
    .line 47
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :catchall_0
    new-array v3, v1, [Ljava/lang/reflect/Field;

    .line 55
    :goto_1
    array-length v0, v3

    .line 56
    move v4, v1

    .line 57
    .line 58
    :goto_2
    if-ge v4, v0, :cond_6

    .line 59
    .line 60
    aget-object v5, v3, v4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 64
    move-result v5

    .line 65
    .line 66
    .line 67
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 68
    move-result v5

    .line 69
    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    array-length v4, v3

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    array-length v4, v3

    .line 78
    move v5, v1

    .line 79
    .line 80
    :goto_3
    if-ge v5, v4, :cond_4

    .line 81
    .line 82
    aget-object v6, v3, v5

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 86
    move-result v7

    .line 87
    .line 88
    .line 89
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 90
    move-result v7

    .line 91
    .line 92
    if-eqz v7, :cond_3

    .line 93
    goto :goto_4

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 99
    goto :goto_3

    .line 100
    .line 101
    .line 102
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 103
    move-result v3

    .line 104
    .line 105
    new-array v3, v3, [Ljava/lang/reflect/Field;

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    check-cast v0, [Ljava/lang/reflect/Field;

    .line 112
    move-object v3, v0

    .line 113
    goto :goto_5

    .line 114
    .line 115
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 116
    goto :goto_2

    .line 117
    .line 118
    :cond_6
    :goto_5
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 119
    .line 120
    .line 121
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_7
    array-length p0, v3

    .line 123
    .line 124
    :goto_6
    if-ge v1, p0, :cond_c

    .line 125
    .line 126
    aget-object v0, v3, v1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 130
    move-result v4

    .line 131
    .line 132
    and-int/lit8 v4, v4, 0x8

    .line 133
    .line 134
    if-nez v4, :cond_b

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 138
    move-result-object v4

    .line 139
    .line 140
    const-class v5, Ljava/lang/ClassLoader;

    .line 141
    .line 142
    if-ne v4, v5, :cond_8

    .line 143
    goto :goto_7

    .line 144
    .line 145
    :cond_8
    if-eqz v2, :cond_9

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 153
    move-result-object v5

    .line 154
    .line 155
    const-string v6, "cardsmap_"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result v4

    .line 160
    .line 161
    if-eqz v4, :cond_9

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    const-string v5, "com.google.protobuf.MapField"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v4

    .line 172
    .line 173
    if-eqz v4, :cond_9

    .line 174
    goto :goto_8

    .line 175
    .line 176
    .line 177
    :cond_9
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 178
    move-result-object v4

    .line 179
    .line 180
    const-class v5, Ljava/util/AbstractMap;

    .line 181
    .line 182
    if-eq v4, v5, :cond_b

    .line 183
    .line 184
    const-class v5, Ljava/util/HashMap;

    .line 185
    .line 186
    if-eq v4, v5, :cond_b

    .line 187
    .line 188
    const-class v5, Ljava/util/LinkedHashMap;

    .line 189
    .line 190
    if-eq v4, v5, :cond_b

    .line 191
    .line 192
    const-class v5, Ljava/util/TreeMap;

    .line 193
    .line 194
    if-eq v4, v5, :cond_b

    .line 195
    .line 196
    const-class v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    .line 198
    if-ne v4, v5, :cond_a

    .line 199
    goto :goto_7

    .line 200
    .line 201
    .line 202
    :cond_a
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 203
    .line 204
    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_c
    :goto_8
    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    instance-of v0, p0, Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Class;

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public static dots(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, [C

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x80

    .line 20
    .line 21
    new-array v1, v1, [C

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    move v3, p1

    .line 24
    move v4, v2

    .line 25
    .line 26
    :goto_0
    if-ge v3, v0, :cond_5

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v5

    .line 31
    .line 32
    const/16 v6, 0x2e

    .line 33
    .line 34
    const/16 v7, 0x5a

    .line 35
    .line 36
    const/16 v8, 0x41

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    if-lt v5, v8, :cond_1

    .line 41
    .line 42
    if-gt v5, v7, :cond_1

    .line 43
    .line 44
    if-le v3, p1, :cond_4

    .line 45
    .line 46
    add-int/lit8 v7, v4, 0x1

    .line 47
    .line 48
    aput-char v6, v1, v4

    .line 49
    move v4, v7

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_1
    const/16 v6, 0x61

    .line 55
    .line 56
    if-lt v5, v6, :cond_4

    .line 57
    .line 58
    const/16 v6, 0x7a

    .line 59
    .line 60
    if-gt v5, v6, :cond_4

    .line 61
    .line 62
    add-int/lit8 v5, v5, -0x20

    .line 63
    :goto_1
    int-to-char v5, v5

    .line 64
    goto :goto_2

    .line 65
    .line 66
    :cond_2
    if-lt v5, v8, :cond_4

    .line 67
    .line 68
    if-gt v5, v7, :cond_4

    .line 69
    .line 70
    if-le v3, p1, :cond_3

    .line 71
    .line 72
    add-int/lit8 v7, v4, 0x1

    .line 73
    .line 74
    aput-char v6, v1, v4

    .line 75
    move v4, v7

    .line 76
    .line 77
    :cond_3
    add-int/lit8 v5, v5, 0x20

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_4
    :goto_2
    add-int/lit8 v6, v4, 0x1

    .line 81
    .line 82
    aput-char v5, v1, v4

    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    move v4, v6

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_5
    new-instance p0, Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 94
    .line 95
    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-object p0

    .line 100
    .line 101
    :goto_3
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 102
    .line 103
    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    throw p0
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    .line 14
    move-result p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    :cond_0
    return-void
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    if-eq p0, p1, :cond_1

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p0, Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    .line 15
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    return v2

    .line 24
    .line 25
    :cond_2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 26
    .line 27
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 67
    move-result p0

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    return v0

    .line 71
    :cond_3
    return v2

    .line 72
    .line 73
    :cond_4
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    .line 78
    .line 79
    if-nez v0, :cond_5

    .line 80
    return v2

    .line 81
    .line 82
    :cond_5
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 83
    .line 84
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 85
    .line 86
    .line 87
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 88
    move-result-object p0

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 96
    move-result p0

    .line 97
    return p0

    .line 98
    .line 99
    :cond_6
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    .line 100
    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    .line 104
    .line 105
    if-nez v1, :cond_7

    .line 106
    return v2

    .line 107
    .line 108
    :cond_7
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 109
    .line 110
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 111
    .line 112
    .line 113
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 122
    move-result v1

    .line 123
    .line 124
    if-eqz v1, :cond_8

    .line 125
    .line 126
    .line 127
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 128
    move-result-object p0

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 136
    move-result p0

    .line 137
    .line 138
    if-eqz p0, :cond_8

    .line 139
    return v0

    .line 140
    :cond_8
    return v2

    .line 141
    .line 142
    :cond_9
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    .line 143
    .line 144
    if-eqz v1, :cond_b

    .line 145
    .line 146
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    .line 147
    .line 148
    if-nez v1, :cond_a

    .line 149
    return v2

    .line 150
    .line 151
    :cond_a
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 152
    .line 153
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 154
    .line 155
    .line 156
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    .line 160
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    .line 161
    move-result-object v3

    .line 162
    .line 163
    if-ne v1, v3, :cond_b

    .line 164
    .line 165
    .line 166
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 168
    .line 169
    .line 170
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result p0

    .line 176
    .line 177
    if-eqz p0, :cond_b

    .line 178
    return v0

    .line 179
    :cond_b
    return v2
.end method

.method public static fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    const-string v0, "CamelCase"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    move-object p1, v0

    .line 6
    .line 7
    :cond_0
    if-eqz p0, :cond_1b

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, -0x1

    .line 23
    .line 24
    .line 25
    sparse-switch v1, :sswitch_data_0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :sswitch_0
    const-string v0, "SnakeCase"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_2
    const/16 v4, 0x12

    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :sswitch_1
    const-string v0, "UpperCaseWithUnderScores"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_3
    const/16 v4, 0x11

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :sswitch_2
    const-string v0, "CamelCase1x"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_4
    const/16 v4, 0x10

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    .line 72
    :sswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-nez v0, :cond_5

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :cond_5
    const/16 v4, 0xf

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :sswitch_4
    const-string v0, "LowerCaseWithDashes"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-nez v0, :cond_6

    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_6
    const/16 v4, 0xe

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :sswitch_5
    const-string v0, "LowerCase"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v0

    .line 102
    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    goto/16 :goto_0

    .line 106
    .line 107
    :cond_7
    const/16 v4, 0xd

    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :sswitch_6
    const-string v0, "KebabCase"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v0

    .line 116
    .line 117
    if-nez v0, :cond_8

    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_8
    const/16 v4, 0xc

    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :sswitch_7
    const-string v0, "UpperCamelCaseWithSpaces"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v0

    .line 130
    .line 131
    if-nez v0, :cond_9

    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_9
    const/16 v4, 0xb

    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :sswitch_8
    const-string v0, "PascalCase"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v0

    .line 144
    .line 145
    if-nez v0, :cond_a

    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_a
    const/16 v4, 0xa

    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :sswitch_9
    const-string v0, "LowerCaseWithDots"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v0

    .line 158
    .line 159
    if-nez v0, :cond_b

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_b
    const/16 v4, 0x9

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :sswitch_a
    const-string v0, "UpperCamelCaseWithDots"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v0

    .line 172
    .line 173
    if-nez v0, :cond_c

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_c
    const/16 v4, 0x8

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :sswitch_b
    const-string v0, "UpperCamelCaseWithDashes"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v0

    .line 186
    .line 187
    if-nez v0, :cond_d

    .line 188
    goto :goto_0

    .line 189
    :cond_d
    const/4 v4, 0x7

    .line 190
    goto :goto_0

    .line 191
    .line 192
    :sswitch_c
    const-string v0, "UpperCaseWithDashes"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v0

    .line 197
    .line 198
    if-nez v0, :cond_e

    .line 199
    goto :goto_0

    .line 200
    :cond_e
    const/4 v4, 0x6

    .line 201
    goto :goto_0

    .line 202
    .line 203
    :sswitch_d
    const-string v0, "UpperCamelCaseWithUnderScores"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result v0

    .line 208
    .line 209
    if-nez v0, :cond_f

    .line 210
    goto :goto_0

    .line 211
    :cond_f
    const/4 v4, 0x5

    .line 212
    goto :goto_0

    .line 213
    .line 214
    :sswitch_e
    const-string v0, "NoChange"

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    move-result v0

    .line 219
    .line 220
    if-nez v0, :cond_10

    .line 221
    goto :goto_0

    .line 222
    :cond_10
    const/4 v4, 0x4

    .line 223
    goto :goto_0

    .line 224
    .line 225
    :sswitch_f
    const-string v0, "LowerCaseWithUnderScores"

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    move-result v0

    .line 230
    .line 231
    if-nez v0, :cond_11

    .line 232
    goto :goto_0

    .line 233
    :cond_11
    const/4 v4, 0x3

    .line 234
    goto :goto_0

    .line 235
    .line 236
    :sswitch_10
    const-string v0, "NeverUseThisValueExceptDefaultValue"

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v0

    .line 241
    .line 242
    if-nez v0, :cond_12

    .line 243
    goto :goto_0

    .line 244
    :cond_12
    const/4 v4, 0x2

    .line 245
    goto :goto_0

    .line 246
    .line 247
    :sswitch_11
    const-string v0, "UpperCaseWithDots"

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result v0

    .line 252
    .line 253
    if-nez v0, :cond_13

    .line 254
    goto :goto_0

    .line 255
    :cond_13
    move v4, v2

    .line 256
    goto :goto_0

    .line 257
    .line 258
    :sswitch_12
    const-string v0, "UpperCase"

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    move-result v0

    .line 263
    .line 264
    if-nez v0, :cond_14

    .line 265
    goto :goto_0

    .line 266
    :cond_14
    move v4, v3

    .line 267
    .line 268
    :goto_0
    const/16 v0, 0x5f

    .line 269
    .line 270
    const/16 v1, 0x2d

    .line 271
    .line 272
    const/16 v5, 0x5a

    .line 273
    .line 274
    const/16 v6, 0x41

    .line 275
    .line 276
    const/16 v7, 0x20

    .line 277
    .line 278
    .line 279
    packed-switch v4, :pswitch_data_0

    .line 280
    .line 281
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 282
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    const-string v1, "TODO : "

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object p1

    .line 299
    .line 300
    .line 301
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 302
    throw p0

    .line 303
    .line 304
    .line 305
    :pswitch_0
    invoke-static {p0, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->snakeCase(Ljava/lang/String;I)Ljava/lang/String;

    .line 306
    move-result-object p0

    .line 307
    return-object p0

    .line 308
    .line 309
    .line 310
    :pswitch_1
    invoke-static {p0, v3, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->underScores(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 311
    move-result-object p0

    .line 312
    return-object p0

    .line 313
    .line 314
    .line 315
    :pswitch_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 316
    move-result p1

    .line 317
    .line 318
    if-lt p1, v6, :cond_1a

    .line 319
    .line 320
    if-gt p1, v5, :cond_1a

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 324
    move-result v0

    .line 325
    .line 326
    if-le v0, v2, :cond_1a

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 330
    move-result-object p0

    .line 331
    add-int/2addr p1, v7

    .line 332
    int-to-char p1, p1

    .line 333
    .line 334
    aput-char p1, p0, v3

    .line 335
    .line 336
    new-instance p1, Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 340
    return-object p1

    .line 341
    .line 342
    .line 343
    :pswitch_3
    invoke-static {p0, v3, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->dashes(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 344
    move-result-object p0

    .line 345
    return-object p0

    .line 346
    .line 347
    .line 348
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 349
    move-result-object p0

    .line 350
    return-object p0

    .line 351
    .line 352
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 359
    move-result v0

    .line 360
    .line 361
    if-ge v3, v0, :cond_16

    .line 362
    .line 363
    .line 364
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 365
    move-result v0

    .line 366
    .line 367
    if-lt v0, v6, :cond_15

    .line 368
    .line 369
    if-gt v0, v5, :cond_15

    .line 370
    .line 371
    add-int/lit8 v0, v0, 0x20

    .line 372
    int-to-char v0, v0

    .line 373
    .line 374
    if-lez v3, :cond_15

    .line 375
    .line 376
    .line 377
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    :cond_15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    add-int/lit8 v3, v3, 0x1

    .line 383
    goto :goto_1

    .line 384
    .line 385
    .line 386
    :cond_16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object p0

    .line 388
    return-object p0

    .line 389
    .line 390
    .line 391
    :pswitch_6
    invoke-static {p0, v3, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    .line 392
    move-result-object p0

    .line 393
    return-object p0

    .line 394
    .line 395
    .line 396
    :pswitch_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 397
    move-result p1

    .line 398
    .line 399
    const/16 v1, 0x7a

    .line 400
    .line 401
    const/16 v4, 0x61

    .line 402
    .line 403
    if-lt p1, v4, :cond_17

    .line 404
    .line 405
    if-gt p1, v1, :cond_17

    .line 406
    .line 407
    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 409
    move-result v5

    .line 410
    .line 411
    if-le v5, v2, :cond_17

    .line 412
    .line 413
    .line 414
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 415
    move-result v5

    .line 416
    .line 417
    if-lt v5, v4, :cond_17

    .line 418
    .line 419
    if-gt v5, v1, :cond_17

    .line 420
    .line 421
    .line 422
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 423
    move-result-object p0

    .line 424
    sub-int/2addr p1, v7

    .line 425
    int-to-char p1, p1

    .line 426
    .line 427
    aput-char p1, p0, v3

    .line 428
    .line 429
    new-instance p1, Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 433
    return-object p1

    .line 434
    .line 435
    :cond_17
    if-ne p1, v0, :cond_1a

    .line 436
    .line 437
    .line 438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 439
    move-result p1

    .line 440
    .line 441
    if-le p1, v2, :cond_1a

    .line 442
    .line 443
    .line 444
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 445
    move-result p1

    .line 446
    .line 447
    if-lt p1, v4, :cond_1a

    .line 448
    .line 449
    if-gt p1, v1, :cond_1a

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 453
    move-result-object p0

    .line 454
    sub-int/2addr p1, v7

    .line 455
    int-to-char p1, p1

    .line 456
    .line 457
    aput-char p1, p0, v2

    .line 458
    .line 459
    new-instance p1, Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 463
    return-object p1

    .line 464
    .line 465
    .line 466
    :pswitch_8
    invoke-static {p0, v3, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->dots(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 467
    move-result-object p0

    .line 468
    return-object p0

    .line 469
    .line 470
    :pswitch_9
    const/16 p1, 0x2e

    .line 471
    .line 472
    .line 473
    invoke-static {p0, v3, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    .line 474
    move-result-object p0

    .line 475
    return-object p0

    .line 476
    .line 477
    .line 478
    :pswitch_a
    invoke-static {p0, v3, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    .line 479
    move-result-object p0

    .line 480
    return-object p0

    .line 481
    .line 482
    .line 483
    :pswitch_b
    invoke-static {p0, v3, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->dashes(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 484
    move-result-object p0

    .line 485
    return-object p0

    .line 486
    .line 487
    .line 488
    :pswitch_c
    invoke-static {p0, v3, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    .line 489
    move-result-object p0

    .line 490
    return-object p0

    .line 491
    .line 492
    .line 493
    :pswitch_d
    invoke-static {p0, v3, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->underScores(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 494
    move-result-object p0

    .line 495
    return-object p0

    .line 496
    .line 497
    .line 498
    :pswitch_e
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 499
    move-result p1

    .line 500
    .line 501
    .line 502
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 503
    move-result v0

    .line 504
    .line 505
    if-le v0, v2, :cond_18

    .line 506
    .line 507
    .line 508
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 509
    move-result v0

    .line 510
    goto :goto_2

    .line 511
    :cond_18
    move v0, v3

    .line 512
    .line 513
    :goto_2
    if-lt p1, v6, :cond_1a

    .line 514
    .line 515
    if-gt p1, v5, :cond_1a

    .line 516
    .line 517
    .line 518
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 519
    move-result v1

    .line 520
    .line 521
    if-le v1, v2, :cond_1a

    .line 522
    .line 523
    if-lt v0, v6, :cond_19

    .line 524
    .line 525
    if-le v0, v5, :cond_1a

    .line 526
    .line 527
    .line 528
    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 529
    move-result-object p0

    .line 530
    add-int/2addr p1, v7

    .line 531
    int-to-char p1, p1

    .line 532
    .line 533
    aput-char p1, p0, v3

    .line 534
    .line 535
    new-instance p1, Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 539
    return-object p1

    .line 540
    :cond_1a
    return-object p0

    .line 541
    .line 542
    .line 543
    :pswitch_f
    invoke-static {p0, v3, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->dots(Ljava/lang/String;IZ)Ljava/lang/String;

    .line 544
    move-result-object p0

    .line 545
    return-object p0

    .line 546
    .line 547
    .line 548
    :pswitch_10
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 549
    move-result-object p0

    .line 550
    :cond_1b
    :goto_3
    return-object p0

    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
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
    .line 625
    .line 626
    .line 627
    .line 628
    :sswitch_data_0
    .sparse-switch
        -0x7b49b92e -> :sswitch_12
        -0x6f0bd0de -> :sswitch_11
        -0x4252863f -> :sswitch_10
        -0x2c7b17e -> :sswitch_f
        0xeab5cf1 -> :sswitch_e
        0x2221192f -> :sswitch_d
        0x23df1498 -> :sswitch_c
        0x375951ea -> :sswitch_b
        0x3a2198f4 -> :sswitch_a
        0x4e696b01 -> :sswitch_9
        0x4fa9695c -> :sswitch_8
        0x51bd2257 -> :sswitch_7
        0x5710eb19 -> :sswitch_6
        0x58b8d1b1 -> :sswitch_5
        0x58f4d4b7 -> :sswitch_4
        0x62ad98e6 -> :sswitch_3
        0x6daafdcd -> :sswitch_2
        0x75cfd341 -> :sswitch_1
        0x7c737870 -> :sswitch_0
    .end sparse-switch

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
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_e
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
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fields(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, [Ljava/lang/reflect/Field;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    :cond_0
    const-class v0, Ljava/lang/Enum;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 23
    move-result p0

    .line 24
    array-length v0, v1

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    :goto_0
    if-ge v2, v0, :cond_3

    .line 28
    .line 29
    aget-object v3, v1, v2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 33
    move-result v4

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    const-class v6, Ljava/lang/ClassLoader;

    .line 40
    .line 41
    if-eq v5, v6, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 45
    move-result v4

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    if-nez p0, :cond_1

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-interface {p1, v3}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 54
    .line 55
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    return-void
.end method

.method public static findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "annotationType must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "annotation must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "annotationType must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getConstructor(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, [Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    return-object v1
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 8

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldMapCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/util/Map;

    .line 9
    .line 10
    if-nez v0, :cond_6

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, [Ljava/lang/reflect/Field;

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    if-nez v2, :cond_4

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :catchall_0
    new-array v2, v3, [Ljava/lang/reflect/Field;

    .line 37
    :goto_0
    array-length v1, v2

    .line 38
    move v4, v3

    .line 39
    .line 40
    :goto_1
    if-ge v4, v1, :cond_3

    .line 41
    .line 42
    aget-object v5, v2, v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 46
    move-result v5

    .line 47
    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 50
    move-result v5

    .line 51
    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    array-length v4, v2

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    array-length v4, v2

    .line 60
    move v5, v3

    .line 61
    .line 62
    :goto_2
    if-ge v5, v4, :cond_1

    .line 63
    .line 64
    aget-object v6, v2, v5

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 68
    move-result v7

    .line 69
    .line 70
    .line 71
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 72
    move-result v7

    .line 73
    .line 74
    if-eqz v7, :cond_0

    .line 75
    goto :goto_3

    .line 76
    .line 77
    .line 78
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 85
    move-result v2

    .line 86
    .line 87
    new-array v2, v2, [Ljava/lang/reflect/Field;

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    check-cast v1, [Ljava/lang/reflect/Field;

    .line 94
    move-object v2, v1

    .line 95
    goto :goto_4

    .line 96
    .line 97
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 98
    goto :goto_1

    .line 99
    .line 100
    :cond_3
    :goto_4
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_4
    array-length v1, v2

    .line 105
    .line 106
    :goto_5
    if-ge v3, v1, :cond_5

    .line 107
    .line 108
    aget-object v4, v2, v3

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 112
    move-result-object v5

    .line 113
    .line 114
    .line 115
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    goto :goto_5

    .line 119
    .line 120
    :cond_5
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldMapCache:Ljava/util/concurrent/ConcurrentMap;

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-result-object p0

    .line 128
    move-object v0, p0

    .line 129
    .line 130
    check-cast v0, Ljava/util/Map;

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-result-object p0

    .line 135
    .line 136
    check-cast p0, Ljava/lang/reflect/Field;

    .line 137
    return-object p0
.end method

.method public static getDefaultConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 7

    .line 1
    .line 2
    const-class v0, Ljava/lang/StackTraceElement;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    check-cast v2, [Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_1
    array-length v0, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    .line 28
    :goto_0
    if-ge v4, v0, :cond_3

    .line 29
    .line 30
    aget-object v5, v2, v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 34
    move-result-object v6

    .line 35
    array-length v6, v6

    .line 36
    .line 37
    if-nez v6, :cond_2

    .line 38
    return-object v5

    .line 39
    .line 40
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_3
    if-nez p1, :cond_4

    .line 44
    return-object v1

    .line 45
    .line 46
    .line 47
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    if-eqz p0, :cond_6

    .line 51
    array-length p1, v2

    .line 52
    move v0, v3

    .line 53
    .line 54
    :goto_1
    if-ge v0, p1, :cond_6

    .line 55
    .line 56
    aget-object v4, v2, v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 60
    move-result-object v5

    .line 61
    array-length v5, v5

    .line 62
    const/4 v6, 0x1

    .line 63
    .line 64
    if-ne v5, v6, :cond_5

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    aget-object v5, v5, v3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v5

    .line 75
    .line 76
    if-eqz v5, :cond_5

    .line 77
    return-object v4

    .line 78
    .line 79
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_6
    return-object v1
.end method

.method public static getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, [Ljava/lang/Enum;

    .line 7
    array-length v1, v0

    .line 8
    .line 9
    new-array v2, v1, [Ljava/lang/String;

    .line 10
    .line 11
    sget-object v3, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 12
    .line 13
    .line 14
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v4

    .line 16
    .line 17
    check-cast v4, [Ljava/lang/reflect/Field;

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 23
    move-result-object v4

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    array-length p0, v4

    .line 28
    const/4 v3, 0x0

    .line 29
    move v5, v3

    .line 30
    .line 31
    :goto_0
    if-ge v5, p0, :cond_3

    .line 32
    .line 33
    aget-object v6, v4, v5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 37
    move-result-object v7

    .line 38
    move v8, v3

    .line 39
    :goto_1
    array-length v9, v0

    .line 40
    .line 41
    if-ge v8, v9, :cond_2

    .line 42
    .line 43
    aget-object v9, v0, v8

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 47
    move-result-object v9

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v10

    .line 52
    .line 53
    if-eqz v10, :cond_1

    .line 54
    .line 55
    const-class v7, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 59
    move-result-object v6

    .line 60
    .line 61
    check-cast v6, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 62
    .line 63
    if-eqz v6, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-interface {v6}, Lcom/alibaba/fastjson2/annotation/JSONField;->name()Ljava/lang/String;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 71
    move-result v7

    .line 72
    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v7

    .line 78
    .line 79
    if-nez v7, :cond_2

    .line 80
    .line 81
    aput-object v6, v2, v8

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    move p0, v3

    .line 90
    .line 91
    :goto_3
    if-ge v3, v1, :cond_5

    .line 92
    .line 93
    aget-object v0, v2, v3

    .line 94
    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    add-int/lit8 p0, p0, 0x1

    .line 98
    .line 99
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_5
    if-ne p0, v1, :cond_6

    .line 103
    const/4 p0, 0x0

    .line 104
    return-object p0

    .line 105
    :cond_6
    return-object v2
.end method

.method public static getEnumValueField(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Member;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    sget-object v2, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v3

    .line 15
    .line 16
    check-cast v3, [Ljava/lang/reflect/Method;

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, p0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_1
    array-length v2, v3

    .line 27
    const/4 v4, 0x0

    .line 28
    move-object v6, v0

    .line 29
    move v5, v4

    .line 30
    .line 31
    :goto_0
    if-ge v5, v2, :cond_10

    .line 32
    .line 33
    aget-object v7, v3, v5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 37
    move-result-object v8

    .line 38
    .line 39
    const-class v9, Ljava/lang/Void;

    .line 40
    .line 41
    if-ne v8, v9, :cond_2

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-static {v7}, Lcom/alibaba/fastjson2/reader/k;->a(Ljava/lang/reflect/Method;)I

    .line 47
    move-result v8

    .line 48
    .line 49
    if-eqz v8, :cond_3

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 55
    move-result-object v8

    .line 56
    .line 57
    const-class v9, Ljava/lang/Enum;

    .line 58
    .line 59
    if-eq v8, v9, :cond_f

    .line 60
    .line 61
    const-class v9, Ljava/lang/Object;

    .line 62
    .line 63
    if-ne v8, v9, :cond_4

    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    .line 68
    :cond_4
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 69
    move-result-object v8

    .line 70
    .line 71
    const-string v9, "values"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v9

    .line 76
    .line 77
    if-eqz v9, :cond_5

    .line 78
    .line 79
    goto/16 :goto_4

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-static {v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    .line 83
    move-result v9

    .line 84
    .line 85
    if-eqz v9, :cond_6

    .line 86
    return-object v7

    .line 87
    .line 88
    :cond_6
    const-string v9, "get"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 92
    move-result v9

    .line 93
    .line 94
    if-eqz v9, :cond_9

    .line 95
    .line 96
    .line 97
    invoke-static {v8, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v9

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v9}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 102
    move-result-object v9

    .line 103
    .line 104
    if-eqz v9, :cond_9

    .line 105
    .line 106
    .line 107
    invoke-static {v9}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    .line 108
    move-result v9

    .line 109
    .line 110
    if-eqz v9, :cond_9

    .line 111
    .line 112
    if-nez v6, :cond_7

    .line 113
    :goto_1
    move-object v6, v7

    .line 114
    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    .line 118
    :cond_7
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 119
    move-result-object v8

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 123
    move-result-object v9

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v8

    .line 128
    .line 129
    if-eqz v8, :cond_8

    .line 130
    .line 131
    instance-of v8, v6, Ljava/lang/reflect/Method;

    .line 132
    .line 133
    if-eqz v8, :cond_f

    .line 134
    move-object v8, v6

    .line 135
    .line 136
    check-cast v8, Ljava/lang/reflect/Method;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 140
    move-result-object v8

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 144
    move-result-object v9

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 148
    move-result v8

    .line 149
    .line 150
    if-eqz v8, :cond_f

    .line 151
    goto :goto_1

    .line 152
    :cond_8
    return-object v0

    .line 153
    .line 154
    :cond_9
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    .line 155
    .line 156
    .line 157
    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 158
    array-length v10, v1

    .line 159
    move v11, v4

    .line 160
    .line 161
    :goto_2
    if-ge v11, v10, :cond_d

    .line 162
    .line 163
    aget-object v12, v1, v11

    .line 164
    .line 165
    new-instance v13, Lcom/alibaba/fastjson2/util/d;

    .line 166
    .line 167
    .line 168
    invoke-direct {v13, v8, v9, v7}, Lcom/alibaba/fastjson2/util/d;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v12, v13}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 172
    .line 173
    instance-of v13, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 174
    .line 175
    if-eqz v13, :cond_a

    .line 176
    move-object v13, p1

    .line 177
    .line 178
    check-cast v13, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13, v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    .line 182
    move-result-object v12

    .line 183
    goto :goto_3

    .line 184
    .line 185
    :cond_a
    instance-of v13, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 186
    .line 187
    if-eqz v13, :cond_b

    .line 188
    move-object v13, p1

    .line 189
    .line 190
    check-cast v13, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v13, v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    .line 194
    move-result-object v12

    .line 195
    goto :goto_3

    .line 196
    .line 197
    :cond_b
    sget-object v13, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v13, v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    .line 201
    move-result-object v12

    .line 202
    .line 203
    :goto_3
    if-eqz v12, :cond_c

    .line 204
    .line 205
    new-instance v13, Lcom/alibaba/fastjson2/util/e;

    .line 206
    .line 207
    .line 208
    invoke-direct {v13, v8, v9, v7}, Lcom/alibaba/fastjson2/util/e;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v12, v13}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 212
    .line 213
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 214
    goto :goto_2

    .line 215
    .line 216
    .line 217
    :cond_d
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 218
    move-result-object v7

    .line 219
    .line 220
    check-cast v7, Ljava/lang/reflect/Member;

    .line 221
    .line 222
    if-eqz v7, :cond_f

    .line 223
    .line 224
    if-nez v6, :cond_e

    .line 225
    goto :goto_1

    .line 226
    .line 227
    .line 228
    :cond_e
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 229
    move-result-object v8

    .line 230
    .line 231
    .line 232
    invoke-interface {v7}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 233
    move-result-object v7

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    move-result v7

    .line 238
    .line 239
    if-nez v7, :cond_f

    .line 240
    return-object v0

    .line 241
    .line 242
    :cond_f
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_10
    if-eqz v6, :cond_11

    .line 247
    return-object v6

    .line 248
    .line 249
    :cond_11
    sget-object p1, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 250
    .line 251
    .line 252
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    move-result-object v1

    .line 254
    .line 255
    check-cast v1, [Ljava/lang/reflect/Field;

    .line 256
    .line 257
    if-nez v1, :cond_12

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 261
    move-result-object v1

    .line 262
    .line 263
    .line 264
    invoke-interface {p1, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 268
    move-result-object p0

    .line 269
    .line 270
    check-cast p0, [Ljava/lang/Enum;

    .line 271
    array-length p1, v1

    .line 272
    move v2, v4

    .line 273
    .line 274
    :goto_5
    if-ge v2, p1, :cond_16

    .line 275
    .line 276
    aget-object v3, v1, v2

    .line 277
    .line 278
    if-eqz p0, :cond_14

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 282
    move-result-object v5

    .line 283
    array-length v6, p0

    .line 284
    move v7, v4

    .line 285
    .line 286
    :goto_6
    if-ge v7, v6, :cond_14

    .line 287
    .line 288
    aget-object v8, p0, v7

    .line 289
    .line 290
    .line 291
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 292
    move-result-object v8

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    move-result v8

    .line 297
    .line 298
    if-eqz v8, :cond_13

    .line 299
    const/4 v5, 0x1

    .line 300
    goto :goto_7

    .line 301
    .line 302
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 303
    goto :goto_6

    .line 304
    :cond_14
    move v5, v4

    .line 305
    .line 306
    .line 307
    :goto_7
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    .line 308
    move-result v6

    .line 309
    .line 310
    if-eqz v6, :cond_15

    .line 311
    .line 312
    if-nez v5, :cond_15

    .line 313
    return-object v3

    .line 314
    .line 315
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 316
    goto :goto_5

    .line 317
    :cond_16
    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    array-length p0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v2, v1, v0

    .line 5
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;
    .locals 14

    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 8
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x2

    if-le v1, v3, :cond_6

    .line 9
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 10
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 11
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x69

    const/16 v11, 0x73

    if-ne v4, v10, :cond_2

    if-ne v6, v11, :cond_2

    .line 12
    const-class v4, Ljava/lang/Boolean;

    if-eq v0, v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v7

    :goto_1
    move v6, v8

    :goto_2
    move v9, v6

    goto :goto_5

    :cond_2
    const/16 v10, 0x67

    const/16 v12, 0x74

    const/16 v13, 0x65

    if-ne v4, v10, :cond_4

    if-ne v6, v13, :cond_4

    if-ne v9, v12, :cond_4

    if-le v1, v2, :cond_3

    move v4, v7

    goto :goto_3

    :cond_3
    move v4, v8

    :goto_3
    move v6, v4

    move v4, v8

    move v9, v4

    goto :goto_5

    :cond_4
    if-ne v4, v11, :cond_6

    if-ne v6, v13, :cond_6

    if-ne v9, v12, :cond_6

    if-le v1, v2, :cond_5

    .line 13
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v7, :cond_5

    move v4, v7

    goto :goto_4

    :cond_5
    move v4, v8

    :goto_4
    move v9, v4

    move v4, v8

    move v6, v4

    goto :goto_5

    :cond_6
    move v4, v8

    move v6, v4

    goto :goto_2

    .line 14
    :goto_5
    new-array v10, v3, [Ljava/lang/reflect/Field;

    if-nez v4, :cond_8

    if-nez v6, :cond_8

    if-eqz v9, :cond_7

    goto :goto_6

    :cond_7
    move-object v6, v10

    goto :goto_8

    :cond_8
    :goto_6
    if-nez v4, :cond_a

    if-eqz v6, :cond_9

    goto :goto_7

    .line 15
    :cond_9
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    aget-object v0, p1, v8

    :cond_a
    :goto_7
    if-eqz v4, :cond_b

    move v2, v3

    :cond_b
    sub-int p1, v1, v2

    .line 16
    new-array p1, p1, [C

    .line 17
    invoke-virtual {v5, v2, v1, p1, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 18
    aget-char v4, p1, v8

    move-object v3, v0

    .line 19
    new-instance v0, Lcom/alibaba/fastjson2/util/b;

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/b;-><init>(IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;)V

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 20
    :goto_8
    aget-object p0, v6, v8

    if-eqz p0, :cond_c

    return-object p0

    :cond_c
    aget-object p0, v6, v7

    return-object p0
.end method

.method public static getFieldInfo(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, [Ljava/lang/reflect/Field;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v2, v1

    .line 20
    .line 21
    if-ge v0, v2, :cond_5

    .line 22
    .line 23
    aget-object v2, v1, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 27
    move-result v3

    .line 28
    .line 29
    and-int/lit8 v3, v3, 0x8

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v4

    .line 41
    .line 42
    const-wide/high16 v5, 0x10000000000000L

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1, p0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 48
    .line 49
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 50
    or-long/2addr v2, v5

    .line 51
    .line 52
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v4

    .line 58
    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1, p0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 63
    .line 64
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 65
    or-long/2addr v2, v5

    .line 66
    .line 67
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v3

    .line 73
    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1, p0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 78
    .line 79
    iget-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 80
    or-long/2addr v2, v5

    .line 81
    .line 82
    iput-wide v2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 83
    .line 84
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    return-void
.end method

.method public static getFieldType(Lcom/alibaba/fastjson2/TypeReference;Ljava/lang/Class;Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/TypeReference;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    move-object p2, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    :goto_0
    const-class v1, Ljava/lang/Object;

    .line 12
    .line 13
    if-eq p1, v1, :cond_4

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    move-object p0, v0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    :goto_1
    if-ne p2, p1, :cond_2

    .line 24
    .line 25
    new-instance p1, Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {p0, p2, p3, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {p0, p1, v1, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/alibaba/fastjson2/TypeReference;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getRawType()Ljava/lang/Class;

    .line 57
    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    return-object p0

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 7
    move-result p0

    .line 8
    .line 9
    if-eqz p0, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 13
    move-result-object p0

    .line 14
    array-length v0, p0

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    :goto_0
    if-ge v1, v0, :cond_3

    .line 18
    .line 19
    aget-object v2, p0, v1

    .line 20
    .line 21
    if-ne v2, p2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    aget-object p0, p0, v1

    .line 28
    return-object p0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    move-result v2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    aget-object p1, p1, v1

    .line 41
    .line 42
    aget-object p0, p0, v1

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p0, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_3
    if-eqz p1, :cond_6

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 56
    move-result p0

    .line 57
    .line 58
    if-nez p0, :cond_6

    .line 59
    .line 60
    :goto_1
    const-class p0, Ljava/lang/Object;

    .line 61
    .line 62
    if-eq p1, p0, :cond_6

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    if-ne p0, p2, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p0, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 87
    move-result-object p0

    .line 88
    return-object p0

    .line 89
    :cond_5
    move-object p1, p0

    .line 90
    goto :goto_1

    .line 91
    :cond_6
    return-object p2
.end method

.method public static getKotlinConstructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, [Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    .line 20
    array-length v0, v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    :goto_0
    if-ge v3, v0, :cond_4

    .line 25
    .line 26
    aget-object v4, v1, v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 30
    move-result-object v5

    .line 31
    array-length v5, v5

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    array-length v6, p0

    .line 35
    .line 36
    if-eq v5, v6, :cond_1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v6, 0x2

    .line 39
    .line 40
    if-le v5, v6, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 44
    move-result-object v6

    .line 45
    .line 46
    add-int/lit8 v7, v5, -0x2

    .line 47
    .line 48
    aget-object v7, v6, v7

    .line 49
    .line 50
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    if-ne v7, v8, :cond_2

    .line 53
    .line 54
    add-int/lit8 v7, v5, -0x1

    .line 55
    .line 56
    aget-object v6, v6, v7

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    const-string v7, "kotlin.jvm.internal.DefaultConstructorMarker"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v6

    .line 67
    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    iput-object v4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->markerConstructor:Ljava/lang/reflect/Constructor;

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_2
    if-eqz v2, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 77
    move-result-object v6

    .line 78
    array-length v6, v6

    .line 79
    .line 80
    if-lt v6, v5, :cond_3

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object v2, v4

    .line 83
    .line 84
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_4
    iput-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 88
    return-void
.end method

.method public static getKotlinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKClassConstructor:Ljava/lang/reflect/Constructor;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "kotlin.reflect.jvm.internal.KClassImpl"

    .line 6
    const/4 v3, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-boolean v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinClassKlassError:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    .line 20
    const-class v5, Ljava/lang/Class;

    .line 21
    .line 22
    aput-object v5, v4, v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKClassConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :catchall_0
    sput-boolean v3, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinClassKlassError:Z

    .line 32
    .line 33
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKClassConstructor:Ljava/lang/reflect/Constructor;

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    return-object v4

    .line 38
    .line 39
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKClassGetConstructors:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    sget-boolean v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinClassKlassError:Z

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    const-string v2, "getConstructors"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKClassGetConstructors:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :catchall_1
    sput-boolean v3, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinClassKlassError:Z

    .line 61
    .line 62
    :cond_2
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKFunctionGetParameters:Ljava/lang/reflect/Method;

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    sget-boolean v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinClassKlassError:Z

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    :try_start_2
    const-class v0, Lkotlin/reflect/KFunction;

    .line 71
    .line 72
    const-string v2, "getParameters"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKFunctionGetParameters:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :catchall_2
    sput-boolean v3, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinClassKlassError:Z

    .line 82
    .line 83
    :cond_3
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKParameterGetName:Ljava/lang/reflect/Method;

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    sget-boolean v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinClassKlassError:Z

    .line 88
    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    :try_start_3
    const-class v0, Lkotlin/reflect/KParameter;

    .line 92
    .line 93
    const-string v2, "getName"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKParameterGetName:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :catchall_3
    sput-boolean v3, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinClassKlassError:Z

    .line 103
    .line 104
    :cond_4
    :goto_3
    sget-boolean v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinError:Z

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    return-object v4

    .line 108
    .line 109
    :cond_5
    :try_start_4
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKClassConstructor:Ljava/lang/reflect/Constructor;

    .line 110
    .line 111
    new-array v2, v3, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object p0, v2, v1

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object p0

    .line 118
    .line 119
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKClassGetConstructors:Ljava/lang/reflect/Method;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object p0

    .line 124
    .line 125
    check-cast p0, Ljava/lang/Iterable;

    .line 126
    .line 127
    .line 128
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object p0

    .line 130
    move-object v0, v4

    .line 131
    .line 132
    .line 133
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v2

    .line 135
    .line 136
    if-eqz v2, :cond_7

    .line 137
    .line 138
    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v2

    .line 141
    .line 142
    sget-object v5, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKFunctionGetParameters:Ljava/lang/reflect/Method;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v5

    .line 147
    .line 148
    check-cast v5, Ljava/util/List;

    .line 149
    .line 150
    if-eqz v0, :cond_6

    .line 151
    .line 152
    .line 153
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 154
    move-result v5

    .line 155
    .line 156
    if-nez v5, :cond_6

    .line 157
    goto :goto_5

    .line 158
    :cond_6
    move-object v0, v2

    .line 159
    .line 160
    .line 161
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    goto :goto_4

    .line 163
    .line 164
    :cond_7
    if-nez v0, :cond_8

    .line 165
    return-object v4

    .line 166
    .line 167
    :cond_8
    sget-object p0, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKFunctionGetParameters:Ljava/lang/reflect/Method;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-result-object p0

    .line 172
    .line 173
    check-cast p0, Ljava/util/List;

    .line 174
    .line 175
    .line 176
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 177
    move-result v0

    .line 178
    .line 179
    new-array v0, v0, [Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 183
    move-result v2

    .line 184
    .line 185
    if-ge v1, v2, :cond_9

    .line 186
    .line 187
    .line 188
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object v2

    .line 190
    .line 191
    sget-object v5, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinKParameterGetName:Ljava/lang/reflect/Method;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    check-cast v2, Ljava/lang/String;

    .line 198
    .line 199
    aput-object v2, v0, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 200
    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 202
    goto :goto_6

    .line 203
    :cond_9
    return-object v0

    .line 204
    .line 205
    :catchall_4
    sput-boolean v3, Lcom/alibaba/fastjson2/util/BeanUtils;->kotlinError:Z

    .line 206
    return-object v4
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    array-length p0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v2, v1, v0

    .line 5
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 6
    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_6

    const-class v1, Ljava/io/Serializable;

    if-ne p0, v1, :cond_0

    goto :goto_3

    .line 7
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 9
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    array-length p0, v2

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, p0, :cond_6

    aget-object v4, v2, v3

    .line 11
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-eq v5, v6, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 14
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move v7, v1

    .line 15
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_5

    .line 16
    aget-object v8, v5, v7

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    return-object v4

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static getParamType(Lcom/alibaba/fastjson2/TypeReference;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/TypeReference;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    .line 2
    :goto_0
    const-class v0, Ljava/lang/Object;

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    new-instance p1, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p2, p3, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    new-instance v1, Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/alibaba/fastjson2/TypeReference;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getRawType()Ljava/lang/Class;

    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/Class;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Class;

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    instance-of v0, p0, Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->checkArgument(Z)V

    .line 23
    .line 24
    check-cast p0, Ljava/lang/Class;

    .line 25
    return-object p0

    .line 26
    .line 27
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 33
    .line 34
    .line 35
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    .line 51
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    const-class p0, Ljava/lang/Object;

    .line 56
    return-object p0

    .line 57
    .line 58
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 63
    .line 64
    .line 65
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    aget-object p0, p0, v1

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    .line 75
    :cond_4
    if-nez p0, :cond_5

    .line 76
    .line 77
    const-string v0, "null"

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string p0, "> is of type "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    .line 115
    .line 116
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    throw v1
.end method

.method public static getSetter(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/reflect/Method;

    .line 4
    .line 5
    new-instance v1, Lcom/alibaba/fastjson2/util/c;

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson2/util/c;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Method;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->setters(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 12
    const/4 p0, 0x0

    .line 13
    .line 14
    aget-object p0, v0, p0

    .line 15
    return-object p0
.end method

.method public static getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 17
    const-string v0, "CamelCase"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 19
    const-string v2, "is"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    .line 20
    const-string v4, "get"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v2, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    if-ne v1, v7, :cond_3

    return-object p0

    .line 21
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v11, -0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "SnakeCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v11, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "UpperCaseWithUnderScores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v11, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "CamelCase1x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    move v11, v9

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v11, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "KebabCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v11, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "UpperCamelCaseWithSpaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v11, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "PascalCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v11, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "UpperCaseWithDashes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    move v11, v5

    goto :goto_1

    :sswitch_8
    const-string v0, "NeverUseThisValueExceptDefaultValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    move v11, v6

    goto :goto_1

    :sswitch_9
    const-string v0, "UpperCaseWithDots"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    move v11, v10

    goto :goto_1

    :sswitch_a
    const-string v0, "UpperCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1

    :cond_e
    move v11, v3

    :goto_1
    const/16 v0, 0x5a

    const/16 v8, 0x41

    const/16 v12, 0x20

    packed-switch v11, :pswitch_data_0

    .line 22
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :pswitch_0
    invoke-static {p0, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->snakeCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_1
    invoke-static {p0, v7, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->underScores(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sub-int p1, v1, v7

    .line 25
    new-array p1, p1, [C

    .line 26
    invoke-virtual {p0, v7, v1, p1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 27
    aget-char p0, p1, v3

    if-lt p0, v8, :cond_f

    if-gt p0, v0, :cond_f

    add-int/2addr p0, v12

    int-to-char p0, p0

    .line 28
    aput-char p0, p1, v3

    .line 29
    :cond_f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_3
    if-eqz v2, :cond_10

    move v3, v6

    goto :goto_2

    :cond_10
    if-eqz v4, :cond_11

    move v3, v5

    .line 30
    :cond_11
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v3

    .line 31
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v8, :cond_12

    if-gt v2, v0, :cond_12

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    if-le v1, v3, :cond_12

    const/16 v4, 0x2d

    .line 33
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    :cond_12
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 35
    :cond_13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :pswitch_4
    invoke-static {p0, v7, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 37
    :pswitch_5
    invoke-static {p0, v1, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->pascal(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :pswitch_6
    invoke-static {p0, v7, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->dashes(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    sub-int p1, v1, v7

    .line 39
    sget-object v2, Lcom/alibaba/fastjson2/util/BeanUtils;->charsCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    if-eqz v2, :cond_14

    .line 40
    array-length v4, v2

    if-ge v4, p1, :cond_15

    .line 41
    :cond_14
    invoke-static {v12, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [C

    .line 42
    :cond_15
    :try_start_0
    invoke-virtual {p0, v7, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 43
    aget-char p0, v2, v3

    .line 44
    array-length v1, v2

    if-le v1, v10, :cond_16

    aget-char v1, v2, v10

    if-lt v1, v8, :cond_16

    if-gt v1, v0, :cond_16

    move v1, v10

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_16
    move v1, v3

    :goto_4
    if-lt p0, v8, :cond_17

    if-gt p0, v0, :cond_17

    if-nez v1, :cond_17

    add-int/2addr p0, v12

    int-to-char p0, p0

    .line 45
    aput-char p0, v2, v3

    :cond_17
    if-gt p1, v9, :cond_1b

    const-wide/16 v0, 0x0

    move-wide v4, v0

    move p0, v3

    :goto_5
    if-ge p0, p1, :cond_19

    .line 46
    aget-char v6, v2, p0

    const/16 v7, 0x80

    if-le v6, v7, :cond_18

    move-wide v4, v0

    goto :goto_6

    :cond_18
    shl-long/2addr v4, v9

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_19
    :goto_6
    cmp-long p0, v4, v0

    if-eqz p0, :cond_1b

    long-to-int p0, v4

    .line 47
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->NAME_CACHE:[Lcom/alibaba/fastjson2/util/NameCacheEntry;

    array-length v1, v0

    sub-int/2addr v1, v10

    and-int/2addr p0, v1

    .line 48
    aget-object v1, v0, p0

    if-nez v1, :cond_1a

    .line 49
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Ljava/lang/String;-><init>([CII)V

    .line 50
    new-instance p1, Lcom/alibaba/fastjson2/util/NameCacheEntry;

    invoke-direct {p1, v1, v4, v5}, Lcom/alibaba/fastjson2/util/NameCacheEntry;-><init>(Ljava/lang/String;J)V

    aput-object p1, v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object p0, Lcom/alibaba/fastjson2/util/BeanUtils;->charsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v1

    .line 52
    :cond_1a
    :try_start_1
    iget-wide v6, v1, Lcom/alibaba/fastjson2/util/NameCacheEntry;->value:J

    cmp-long p0, v6, v4

    if-nez p0, :cond_1b

    .line 53
    iget-object p0, v1, Lcom/alibaba/fastjson2/util/NameCacheEntry;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    sget-object p1, Lcom/alibaba/fastjson2/util/BeanUtils;->charsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0

    .line 55
    :cond_1b
    :try_start_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v3, p1}, Ljava/lang/String;-><init>([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    sget-object p1, Lcom/alibaba/fastjson2/util/BeanUtils;->charsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p0

    :goto_7
    sget-object p1, Lcom/alibaba/fastjson2/util/BeanUtils;->charsCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 57
    throw p0

    .line 58
    :pswitch_8
    invoke-static {p0, v7, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->dots(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 59
    :pswitch_9
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b49b92e -> :sswitch_a
        -0x6f0bd0de -> :sswitch_9
        -0x4252863f -> :sswitch_8
        0x23df1498 -> :sswitch_7
        0x4fa9695c -> :sswitch_6
        0x51bd2257 -> :sswitch_5
        0x5710eb19 -> :sswitch_4
        0x62ad98e6 -> :sswitch_3
        0x6daafdcd -> :sswitch_2
        0x75cfd341 -> :sswitch_1
        0x7c737870 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getterName(Ljava/lang/reflect/Method;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "is"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 4
    const-class v2, Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    return-object v0

    .line 5
    :cond_2
    invoke-static {v0, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/16 p1, 0x2d

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 7
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    if-le p1, v1, :cond_4

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x41

    if-lt p1, v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_4

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v1, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-gt p1, v2, :cond_4

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 12
    aget-char v1, p1, v0

    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    aput-char v1, p1, v0

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 15
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p2
.end method

.method public static getters(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    return-void
.end method

.method public static getters(Ljava/lang/Class;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Ljava/lang/Class;ZLcom/alibaba/fastjson2/function/Consumer;)V

    return-void
.end method

.method public static getters(Ljava/lang/Class;Ljava/lang/Class;ZLcom/alibaba/fastjson2/function/Consumer;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            "Z",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    goto/16 :goto_12

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 6
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.protobuf.GeneratedMessageV3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v5

    .line 8
    :goto_0
    array-length v7, v4

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_2d

    aget-object v9, v4, v8

    .line 9
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_4

    :cond_3
    :goto_2
    :pswitch_0
    move-object/from16 v16, v4

    move v14, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move v7, v3

    move-object/from16 v3, p3

    goto/16 :goto_11

    .line 10
    :cond_4
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    .line 11
    const-class v11, Ljava/lang/Void;

    if-eq v10, v11, :cond_3

    const-class v11, Ljava/lang/ClassLoader;

    if-ne v10, v11, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    .line 13
    const-class v12, Ljava/lang/Enum;

    if-eq v11, v12, :cond_3

    const-class v12, Ljava/lang/Object;

    if-ne v11, v12, :cond_6

    goto :goto_2

    .line 14
    :cond_6
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-eqz v11, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    .line 16
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const-string v13, "getSerializedSize"

    sparse-switch v12, :sswitch_data_0

    :goto_3
    const/4 v12, -0x1

    goto :goto_4

    :sswitch_0
    const-string v12, "getInitializationErrorString"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_3

    :cond_8
    const/4 v12, 0x5

    goto :goto_4

    :sswitch_1
    const-string v12, "hashCode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_3

    :cond_9
    const/4 v12, 0x4

    goto :goto_4

    :sswitch_2
    const-string v12, "isInitialized"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_3

    :cond_a
    const/4 v12, 0x3

    goto :goto_4

    :sswitch_3
    const-string v12, "equals"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_3

    :cond_b
    const/4 v12, 0x2

    goto :goto_4

    :sswitch_4
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_3

    :cond_c
    move v12, v3

    goto :goto_4

    :sswitch_5
    const-string v12, "toString"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    goto :goto_3

    :cond_d
    move v12, v5

    :goto_4
    packed-switch v12, :pswitch_data_0

    goto :goto_5

    :pswitch_1
    if-eqz v6, :cond_e

    goto/16 :goto_2

    :cond_e
    :goto_5
    if-eqz v6, :cond_10

    .line 17
    const-string v12, "Type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f

    const-string v12, "Bytes"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 18
    :cond_f
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v15, "com.google.protobuf.ByteString"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto/16 :goto_2

    .line 19
    :cond_10
    const-string v12, "isSet"

    invoke-virtual {v11, v12, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v12

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eqz v12, :cond_16

    if-ne v10, v15, :cond_16

    const/4 v12, 0x0

    .line 20
    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "g"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 22
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "un"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    array-length v14, v4

    move-object/from16 v16, v4

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_6
    if-ge v4, v14, :cond_15

    aget-object v20, v16, v4

    move/from16 v21, v4

    .line 24
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move/from16 v22, v4

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eqz v22, :cond_11

    move/from16 v22, v6

    .line 25
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    move/from16 v23, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_12

    .line 26
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v4, :cond_12

    move/from16 v17, v7

    goto :goto_7

    :cond_11
    move/from16 v22, v6

    move/from16 v23, v7

    const/4 v7, 0x1

    .line 27
    :cond_12
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 28
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_13

    move/from16 v19, v7

    goto :goto_7

    .line 29
    :cond_13
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 30
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_14

    .line 31
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v4, :cond_14

    move/from16 v18, v7

    :cond_14
    :goto_7
    add-int/lit8 v4, v21, 0x1

    move/from16 v6, v22

    move/from16 v7, v23

    goto :goto_6

    :cond_15
    move/from16 v22, v6

    move/from16 v23, v7

    const/4 v7, 0x1

    if-eqz v17, :cond_17

    if-eqz v18, :cond_17

    if-eqz v19, :cond_17

    .line 32
    const-class v3, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 33
    invoke-static {v9, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-nez v3, :cond_17

    :goto_8
    move-object/from16 v3, p3

    const/4 v14, 0x0

    goto/16 :goto_11

    :cond_16
    move-object/from16 v16, v4

    move/from16 v22, v6

    move/from16 v23, v7

    move v7, v3

    .line 34
    :cond_17
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_18

    .line 35
    const-string v5, "get"

    const/4 v6, 0x0

    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_18

    move v5, v7

    goto :goto_9

    :cond_18
    const/4 v5, 0x0

    :goto_9
    const/16 v6, 0x7a

    const/16 v12, 0x61

    if-eqz v5, :cond_1c

    .line 36
    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v12, :cond_19

    if-gt v10, v6, :cond_19

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1a

    const/4 v5, 0x0

    goto :goto_a

    :cond_19
    const/4 v4, 0x4

    :cond_1a
    :goto_a
    move v10, v5

    const/4 v5, 0x2

    :cond_1b
    const/4 v6, 0x3

    goto :goto_c

    :cond_1c
    const/4 v4, 0x4

    if-eq v10, v15, :cond_1d

    .line 37
    const-class v14, Ljava/lang/Boolean;

    if-eq v10, v14, :cond_1d

    if-eqz p2, :cond_1a

    :cond_1d
    const/4 v5, 0x2

    if-le v3, v5, :cond_1e

    .line 38
    const-string v10, "is"

    const/4 v14, 0x0

    invoke-virtual {v11, v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1e

    move v10, v7

    goto :goto_b

    :cond_1e
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_1b

    .line 39
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_1b

    if-gt v14, v6, :cond_1b

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1f

    const/4 v10, 0x0

    :cond_1f
    :goto_c
    if-nez v10, :cond_20

    .line 40
    invoke-static {v9}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v10, v7

    :cond_20
    if-nez v10, :cond_21

    if-eqz v1, :cond_21

    .line 41
    invoke-static {v1, v9}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 42
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v10, v7

    :cond_21
    if-nez v10, :cond_22

    goto :goto_8

    :cond_22
    if-eqz v22, :cond_2b

    .line 43
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v2, :cond_23

    goto/16 :goto_8

    .line 44
    :cond_23
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 45
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :goto_d
    const/4 v14, -0x1

    goto :goto_e

    :sswitch_6
    const-string v5, "getDefaultInstanceForType"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_d

    :cond_24
    move v14, v4

    goto :goto_e

    :sswitch_7
    const-string v4, "getMessageBytes"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_d

    :cond_25
    move v14, v6

    goto :goto_e

    :sswitch_8
    const-string v4, "getUnknownFields"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_d

    :cond_26
    move v14, v5

    goto :goto_e

    :sswitch_9
    const-string v4, "getParserForType"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_d

    :cond_27
    move v14, v7

    goto :goto_e

    :sswitch_a
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_d

    :cond_28
    const/4 v14, 0x0

    :goto_e
    packed-switch v14, :pswitch_data_1

    const/4 v6, 0x0

    const/4 v14, 0x0

    goto :goto_10

    .line 46
    :pswitch_2
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.protobuf."

    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2a

    if-ne v3, v0, :cond_29

    goto :goto_f

    :cond_29
    move v6, v14

    goto :goto_10

    :cond_2a
    :goto_f
    move v6, v7

    :goto_10
    move-object/from16 v3, p3

    if-eqz v6, :cond_2c

    goto :goto_11

    :cond_2b
    const/4 v14, 0x0

    move-object/from16 v3, p3

    .line 47
    :cond_2c
    invoke-interface {v3, v9}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_11
    add-int/lit8 v8, v8, 0x1

    move v3, v7

    move v5, v14

    move-object/from16 v4, v16

    move/from16 v6, v22

    move/from16 v7, v23

    goto/16 :goto_1

    :cond_2d
    :goto_12
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_5
        -0x6263cb65 -> :sswitch_4
        -0x4d378041 -> :sswitch_3
        -0xa7dbcb6 -> :sswitch_2
        0x8cdac1b -> :sswitch_1
        0x23ada0c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6263cb65 -> :sswitch_a
        0x7ea0ace -> :sswitch_9
        0xc6bf3ed -> :sswitch_8
        0x12b44f1a -> :sswitch_7
        0x786693c3 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static hashCodeOrZero(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    .line 6
    aget-object v2, p0, v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    return v1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 22
    throw p0
.end method

.method private static isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    .line 14
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 15
    move-result-object v3

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    const-string v4, "com.alibaba.fastjson.annotation.JSONField"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v4

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    const-string v4, "com.alibaba.fastjson2.annotation.JSONField"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    return v1
.end method

.method public static isNoneStaticMemberClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p0

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    sget-object p0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, [Ljava/lang/reflect/Constructor;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    array-length p0, v2

    .line 35
    .line 36
    if-nez p0, :cond_2

    .line 37
    return v1

    .line 38
    .line 39
    :cond_2
    aget-object p0, v2, v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 43
    move-result-object p0

    .line 44
    array-length p1, p0

    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    return v1

    .line 48
    .line 49
    :cond_3
    aget-object p0, p0, v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_4
    :goto_0
    return v1
.end method

.method public static isWriteEnumAsJavaBean(Ljava/lang/Class;)Z
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    aget-object v3, p0, v2

    .line 12
    .line 13
    const-class v4, Lcom/alibaba/fastjson2/annotation/JSONType;

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 17
    move-result-object v4

    .line 18
    .line 19
    check-cast v4, Lcom/alibaba/fastjson2/annotation/JSONType;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v4}, Lcom/alibaba/fastjson2/annotation/JSONType;->writeEnumAsJavaBean()Z

    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    .line 36
    const-string v6, "com.alibaba.fastjson.annotation.JSONType"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v5

    .line 41
    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    new-instance v5, Lcom/alibaba/fastjson2/codec/BeanInfo;

    .line 45
    .line 46
    .line 47
    invoke-direct {v5}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 48
    .line 49
    new-instance v6, Lcom/alibaba/fastjson2/util/a;

    .line 50
    .line 51
    .line 52
    invoke-direct {v6, v5, v3}, Lcom/alibaba/fastjson2/util/a;-><init>(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v6}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    .line 56
    .line 57
    iget-boolean v3, v5, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    .line 58
    .line 59
    if-eqz v3, :cond_1

    .line 60
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    .line 63
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    return v1
.end method

.method public static lookupParameterNames(Ljava/lang/reflect/Constructor;)[Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    const-class v1, Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    array-length v2, p0

    .line 19
    .line 20
    const-string v4, "cause"

    .line 21
    .line 22
    const-string v5, "message"

    .line 23
    .line 24
    const-class v6, Ljava/lang/String;

    .line 25
    const/4 v7, 0x1

    .line 26
    .line 27
    if-eq v2, v7, :cond_1

    .line 28
    const/4 v8, 0x2

    .line 29
    .line 30
    if-eq v2, v8, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    aget-object v2, p0, v3

    .line 34
    .line 35
    if-ne v2, v6, :cond_3

    .line 36
    .line 37
    aget-object v2, p0, v7

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    .line 46
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    .line 50
    :cond_1
    aget-object v2, p0, v3

    .line 51
    .line 52
    if-ne v2, v6, :cond_2

    .line 53
    .line 54
    .line 55
    filled-new-array {v5}, [Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    .line 66
    filled-new-array {v4}, [Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_3
    :goto_0
    array-length v1, p0

    .line 70
    .line 71
    new-array v2, v1, [Ljava/lang/String;

    .line 72
    .line 73
    if-lez v1, :cond_4

    .line 74
    .line 75
    aget-object p0, p0, v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    if-ne p0, v1, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 85
    move-result p0

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 89
    move-result p0

    .line 90
    .line 91
    if-nez p0, :cond_4

    .line 92
    .line 93
    const-string p0, "this.$0"

    .line 94
    .line 95
    aput-object p0, v2, v3

    .line 96
    :cond_4
    return-object v2
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 6
    return-object v0
.end method

.method private static pascal(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    sub-int v0, p1, p2

    .line 3
    .line 4
    new-array v1, v0, [C

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p1, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 9
    .line 10
    aget-char p0, v1, v2

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    const/16 p2, 0x7a

    .line 14
    .line 15
    const/16 v3, 0x61

    .line 16
    .line 17
    if-lt p0, v3, :cond_0

    .line 18
    .line 19
    if-gt p0, p2, :cond_0

    .line 20
    .line 21
    if-le v0, p1, :cond_0

    .line 22
    .line 23
    add-int/lit8 p0, p0, -0x20

    .line 24
    int-to-char p0, p0

    .line 25
    .line 26
    aput-char p0, v1, v2

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    const/16 v2, 0x5f

    .line 30
    .line 31
    if-ne p0, v2, :cond_1

    .line 32
    const/4 p0, 0x2

    .line 33
    .line 34
    if-le v0, p0, :cond_1

    .line 35
    .line 36
    aget-char v0, v1, p1

    .line 37
    .line 38
    if-lt v0, v3, :cond_1

    .line 39
    .line 40
    if-gt v0, p2, :cond_1

    .line 41
    .line 42
    aget-char p0, v1, p0

    .line 43
    .line 44
    if-lt p0, v3, :cond_1

    .line 45
    .line 46
    if-gt p0, p2, :cond_1

    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x20

    .line 49
    int-to-char p0, v0

    .line 50
    .line 51
    aput-char p0, v1, p1

    .line 52
    .line 53
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 57
    return-object p0
.end method

.method public static processJSONType1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    .line 18
    sparse-switch v0, :sswitch_data_0

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :sswitch_0
    const-string v0, "seeAlso"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    check-cast p1, [Ljava/lang/Class;

    .line 31
    array-length p2, p1

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 36
    return-void

    .line 37
    .line 38
    :sswitch_1
    const-string v0, "serializeFeatures"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p2

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :sswitch_2
    const-string v0, "ignores"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p2

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    check-cast p1, [Ljava/lang/String;

    .line 57
    array-length p2, p1

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    iget-object p2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    .line 62
    .line 63
    if-nez p2, :cond_0

    .line 64
    .line 65
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    .line 66
    return-void

    .line 67
    .line 68
    :cond_0
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 69
    .line 70
    .line 71
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 72
    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    .line 74
    array-length v2, v0

    .line 75
    .line 76
    :goto_0
    if-ge v1, v2, :cond_1

    .line 77
    .line 78
    aget-object v3, v0, v1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 91
    move-result p1

    .line 92
    .line 93
    new-array p1, p1, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    check-cast p1, [Ljava/lang/String;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    .line 102
    return-void

    .line 103
    .line 104
    :sswitch_3
    const-string v0, "includes"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result p2

    .line 109
    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    check-cast p1, [Ljava/lang/String;

    .line 113
    array-length p2, p1

    .line 114
    .line 115
    if-eqz p2, :cond_3

    .line 116
    .line 117
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    .line 118
    return-void

    .line 119
    .line 120
    :sswitch_4
    const-string v0, "rootName"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result p2

    .line 125
    .line 126
    if-eqz p2, :cond_3

    .line 127
    .line 128
    check-cast p1, Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 132
    move-result p2

    .line 133
    .line 134
    if-nez p2, :cond_3

    .line 135
    .line 136
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->rootName:Ljava/lang/String;

    .line 137
    return-void

    .line 138
    .line 139
    :sswitch_5
    const-string v0, "serializer"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result p2

    .line 144
    .line 145
    if-eqz p2, :cond_3

    .line 146
    .line 147
    check-cast p1, Ljava/lang/Class;

    .line 148
    .line 149
    const-class p2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 153
    move-result p2

    .line 154
    .line 155
    if-eqz p2, :cond_3

    .line 156
    .line 157
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    .line 158
    .line 159
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    .line 160
    return-void

    .line 161
    .line 162
    :sswitch_6
    const-string v0, "typeName"

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result p2

    .line 167
    .line 168
    if-eqz p2, :cond_3

    .line 169
    .line 170
    check-cast p1, Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 174
    move-result p2

    .line 175
    .line 176
    if-nez p2, :cond_3

    .line 177
    .line 178
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 179
    return-void

    .line 180
    .line 181
    :sswitch_7
    const-string v0, "typeKey"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result p2

    .line 186
    .line 187
    if-eqz p2, :cond_3

    .line 188
    .line 189
    check-cast p1, Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 193
    move-result p2

    .line 194
    .line 195
    if-nez p2, :cond_3

    .line 196
    .line 197
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    .line 198
    return-void

    .line 199
    .line 200
    :sswitch_8
    const-string v0, "serialzeFeatures"

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result p2

    .line 205
    .line 206
    if-eqz p2, :cond_3

    .line 207
    .line 208
    :goto_1
    check-cast p1, [Ljava/lang/Enum;

    .line 209
    array-length p2, p1

    .line 210
    .line 211
    :goto_2
    if-ge v1, p2, :cond_3

    .line 212
    .line 213
    aget-object v0, p1, v1

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 221
    move-result v2

    .line 222
    .line 223
    .line 224
    sparse-switch v2, :sswitch_data_1

    .line 225
    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :sswitch_9
    const-string v2, "WriteMapNullValue"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result v0

    .line 233
    .line 234
    if-eqz v0, :cond_2

    .line 235
    .line 236
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 237
    .line 238
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 239
    .line 240
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 241
    or-long/2addr v2, v4

    .line 242
    .line 243
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 244
    .line 245
    goto/16 :goto_3

    .line 246
    .line 247
    :sswitch_a
    const-string v2, "WriteClassName"

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result v0

    .line 252
    .line 253
    if-eqz v0, :cond_2

    .line 254
    .line 255
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 256
    .line 257
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 258
    .line 259
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 260
    or-long/2addr v2, v4

    .line 261
    .line 262
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 263
    .line 264
    goto/16 :goto_3

    .line 265
    .line 266
    :sswitch_b
    const-string v2, "WriteNullBooleanAsFalse"

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    move-result v0

    .line 271
    .line 272
    if-eqz v0, :cond_2

    .line 273
    .line 274
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 275
    .line 276
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 277
    .line 278
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 279
    or-long/2addr v2, v4

    .line 280
    .line 281
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 282
    .line 283
    goto/16 :goto_3

    .line 284
    .line 285
    :sswitch_c
    const-string v2, "WriteNonStringValueAsString"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v0

    .line 290
    .line 291
    if-eqz v0, :cond_2

    .line 292
    .line 293
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 294
    .line 295
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 296
    .line 297
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 298
    or-long/2addr v2, v4

    .line 299
    .line 300
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 301
    .line 302
    goto/16 :goto_3

    .line 303
    .line 304
    :sswitch_d
    const-string v2, "WriteNullListAsEmpty"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    move-result v0

    .line 309
    .line 310
    if-eqz v0, :cond_2

    .line 311
    .line 312
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 313
    .line 314
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 315
    .line 316
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 317
    or-long/2addr v2, v4

    .line 318
    .line 319
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 320
    goto :goto_3

    .line 321
    .line 322
    :sswitch_e
    const-string v2, "NotWriteRootClassName"

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    move-result v0

    .line 327
    .line 328
    if-eqz v0, :cond_2

    .line 329
    .line 330
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 331
    .line 332
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 333
    .line 334
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 335
    or-long/2addr v2, v4

    .line 336
    .line 337
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 338
    goto :goto_3

    .line 339
    .line 340
    :sswitch_f
    const-string v2, "WriteNullStringAsEmpty"

    .line 341
    .line 342
    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    move-result v0

    .line 345
    .line 346
    if-eqz v0, :cond_2

    .line 347
    .line 348
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 349
    .line 350
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 351
    .line 352
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 353
    or-long/2addr v2, v4

    .line 354
    .line 355
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 356
    goto :goto_3

    .line 357
    .line 358
    :sswitch_10
    const-string v2, "BrowserCompatible"

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 362
    move-result v0

    .line 363
    .line 364
    if-eqz v0, :cond_2

    .line 365
    .line 366
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 367
    .line 368
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 369
    .line 370
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 371
    or-long/2addr v2, v4

    .line 372
    .line 373
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 374
    goto :goto_3

    .line 375
    .line 376
    :sswitch_11
    const-string v2, "WriteEnumUsingToString"

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    move-result v0

    .line 381
    .line 382
    if-eqz v0, :cond_2

    .line 383
    .line 384
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 385
    .line 386
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 387
    .line 388
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 389
    or-long/2addr v2, v4

    .line 390
    .line 391
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 392
    goto :goto_3

    .line 393
    .line 394
    :sswitch_12
    const-string v2, "IgnoreErrorGetter"

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    move-result v0

    .line 399
    .line 400
    if-eqz v0, :cond_2

    .line 401
    .line 402
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 403
    .line 404
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 405
    .line 406
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 407
    or-long/2addr v2, v4

    .line 408
    .line 409
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 410
    goto :goto_3

    .line 411
    .line 412
    :sswitch_13
    const-string v2, "WriteNullNumberAsZero"

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    move-result v0

    .line 417
    .line 418
    if-eqz v0, :cond_2

    .line 419
    .line 420
    iget-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 421
    .line 422
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 423
    .line 424
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 425
    or-long/2addr v2, v4

    .line 426
    .line 427
    iput-wide v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 428
    .line 429
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 430
    .line 431
    goto/16 :goto_2

    .line 432
    .line 433
    :sswitch_14
    const-string v0, "orders"

    .line 434
    .line 435
    .line 436
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    move-result p2

    .line 438
    .line 439
    if-eqz p2, :cond_3

    .line 440
    .line 441
    check-cast p1, [Ljava/lang/String;

    .line 442
    array-length p2, p1

    .line 443
    .line 444
    if-eqz p2, :cond_3

    .line 445
    .line 446
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    .line 447
    return-void

    .line 448
    .line 449
    :sswitch_15
    const-string v0, "naming"

    .line 450
    .line 451
    .line 452
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    move-result p2

    .line 454
    .line 455
    if-eqz p2, :cond_3

    .line 456
    .line 457
    check-cast p1, Ljava/lang/Enum;

    .line 458
    .line 459
    .line 460
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 461
    move-result-object p1

    .line 462
    .line 463
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    .line 464
    return-void

    .line 465
    .line 466
    :sswitch_16
    const-string v0, "alphabetic"

    .line 467
    .line 468
    .line 469
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    move-result p2

    .line 471
    .line 472
    if-eqz p2, :cond_3

    .line 473
    .line 474
    check-cast p1, Ljava/lang/Boolean;

    .line 475
    .line 476
    .line 477
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 478
    move-result p1

    .line 479
    .line 480
    if-nez p1, :cond_3

    .line 481
    .line 482
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->alphabetic:Z

    .line 483
    return-void

    .line 484
    .line 485
    :sswitch_17
    const-string v0, "serializeEnumAsJavaBean"

    .line 486
    .line 487
    .line 488
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    move-result p2

    .line 490
    .line 491
    if-eqz p2, :cond_3

    .line 492
    .line 493
    check-cast p1, Ljava/lang/Boolean;

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 497
    move-result p1

    .line 498
    .line 499
    if-eqz p1, :cond_3

    .line 500
    .line 501
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    .line 502
    return-void

    .line 503
    .line 504
    :sswitch_18
    const-string v0, "deserializer"

    .line 505
    .line 506
    .line 507
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 508
    move-result p2

    .line 509
    .line 510
    if-eqz p2, :cond_3

    .line 511
    .line 512
    check-cast p1, Ljava/lang/Class;

    .line 513
    .line 514
    const-class p2, Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 515
    .line 516
    .line 517
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 518
    move-result p2

    .line 519
    .line 520
    if-eqz p2, :cond_3

    .line 521
    .line 522
    iput-object p1, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->deserializer:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :catchall_0
    :cond_3
    :goto_4
    return-void

    .line 524
    nop

    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
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
    :sswitch_data_0
    .sparse-switch
        -0x64056b2d -> :sswitch_18
        -0x4e6e01db -> :sswitch_17
        -0x4826dd33 -> :sswitch_16
        -0x3ec0df78 -> :sswitch_15
        -0x3c209d1b -> :sswitch_14
        -0x3814e684 -> :sswitch_8
        -0x32d96b3b -> :sswitch_7
        -0x2852af1b -> :sswitch_6
        -0x23a48a6e -> :sswitch_5
        -0x9f4d173 -> :sswitch_4
        0x56140cb -> :sswitch_3
        0x6873bce1 -> :sswitch_2
        0x6f73cf3d -> :sswitch_1
        0x75748aba -> :sswitch_0
    .end sparse-switch

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
    .line 625
    .line 626
    .line 627
    .line 628
    :sswitch_data_1
    .sparse-switch
        -0x737c2857 -> :sswitch_13
        -0x6a158c1f -> :sswitch_12
        -0x13fc7e70 -> :sswitch_11
        -0xca1b004 -> :sswitch_10
        -0x61b295c -> :sswitch_f
        -0x3c0c42b -> :sswitch_e
        0x3c26e3f7 -> :sswitch_d
        0x5a8cc575 -> :sswitch_c
        0x6bc5c64f -> :sswitch_b
        0x700b1b24 -> :sswitch_a
        0x7a300f8d -> :sswitch_9
    .end sparse-switch
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :cond_0
    instance-of v1, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_4

    .line 3
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 4
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    .line 5
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    return-object p2

    :cond_1
    return-object v2

    .line 6
    :cond_2
    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 7
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    if-ne p2, v1, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_4
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 11
    invoke-static {p2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p2, v1

    goto/16 :goto_3

    .line 12
    :cond_5
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    :goto_0
    move-object p2, p0

    goto/16 :goto_3

    .line 13
    :cond_6
    instance-of v1, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_8

    .line 14
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 15
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 16
    invoke-static {p0, p1, v1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 17
    invoke-static {v1, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_3

    .line 18
    :cond_7
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    goto :goto_0

    .line 19
    :cond_8
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    .line 20
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 21
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 22
    invoke-static {p0, p1, v1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 23
    invoke-static {v4, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 24
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 25
    array-length v6, v5

    :goto_1
    if-ge v2, v6, :cond_c

    .line 26
    aget-object v7, v5, v2

    .line 27
    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_9

    goto :goto_2

    .line 28
    :cond_9
    invoke-static {p0, p1, v7, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 29
    invoke-static {v8, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    if-nez v1, :cond_a

    .line 30
    invoke-virtual {v5}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/reflect/Type;

    move v1, v3

    .line 31
    :cond_a
    aput-object v8, v5, v2

    :cond_b
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_c
    if-eqz v1, :cond_f

    .line 32
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v4, p0, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    goto :goto_0

    .line 33
    :cond_d
    instance-of v1, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_f

    .line 34
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 35
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 36
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 37
    array-length v5, v4

    if-ne v5, v3, :cond_e

    .line 38
    aget-object v1, v4, v2

    invoke-static {p0, p1, v1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 39
    aget-object p1, v4, v2

    if-eq p0, p1, :cond_f

    .line 40
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p2

    goto :goto_3

    .line 41
    :cond_e
    array-length v4, v1

    if-ne v4, v3, :cond_f

    .line 42
    aget-object v3, v1, v2

    :try_start_0
    invoke-static {p0, p1, v3, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    aget-object p1, v1, v2

    if-eq p0, p1, :cond_f

    .line 44
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p2

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 45
    throw p0

    :cond_f
    :goto_3
    if-eqz v0, :cond_10

    .line 46
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object p2
.end method

.method public static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 23
    move-result p1

    .line 24
    .line 25
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    aget-object p0, p0, p1

    .line 32
    return-object p0

    .line 33
    :cond_1
    :goto_0
    return-object p2
.end method

.method public static setNoneStaticMemberClassParent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_5

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, [Ljava/lang/reflect/Field;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-nez v1, :cond_5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 23
    move-result-object v1

    .line 24
    array-length v3, v1

    .line 25
    move v4, v2

    .line 26
    .line 27
    :goto_0
    if-ge v4, v3, :cond_4

    .line 28
    .line 29
    aget-object v5, v1, v4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 33
    move-result v5

    .line 34
    .line 35
    .line 36
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 37
    move-result v5

    .line 38
    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    array-length v4, v1

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    array-length v4, v1

    .line 47
    move v5, v2

    .line 48
    .line 49
    :goto_1
    if-ge v5, v4, :cond_2

    .line 50
    .line 51
    aget-object v6, v1, v5

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 55
    move-result v7

    .line 56
    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 59
    move-result v7

    .line 60
    .line 61
    if-eqz v7, :cond_1

    .line 62
    goto :goto_2

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 72
    move-result v1

    .line 73
    .line 74
    new-array v1, v1, [Ljava/lang/reflect/Field;

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    check-cast v1, [Ljava/lang/reflect/Field;

    .line 81
    goto :goto_3

    .line 82
    .line 83
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    :cond_4
    :goto_3
    sget-object v3, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 87
    .line 88
    .line 89
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_5
    array-length v3, v1

    .line 91
    const/4 v4, 0x0

    .line 92
    .line 93
    :goto_4
    if-ge v2, v3, :cond_7

    .line 94
    .line 95
    aget-object v5, v1, v2

    .line 96
    .line 97
    const-string v6, "this$0"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 101
    move-result-object v7

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v6

    .line 106
    .line 107
    if-eqz v6, :cond_6

    .line 108
    move-object v4, v5

    .line 109
    .line 110
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 111
    goto :goto_4

    .line 112
    .line 113
    :cond_7
    if-eqz v4, :cond_8

    .line 114
    const/4 v1, 0x1

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 118
    .line 119
    .line 120
    :try_start_0
    invoke-virtual {v4, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-void

    .line 122
    .line 123
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 124
    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    const-string v1, "setNoneStaticMemberClassParent error, class "

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 144
    throw p0

    .line 145
    :cond_8
    :goto_5
    return-void
.end method

.method public static setterName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, v0, p1

    .line 22
    new-array v2, v1, [C

    const/4 v3, 0x0

    .line 23
    invoke-virtual {p0, p1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 24
    aget-char p0, v2, v3

    const/16 p1, 0x5a

    const/16 v0, 0x41

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 25
    aget-char v1, v2, v4

    if-lt v1, v0, :cond_0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-lt p0, v0, :cond_1

    if-gt p0, p1, :cond_1

    if-nez v4, :cond_1

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    .line 26
    aput-char p0, v2, v3

    .line 27
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "CamelCase"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    return-object p0

    .line 3
    :cond_1
    const-string v3, "set"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v4

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v5, :sswitch_data_0

    :goto_1
    move v2, v7

    goto :goto_2

    :sswitch_0
    const-string v0, "SnakeCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_1
    const-string v0, "UpperCaseWithUnderScores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :sswitch_3
    const-string v0, "PascalCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_4
    const-string v0, "NeverUseThisValueExceptDefaultValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v2, v6

    goto :goto_2

    :sswitch_5
    const-string v0, "UpperCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move v2, v4

    :cond_8
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 5
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_0
    invoke-static {p0, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->snakeCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_1
    invoke-static {p0, v3, v6}, Lcom/alibaba/fastjson2/util/BeanUtils;->underScores(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_2
    invoke-static {p0, v1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->pascal(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sub-int p1, v1, v3

    .line 9
    new-array v0, p1, [C

    .line 10
    invoke-virtual {p0, v3, v1, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 11
    aget-char p0, v0, v4

    const/16 v1, 0x5a

    const/16 v2, 0x41

    if-le p1, v6, :cond_9

    .line 12
    aget-char p1, v0, v6

    if-lt p1, v2, :cond_9

    if-gt p1, v1, :cond_9

    goto :goto_3

    :cond_9
    move v6, v4

    :goto_3
    if-lt p0, v2, :cond_a

    if-gt p0, v1, :cond_a

    if-nez v6, :cond_a

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    .line 13
    aput-char p0, v0, v4

    .line 14
    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_4
    sub-int p1, v1, v3

    .line 15
    new-array v0, p1, [C

    .line 16
    invoke-virtual {p0, v3, v1, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 17
    aget-char p0, v0, v4

    :goto_4
    if-ge v4, p1, :cond_c

    .line 18
    aget-char v1, v0, v4

    const/16 v2, 0x61

    if-lt v1, v2, :cond_b

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_b

    add-int/lit8 v1, v1, -0x20

    int-to-char v1, v1

    .line 19
    aput-char v1, v0, v4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 20
    :cond_c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b49b92e -> :sswitch_5
        -0x4252863f -> :sswitch_4
        0x4fa9695c -> :sswitch_3
        0x62ad98e6 -> :sswitch_2
        0x75cfd341 -> :sswitch_1
        0x7c737870 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setters(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    array-length p0, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_15

    aget-object v3, v1, v2

    .line 6
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 7
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_9

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    goto/16 :goto_9

    .line 9
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "hashCode"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move v9, v7

    goto :goto_1

    :sswitch_1
    const-string v5, "copy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move v9, v6

    goto :goto_1

    :sswitch_2
    const-string v5, "equals"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    move v9, v8

    goto :goto_1

    :sswitch_3
    const-string v5, "toString"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    move v9, v0

    :goto_1
    packed-switch v9, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p1, :cond_7

    .line 11
    iget-boolean v5, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    if-eqz v5, :cond_7

    goto/16 :goto_9

    .line 12
    :cond_7
    :goto_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 13
    array-length v9, v5

    if-nez v9, :cond_a

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v7, :cond_14

    const-string v10, "get"

    invoke-virtual {v4, v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_8

    goto/16 :goto_9

    .line 15
    :cond_8
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    .line 16
    const-class v11, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v10, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicLong;

    if-eq v10, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eq v10, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eq v10, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-eq v10, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicReference;

    if-eq v10, v11, :cond_9

    const-class v11, Ljava/util/Collection;

    .line 17
    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_9

    const-class v11, Ljava/util/Map;

    .line 18
    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 19
    :cond_9
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 20
    :cond_a
    const-class v10, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-ne v9, v6, :cond_c

    .line 21
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v6, v11, :cond_c

    aget-object v5, v5, v0

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_c

    .line 22
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 23
    array-length v5, v4

    move v6, v0

    :goto_3
    if-ge v6, v5, :cond_14

    aget-object v7, v4, v6

    .line 24
    invoke-static {v7, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-eqz v7, :cond_b

    .line 25
    invoke-interface {v7}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 26
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    if-eq v9, v8, :cond_d

    goto/16 :goto_9

    .line 27
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_e

    .line 28
    const-string v5, "set"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v8

    goto :goto_4

    :cond_e
    move v4, v0

    :goto_4
    if-nez v4, :cond_10

    if-eqz p2, :cond_10

    .line 29
    invoke-static {p2, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 30
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 31
    array-length v6, v5

    move v7, v0

    :goto_5
    if-ge v7, v6, :cond_10

    aget-object v9, v5, v7

    .line 32
    invoke-interface {v9}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    if-ne v11, v10, :cond_f

    .line 33
    check-cast v9, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 34
    invoke-interface {v9}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    move-result v5

    if-nez v5, :cond_10

    move v4, v8

    goto :goto_6

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    if-nez v4, :cond_12

    .line 35
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 36
    array-length v6, v5

    move v7, v0

    :goto_7
    if-ge v7, v6, :cond_12

    aget-object v9, v5, v7

    .line 37
    invoke-interface {v9}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    if-ne v11, v10, :cond_11

    .line 38
    check-cast v9, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 39
    invoke-interface {v9}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_8

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_12
    move v8, v4

    :goto_8
    if-nez v8, :cond_13

    goto :goto_9

    .line 40
    :cond_13
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_14
    :goto_9
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_15
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_3
        -0x4d378041 -> :sswitch_2
        0x2eaf75 -> :sswitch_1
        0x8cdac1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setters(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->setters(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V

    return-void
.end method

.method public static setters(Ljava/lang/Class;ZLcom/alibaba/fastjson2/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Z",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 43
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    array-length p0, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_8

    aget-object v3, v1, v2

    .line 45
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x3

    if-nez v4, :cond_3

    .line 46
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_7

    const-string v7, "get"

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 49
    const-class v7, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v6, v7, :cond_2

    const-class v7, Ljava/util/concurrent/atomic/AtomicLong;

    if-eq v6, v7, :cond_2

    const-class v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eq v6, v7, :cond_2

    const-class v7, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eq v6, v7, :cond_2

    const-class v7, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-eq v6, v7, :cond_2

    const-class v7, Ljava/util/Collection;

    .line 50
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    :cond_2
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    goto :goto_1

    .line 52
    :cond_4
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 53
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 54
    :cond_5
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz p1, :cond_6

    if-le v6, v5, :cond_7

    .line 56
    const-string v5, "set"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 57
    :cond_6
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static snakeCase(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, [C

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x80

    .line 20
    .line 21
    new-array v1, v1, [C

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    move v3, p1

    .line 24
    move v4, v2

    .line 25
    .line 26
    :goto_0
    if-ge v3, v0, :cond_2

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v5

    .line 31
    .line 32
    const/16 v6, 0x41

    .line 33
    .line 34
    if-lt v5, v6, :cond_1

    .line 35
    .line 36
    const/16 v6, 0x5a

    .line 37
    .line 38
    if-gt v5, v6, :cond_1

    .line 39
    .line 40
    add-int/lit8 v5, v5, 0x20

    .line 41
    int-to-char v5, v5

    .line 42
    .line 43
    if-le v3, p1, :cond_1

    .line 44
    .line 45
    add-int/lit8 v6, v4, 0x1

    .line 46
    .line 47
    const/16 v7, 0x5f

    .line 48
    .line 49
    aput-char v7, v1, v4

    .line 50
    move v4, v6

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_1
    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 56
    .line 57
    aput-char v5, v1, v4

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    move v4, v6

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 69
    .line 70
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return-object p0

    .line 75
    .line 76
    :goto_2
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 77
    .line 78
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    throw p0
.end method

.method public static staticMethod(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, [Ljava/lang/reflect/Method;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    array-length p0, v1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    :goto_0
    if-ge v0, p0, :cond_2

    .line 22
    .line 23
    aget-object v2, v1, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 27
    move-result v3

    .line 28
    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 31
    move-result v3

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 38
    .line 39
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;

    .line 3
    .line 4
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 12
    move-result-object p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    .line 16
    new-array v1, v1, [Ljava/lang/reflect/Type;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    aput-object p0, v1, v2

    .line 20
    move-object p0, v1

    .line 21
    .line 22
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 26
    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    new-array v2, v1, [Ljava/lang/reflect/Type;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    const-class v4, Ljava/lang/Object;

    .line 9
    .line 10
    aput-object v4, v2, v3

    .line 11
    .line 12
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 17
    .line 18
    .line 19
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-array v1, v1, [Ljava/lang/reflect/Type;

    .line 24
    .line 25
    aput-object p0, v1, v3

    .line 26
    move-object p0, v1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-direct {v0, v2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 30
    return-object v0
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/Class;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static underScores(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, [C

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x80

    .line 20
    .line 21
    new-array v1, v1, [C

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    move v3, p1

    .line 24
    move v4, v2

    .line 25
    .line 26
    :goto_0
    if-ge v3, v0, :cond_6

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v5

    .line 31
    .line 32
    const/16 v6, 0x5f

    .line 33
    .line 34
    const/16 v7, 0x5a

    .line 35
    .line 36
    const/16 v8, 0x41

    .line 37
    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    if-lt v5, v8, :cond_2

    .line 41
    .line 42
    if-le v5, v7, :cond_1

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    if-le v3, p1, :cond_5

    .line 46
    .line 47
    add-int/lit8 v7, v4, 0x1

    .line 48
    .line 49
    aput-char v6, v1, v4

    .line 50
    move v4, v7

    .line 51
    goto :goto_3

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_4

    .line 54
    .line 55
    :cond_2
    :goto_1
    const/16 v6, 0x61

    .line 56
    .line 57
    if-lt v5, v6, :cond_5

    .line 58
    .line 59
    const/16 v6, 0x7a

    .line 60
    .line 61
    if-gt v5, v6, :cond_5

    .line 62
    .line 63
    add-int/lit8 v5, v5, -0x20

    .line 64
    :goto_2
    int-to-char v5, v5

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_3
    if-lt v5, v8, :cond_5

    .line 68
    .line 69
    if-gt v5, v7, :cond_5

    .line 70
    .line 71
    if-le v3, p1, :cond_4

    .line 72
    .line 73
    add-int/lit8 v7, v4, 0x1

    .line 74
    .line 75
    aput-char v6, v1, v4

    .line 76
    move v4, v7

    .line 77
    .line 78
    :cond_4
    add-int/lit8 v5, v5, 0x20

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_5
    :goto_3
    add-int/lit8 v6, v4, 0x1

    .line 82
    .line 83
    aput-char v5, v1, v4

    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    move v4, v6

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_6
    new-instance p0, Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 95
    .line 96
    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    return-object p0

    .line 101
    .line 102
    :goto_4
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 103
    .line 104
    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    throw p0
.end method

.method public static upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 7
    .line 8
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    check-cast v1, [C

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/16 v1, 0x80

    .line 20
    .line 21
    new-array v1, v1, [C

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    move v3, p1

    .line 24
    move v4, v2

    .line 25
    .line 26
    :goto_0
    if-ge v3, v0, :cond_6

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 30
    move-result v5

    .line 31
    .line 32
    const/16 v6, 0x7a

    .line 33
    .line 34
    const/16 v7, 0x61

    .line 35
    .line 36
    if-ne v3, p1, :cond_2

    .line 37
    .line 38
    if-lt v5, v7, :cond_1

    .line 39
    .line 40
    if-gt v5, v6, :cond_1

    .line 41
    .line 42
    add-int/lit8 v8, v3, 0x1

    .line 43
    .line 44
    if-ge v8, v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 48
    move-result v8

    .line 49
    .line 50
    if-lt v8, v7, :cond_1

    .line 51
    .line 52
    if-gt v8, v6, :cond_1

    .line 53
    .line 54
    add-int/lit8 v5, v5, -0x20

    .line 55
    int-to-char v5, v5

    .line 56
    goto :goto_2

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_1
    const/16 v8, 0x5f

    .line 62
    .line 63
    if-ne v5, v8, :cond_5

    .line 64
    .line 65
    add-int/lit8 v8, v3, 0x1

    .line 66
    .line 67
    if-ge v8, v0, :cond_5

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 71
    move-result v9

    .line 72
    .line 73
    if-lt v9, v7, :cond_5

    .line 74
    .line 75
    if-gt v9, v6, :cond_5

    .line 76
    .line 77
    add-int/lit8 v3, v4, 0x1

    .line 78
    .line 79
    aput-char v5, v1, v4

    .line 80
    .line 81
    add-int/lit8 v9, v9, -0x20

    .line 82
    int-to-char v5, v9

    .line 83
    move v4, v3

    .line 84
    move v3, v8

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_2
    const/16 v8, 0x5a

    .line 88
    .line 89
    const/16 v9, 0x41

    .line 90
    .line 91
    if-lt v5, v9, :cond_4

    .line 92
    .line 93
    if-gt v5, v8, :cond_4

    .line 94
    .line 95
    add-int/lit8 v10, v3, 0x1

    .line 96
    .line 97
    if-ge v10, v0, :cond_4

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    .line 101
    move-result v10

    .line 102
    .line 103
    if-lt v10, v9, :cond_3

    .line 104
    .line 105
    if-le v10, v8, :cond_4

    .line 106
    .line 107
    :cond_3
    if-le v3, p1, :cond_5

    .line 108
    .line 109
    add-int/lit8 v6, v4, 0x1

    .line 110
    .line 111
    aput-char p2, v1, v4

    .line 112
    :goto_1
    move v4, v6

    .line 113
    goto :goto_2

    .line 114
    .line 115
    :cond_4
    if-lt v5, v9, :cond_5

    .line 116
    .line 117
    if-gt v5, v8, :cond_5

    .line 118
    .line 119
    if-le v3, p1, :cond_5

    .line 120
    .line 121
    add-int/lit8 v10, v3, 0x1

    .line 122
    .line 123
    if-ge v10, v0, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    .line 127
    move-result v10

    .line 128
    .line 129
    if-lt v10, v9, :cond_5

    .line 130
    .line 131
    if-gt v10, v8, :cond_5

    .line 132
    .line 133
    add-int/lit8 v8, v3, -0x1

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 137
    move-result v8

    .line 138
    .line 139
    if-lt v8, v7, :cond_5

    .line 140
    .line 141
    if-gt v8, v6, :cond_5

    .line 142
    .line 143
    add-int/lit8 v6, v4, 0x1

    .line 144
    .line 145
    aput-char p2, v1, v4

    .line 146
    goto :goto_1

    .line 147
    .line 148
    :cond_5
    :goto_2
    add-int/lit8 v6, v4, 0x1

    .line 149
    .line 150
    aput-char v5, v1, v4

    .line 151
    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 153
    move v4, v6

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_6
    new-instance p0, Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .line 162
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 163
    .line 164
    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    return-object p0

    .line 169
    .line 170
    :goto_3
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 171
    .line 172
    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    throw p0
.end method
