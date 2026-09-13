.class final Lcom/alibaba/fastjson2/reader/ObjectReaderException;
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


# static fields
.field static final HASH_CAUSE:J

.field static final HASH_DETAIL_MESSAGE:J

.field static final HASH_LOCALIZED_MESSAGE:J

.field static final HASH_MESSAGE:J

.field static final HASH_STACKTRACE:J

.field static final HASH_SUPPRESSED_EXCEPTIONS:J

.field static final HASH_TYPE:J


# instance fields
.field final constructorCause:Ljava/lang/reflect/Constructor;

.field final constructorDefault:Ljava/lang/reflect/Constructor;

.field final constructorMessage:Ljava/lang/reflect/Constructor;

.field final constructorMessageCause:Ljava/lang/reflect/Constructor;

.field final constructorParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final constructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldReaderStackTrace:Lcom/alibaba/fastjson2/reader/FieldReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "@type"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_TYPE:J

    .line 9
    .line 10
    const-string v0, "message"

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_MESSAGE:J

    .line 17
    .line 18
    const-string v0, "detailMessage"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_DETAIL_MESSAGE:J

    .line 25
    .line 26
    const-string v0, "localizedMessage"

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_LOCALIZED_MESSAGE:J

    .line 33
    .line 34
    const-string v0, "cause"

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_CAUSE:J

    .line 41
    .line 42
    const-string v0, "stackTrace"

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_STACKTRACE:J

    .line 49
    .line 50
    const-string v0, "suppressedExceptions"

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 54
    move-result-wide v0

    .line 55
    .line 56
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_SUPPRESSED_EXCEPTIONS:J

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getConstructor(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson2/reader/i;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/reader/i;-><init>()V

    .line 2
    const-string v2, "stackTrace"

    const-class v3, [Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/BiConsumer;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 3
    invoke-direct {p0, p1, v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;-><init>(Ljava/lang/Class;Ljava/util/List;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/util/List;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p2

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 5
    iput-object v9, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructors:Ljava/util/List;

    .line 6
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v10, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-nez v11, :cond_1

    move-object v2, v6

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 9
    aget-object v10, v12, v10

    .line 10
    const-class v13, Ljava/lang/Throwable;

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x1

    if-ne v11, v15, :cond_3

    if-ne v10, v14, :cond_2

    move-object v3, v6

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v13, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object v5, v6

    :cond_3
    :goto_1
    const/4 v7, 0x2

    if-ne v11, v7, :cond_0

    if-ne v10, v14, :cond_0

    .line 12
    aget-object v7, v12, v15

    .line 13
    invoke-virtual {v13, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    goto :goto_0

    .line 14
    :cond_4
    iput-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorDefault:Ljava/lang/reflect/Constructor;

    .line 15
    iput-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorMessage:Ljava/lang/reflect/Constructor;

    .line 16
    iput-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorMessageCause:Ljava/lang/reflect/Constructor;

    .line 17
    iput-object v5, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorCause:Ljava/lang/reflect/Constructor;

    .line 18
    new-instance v1, Lcom/alibaba/fastjson2/reader/j;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/reader/j;-><init>()V

    invoke-static {v9, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorParameters:Ljava/util/List;

    .line 20
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 21
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 22
    array-length v1, v9

    if-lez v1, :cond_6

    .line 23
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->lookupParameterNames(Ljava/lang/reflect/Constructor;)[Ljava/lang/String;

    move-result-object v11

    .line 24
    new-instance v2, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    .line 25
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    move v5, v10

    .line 26
    :goto_3
    array-length v1, v9

    if-ge v5, v1, :cond_7

    array-length v1, v11

    if-ge v5, v1, :cond_7

    .line 27
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 28
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-object/from16 v3, p1

    .line 29
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;I[[Ljava/lang/annotation/Annotation;)V

    .line 30
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 31
    aput-object v1, v11, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    .line 32
    :cond_7
    iget-object v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorParameters:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 33
    :cond_8
    array-length v1, v8

    const/4 v7, 0x0

    :goto_4
    if-ge v10, v1, :cond_a

    aget-object v2, v8, v10

    .line 34
    const-string v3, "stackTrace"

    iget-object v4, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    const-class v4, [Ljava/lang/StackTraceElement;

    if-ne v3, v4, :cond_9

    move-object v7, v2

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 35
    :cond_a
    iput-object v7, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->fieldReaderStackTrace:Lcom/alibaba/fastjson2/reader/FieldReader;

    return-void
.end method

.method public static synthetic a(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 5
    array-length p0, p0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 9
    move-result-object p1

    .line 10
    array-length p1, p1

    .line 11
    .line 12
    if-ge p0, p1, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    .line 16
    :cond_0
    if-le p0, p1, :cond_1

    .line 17
    const/4 p0, -0x1

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private createObject(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 8

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorMessageCause:Ljava/lang/reflect/Constructor;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object p1, v1, v3

    .line 16
    .line 17
    aput-object p2, v1, v2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Ljava/lang/Throwable;

    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorMessage:Ljava/lang/reflect/Constructor;

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    new-array p2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p1, p2, v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Ljava/lang/Throwable;

    .line 43
    return-object p1

    .line 44
    .line 45
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorCause:Ljava/lang/reflect/Constructor;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    new-array p1, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p2, p1, v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    check-cast p1, Ljava/lang/Throwable;

    .line 60
    return-object p1

    .line 61
    .line 62
    :cond_2
    if-eqz v0, :cond_4

    .line 63
    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object p1, v1, v3

    .line 71
    .line 72
    aput-object p2, v1, v2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    check-cast p1, Ljava/lang/Throwable;

    .line 79
    return-object p1

    .line 80
    .line 81
    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorDefault:Ljava/lang/reflect/Constructor;

    .line 82
    const/4 v7, 0x0

    .line 83
    .line 84
    if-eqz v6, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    check-cast p1, Ljava/lang/Throwable;

    .line 91
    return-object p1

    .line 92
    .line 93
    :cond_5
    if-eqz v0, :cond_6

    .line 94
    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object p1, v1, v3

    .line 98
    .line 99
    aput-object p2, v1, v2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    check-cast p1, Ljava/lang/Throwable;

    .line 106
    return-object p1

    .line 107
    .line 108
    :cond_6
    if-eqz v4, :cond_7

    .line 109
    .line 110
    new-array p2, v2, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object p1, p2, v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    check-cast p1, Ljava/lang/Throwable;

    .line 119
    return-object p1

    .line 120
    .line 121
    :cond_7
    if-eqz v5, :cond_8

    .line 122
    .line 123
    new-array p1, v2, [Ljava/lang/Object;

    .line 124
    .line 125
    aput-object p2, p1, v3

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    check-cast p1, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    return-object p1

    .line 133
    :cond_8
    return-object v7

    .line 134
    .line 135
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 136
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    const-string v1, "create Exception error, class "

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v1, ", "

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    throw p2
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6
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
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, -0x6e

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportAutoType(J)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getContextAutoTypeBeforeHandler()Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, p0

    .line 25
    move-object v1, p1

    .line 26
    move-object v2, p2

    .line 27
    move-object v3, p3

    .line 28
    move-wide v4, p4

    .line 29
    goto :goto_2

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 36
    move-result-wide p4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p4, p5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 40
    move-result-object p4

    .line 41
    .line 42
    if-nez p4, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 46
    move-result-object p4

    .line 47
    const/4 p5, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p4, p5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 51
    move-result-object p5

    .line 52
    .line 53
    if-eqz p5, :cond_2

    .line 54
    move-object v0, p5

    .line 55
    goto :goto_1

    .line 56
    .line 57
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 58
    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    const-string p5, "autoType not support : "

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string p4, ", offset "

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    .line 79
    move-result p1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p2

    .line 91
    :cond_3
    move-object v0, p4

    .line 92
    .line 93
    :goto_1
    const-wide/16 v4, 0x0

    .line 94
    move-object v1, p1

    .line 95
    move-object v2, p2

    .line 96
    move-object v3, p3

    .line 97
    .line 98
    .line 99
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    move-result-object p1

    .line 106
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 17
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
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    move-wide/from16 v2, p4

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 10
    move-result v4

    .line 11
    const/4 v5, 0x0

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 17
    move-result v4

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    return-object v5

    .line 21
    :cond_0
    move-object v6, v5

    .line 22
    move-object v7, v6

    .line 23
    move-object v8, v7

    .line 24
    move-object v9, v8

    .line 25
    move-object v10, v9

    .line 26
    const/4 v11, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 30
    move-result v12

    .line 31
    .line 32
    if-eqz v12, :cond_15

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->createObject(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    if-nez v2, :cond_a

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    :goto_1
    iget-object v11, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructors:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 45
    move-result v11

    .line 46
    .line 47
    if-ge v3, v11, :cond_a

    .line 48
    .line 49
    iget-object v11, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructorParameters:Ljava/util/List;

    .line 50
    .line 51
    .line 52
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v11

    .line 54
    .line 55
    check-cast v11, [Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v11, :cond_9

    .line 58
    array-length v12, v11

    .line 59
    .line 60
    if-nez v12, :cond_1

    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    :cond_1
    const/4 v12, 0x1

    .line 64
    const/4 v13, 0x0

    .line 65
    :goto_2
    array-length v14, v11

    .line 66
    .line 67
    const-string v15, "message"

    .line 68
    .line 69
    const-string v4, "cause"

    .line 70
    .line 71
    if-ge v13, v14, :cond_4

    .line 72
    .line 73
    aget-object v14, v11, v13

    .line 74
    .line 75
    if-nez v14, :cond_2

    .line 76
    const/4 v12, 0x0

    .line 77
    goto :goto_3

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v4

    .line 82
    .line 83
    if-nez v4, :cond_3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v4

    .line 88
    .line 89
    if-nez v4, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-interface {v7, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 93
    move-result v4

    .line 94
    .line 95
    if-nez v4, :cond_3

    .line 96
    const/4 v12, 0x0

    .line 97
    .line 98
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 99
    goto :goto_2

    .line 100
    .line 101
    :cond_4
    :goto_3
    if-nez v12, :cond_5

    .line 102
    goto :goto_6

    .line 103
    :cond_5
    array-length v2, v11

    .line 104
    .line 105
    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    const/4 v12, 0x0

    .line 107
    :goto_4
    array-length v13, v11

    .line 108
    .line 109
    if-ge v12, v13, :cond_8

    .line 110
    .line 111
    aget-object v13, v11, v12

    .line 112
    .line 113
    .line 114
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    move-result v14

    .line 119
    .line 120
    if-nez v14, :cond_7

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v14

    .line 125
    .line 126
    if-nez v14, :cond_6

    .line 127
    .line 128
    .line 129
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object v13

    .line 131
    goto :goto_5

    .line 132
    :cond_6
    move-object v13, v5

    .line 133
    goto :goto_5

    .line 134
    :cond_7
    move-object v13, v6

    .line 135
    .line 136
    :goto_5
    aput-object v13, v2, v12

    .line 137
    .line 138
    add-int/lit8 v12, v12, 0x1

    .line 139
    goto :goto_4

    .line 140
    .line 141
    :cond_8
    iget-object v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->constructors:Ljava/util/List;

    .line 142
    .line 143
    .line 144
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v3

    .line 146
    .line 147
    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 148
    .line 149
    .line 150
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v2

    .line 152
    .line 153
    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    goto :goto_7

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    .line 157
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 158
    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    const-string v5, "create error, objectClass "

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v3, ", "

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    move-result-object v3

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v3

    .line 187
    .line 188
    .line 189
    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    throw v2

    .line 191
    .line 192
    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 193
    .line 194
    goto/16 :goto_1

    .line 195
    .line 196
    :cond_a
    :goto_7
    if-eqz v2, :cond_14

    .line 197
    .line 198
    if-eqz v9, :cond_e

    .line 199
    array-length v3, v9

    .line 200
    const/4 v4, 0x0

    .line 201
    const/4 v5, 0x0

    .line 202
    .line 203
    :goto_8
    if-ge v4, v3, :cond_c

    .line 204
    .line 205
    aget-object v6, v9, v4

    .line 206
    .line 207
    if-nez v6, :cond_b

    .line 208
    .line 209
    add-int/lit8 v5, v5, 0x1

    .line 210
    .line 211
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 212
    goto :goto_8

    .line 213
    :cond_c
    array-length v3, v9

    .line 214
    .line 215
    if-eqz v3, :cond_d

    .line 216
    array-length v3, v9

    .line 217
    .line 218
    if-eq v5, v3, :cond_e

    .line 219
    .line 220
    .line 221
    :cond_d
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 222
    .line 223
    :cond_e
    if-eqz v10, :cond_f

    .line 224
    .line 225
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->fieldReaderStackTrace:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 226
    .line 227
    .line 228
    invoke-static {v10}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    .line 229
    move-result-object v4

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v3, v2, v4}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    .line 233
    .line 234
    :cond_f
    if-eqz v7, :cond_11

    .line 235
    .line 236
    .line 237
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 238
    move-result-object v3

    .line 239
    .line 240
    .line 241
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 242
    move-result-object v3

    .line 243
    .line 244
    .line 245
    :cond_10
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    move-result v4

    .line 247
    .line 248
    if-eqz v4, :cond_11

    .line 249
    .line 250
    .line 251
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    move-result-object v4

    .line 253
    .line 254
    check-cast v4, Ljava/util/Map$Entry;

    .line 255
    .line 256
    .line 257
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 258
    move-result-object v5

    .line 259
    .line 260
    check-cast v5, Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 264
    move-result-object v5

    .line 265
    .line 266
    if-eqz v5, :cond_10

    .line 267
    .line 268
    .line 269
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 270
    move-result-object v4

    .line 271
    .line 272
    .line 273
    invoke-virtual {v5, v2, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 274
    goto :goto_9

    .line 275
    .line 276
    :cond_11
    if-eqz v8, :cond_13

    .line 277
    .line 278
    .line 279
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 280
    move-result-object v3

    .line 281
    .line 282
    .line 283
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 284
    move-result-object v3

    .line 285
    .line 286
    .line 287
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    move-result v4

    .line 289
    .line 290
    if-eqz v4, :cond_13

    .line 291
    .line 292
    .line 293
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    move-result-object v4

    .line 295
    .line 296
    check-cast v4, Ljava/util/Map$Entry;

    .line 297
    .line 298
    .line 299
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 300
    move-result-object v5

    .line 301
    .line 302
    check-cast v5, Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 306
    move-result-object v5

    .line 307
    .line 308
    if-nez v5, :cond_12

    .line 309
    goto :goto_a

    .line 310
    .line 311
    .line 312
    :cond_12
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 313
    move-result-object v4

    .line 314
    .line 315
    check-cast v4, Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v0, v2, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->addResolveTask(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    goto :goto_a

    .line 320
    :cond_13
    return-object v2

    .line 321
    .line 322
    :cond_14
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 323
    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    const-string v4, "not support : "

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    iget-object v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 338
    move-result-object v4

    .line 339
    .line 340
    .line 341
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v3

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    move-result-object v3

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    move-result-object v0

    .line 354
    .line 355
    .line 356
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 357
    throw v2

    .line 358
    .line 359
    .line 360
    :cond_15
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 361
    move-result-wide v12

    .line 362
    .line 363
    if-nez v11, :cond_19

    .line 364
    .line 365
    sget-wide v14, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_TYPE:J

    .line 366
    .line 367
    cmp-long v4, v12, v14

    .line 368
    .line 369
    if-nez v4, :cond_19

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->isSupportAutoType(J)Z

    .line 373
    move-result v4

    .line 374
    .line 375
    if-eqz v4, :cond_19

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 379
    move-result-wide v12

    .line 380
    .line 381
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v4, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 385
    move-result-object v12

    .line 386
    .line 387
    if-nez v12, :cond_17

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 391
    move-result-object v12

    .line 392
    .line 393
    iget-object v13, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v12, v13, v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 397
    move-result-object v4

    .line 398
    .line 399
    if-eqz v4, :cond_16

    .line 400
    move-object v12, v4

    .line 401
    goto :goto_b

    .line 402
    .line 403
    :cond_16
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 404
    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .line 410
    const-string v4, "No suitable ObjectReader found for"

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    move-result-object v3

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    move-result-object v0

    .line 425
    .line 426
    .line 427
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 428
    throw v2

    .line 429
    .line 430
    :cond_17
    :goto_b
    if-ne v12, v1, :cond_18

    .line 431
    .line 432
    goto/16 :goto_f

    .line 433
    .line 434
    .line 435
    :cond_18
    invoke-interface {v12, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 436
    move-result-object v0

    .line 437
    return-object v0

    .line 438
    .line 439
    :cond_19
    sget-wide v14, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_MESSAGE:J

    .line 440
    .line 441
    cmp-long v4, v12, v14

    .line 442
    .line 443
    if-eqz v4, :cond_28

    .line 444
    .line 445
    sget-wide v14, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_DETAIL_MESSAGE:J

    .line 446
    .line 447
    cmp-long v4, v12, v14

    .line 448
    .line 449
    if-nez v4, :cond_1a

    .line 450
    .line 451
    goto/16 :goto_e

    .line 452
    .line 453
    :cond_1a
    sget-wide v14, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_LOCALIZED_MESSAGE:J

    .line 454
    .line 455
    cmp-long v4, v12, v14

    .line 456
    .line 457
    if-nez v4, :cond_1b

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 461
    .line 462
    goto/16 :goto_f

    .line 463
    .line 464
    :cond_1b
    sget-wide v14, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_CAUSE:J

    .line 465
    .line 466
    cmp-long v4, v12, v14

    .line 467
    .line 468
    const-class v14, Ljava/lang/Throwable;

    .line 469
    .line 470
    if-nez v4, :cond_1d

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 474
    move-result v4

    .line 475
    .line 476
    if-eqz v4, :cond_1c

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 480
    .line 481
    goto/16 :goto_f

    .line 482
    .line 483
    .line 484
    :cond_1c
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    .line 485
    move-result-object v4

    .line 486
    .line 487
    check-cast v4, Ljava/lang/Throwable;

    .line 488
    move-object v6, v4

    .line 489
    .line 490
    goto/16 :goto_f

    .line 491
    .line 492
    :cond_1d
    sget-wide v15, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_STACKTRACE:J

    .line 493
    .line 494
    cmp-long v4, v12, v15

    .line 495
    .line 496
    if-nez v4, :cond_1f

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 500
    move-result v4

    .line 501
    .line 502
    if-eqz v4, :cond_1e

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 506
    move-result-object v4

    .line 507
    move-object v10, v4

    .line 508
    .line 509
    goto/16 :goto_f

    .line 510
    .line 511
    :cond_1e
    const-class v4, [Ljava/lang/StackTraceElement;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    .line 515
    move-result-object v4

    .line 516
    .line 517
    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 518
    move-object v9, v4

    .line 519
    goto :goto_f

    .line 520
    .line 521
    :cond_1f
    sget-wide v15, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->HASH_SUPPRESSED_EXCEPTIONS:J

    .line 522
    .line 523
    cmp-long v4, v12, v15

    .line 524
    .line 525
    if-nez v4, :cond_22

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 529
    move-result v4

    .line 530
    .line 531
    if-eqz v4, :cond_20

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 535
    goto :goto_f

    .line 536
    .line 537
    .line 538
    :cond_20
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 539
    move-result v4

    .line 540
    .line 541
    const/16 v12, -0x6e

    .line 542
    .line 543
    if-ne v4, v12, :cond_21

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 547
    move-result-object v4

    .line 548
    .line 549
    check-cast v4, Ljava/util/List;

    .line 550
    goto :goto_f

    .line 551
    .line 552
    .line 553
    :cond_21
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 554
    goto :goto_f

    .line 555
    .line 556
    .line 557
    :cond_22
    invoke-virtual {v1, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 558
    move-result-object v4

    .line 559
    .line 560
    if-nez v7, :cond_23

    .line 561
    .line 562
    new-instance v7, Ljava/util/HashMap;

    .line 563
    .line 564
    .line 565
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 566
    .line 567
    :cond_23
    if-eqz v4, :cond_24

    .line 568
    .line 569
    iget-object v12, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 570
    goto :goto_c

    .line 571
    .line 572
    .line 573
    :cond_24
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 574
    move-result-object v12

    .line 575
    .line 576
    .line 577
    :goto_c
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 578
    move-result v13

    .line 579
    .line 580
    if-eqz v13, :cond_26

    .line 581
    .line 582
    .line 583
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 584
    move-result-object v4

    .line 585
    .line 586
    if-nez v8, :cond_25

    .line 587
    .line 588
    new-instance v8, Ljava/util/HashMap;

    .line 589
    .line 590
    .line 591
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 592
    .line 593
    .line 594
    :cond_25
    invoke-interface {v8, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    goto :goto_f

    .line 596
    .line 597
    :cond_26
    if-eqz v4, :cond_27

    .line 598
    .line 599
    .line 600
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    .line 601
    move-result-object v4

    .line 602
    goto :goto_d

    .line 603
    .line 604
    .line 605
    :cond_27
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 606
    move-result-object v4

    .line 607
    .line 608
    .line 609
    :goto_d
    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    goto :goto_f

    .line 611
    .line 612
    .line 613
    :cond_28
    :goto_e
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 614
    move-result-object v4

    .line 615
    move-object v5, v4

    .line 616
    .line 617
    :goto_f
    add-int/lit8 v11, v11, 0x1

    .line 618
    .line 619
    goto/16 :goto_0
.end method
