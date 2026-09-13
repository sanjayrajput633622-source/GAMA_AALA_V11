.class public Lcom/alibaba/fastjson2/writer/ObjectWriters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 3
    .line 4
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 5
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

.method public static synthetic a(Lcom/alibaba/fastjson2/function/ToLongFunction;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    .line 4
    move-result-wide p0

    .line 5
    long-to-int p0, p0

    .line 6
    return p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/Predicate;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/Predicate<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/Predicate;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToByteFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToByteFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToByteFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToDoubleFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToDoubleFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToDoubleFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToFloatFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToFloatFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToFloatFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToIntFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToLongFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToLongFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToLongFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToShortFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToShortFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToShortFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p0

    return-object p0
.end method

.method public static fieldWriterList(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljava/lang/String;

    .line 3
    .line 4
    const-class v1, Ljava/util/List;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->PARAM_TYPE_LIST_STR:Ljava/lang/reflect/ParameterizedType;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 12
    const/4 v2, 0x1

    .line 13
    .line 14
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    aput-object p1, v2, v3

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 21
    move-object p1, v0

    .line 22
    .line 23
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static fieldWriterListString(Ljava/lang/String;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 3
    .line 4
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->PARAM_TYPE_LIST_STR:Ljava/lang/reflect/ParameterizedType;

    .line 5
    .line 6
    const-class v2, Ljava/util/List;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static objectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs objectWriter(Ljava/lang/Class;J[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 3
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;J[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs objectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs objectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 4
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ")",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static ofReflect(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static ofToBigDecimal(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Lcom/alibaba/fastjson2/function/Function;)V

    .line 7
    return-object v0
.end method

.method public static ofToBooleanArray(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[Z>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0
.end method

.method public static ofToBooleanArray(Lcom/alibaba/fastjson2/function/ToIntFunction;Lcom/alibaba/fastjson2/function/BiFunction;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/ToIntFunction;",
            "Lcom/alibaba/fastjson2/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;-><init>(Lcom/alibaba/fastjson2/function/ToIntFunction;Lcom/alibaba/fastjson2/function/BiFunction;)V

    return-object v0
.end method

.method public static ofToBooleanArray(Lcom/alibaba/fastjson2/function/ToLongFunction;Lcom/alibaba/fastjson2/function/BiFunction;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/ToLongFunction;",
            "Lcom/alibaba/fastjson2/function/BiFunction<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/writer/t;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/t;-><init>(Lcom/alibaba/fastjson2/function/ToLongFunction;)V

    .line 4
    new-instance p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArrayLambda;-><init>(Lcom/alibaba/fastjson2/function/ToIntFunction;Lcom/alibaba/fastjson2/function/BiFunction;)V

    return-object p0
.end method

.method public static ofToByteArray(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[B>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 6
    return-object v0
.end method

.method public static ofToCharArray(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[C>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 6
    return-object v0
.end method

.method public static ofToDoubleArray(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[D>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDoubleValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDoubleValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;Ljava/text/DecimalFormat;)V

    .line 7
    return-object v0
.end method

.method public static ofToFloatArray(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[F>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloatValueArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloatValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;Ljava/text/DecimalFormat;)V

    .line 7
    return-object v0
.end method

.method public static ofToInt(Lcom/alibaba/fastjson2/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/ToIntFunction;",
            ")",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;

    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x0

    .line 7
    .line 8
    const-string v2, "toInt"

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    const-wide/high16 v4, 0x1000000000000L

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v9, p0

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToIntFunction;)V

    .line 17
    const/4 p0, 0x1

    .line 18
    .line 19
    new-array p0, p0, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    aput-object v1, p0, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static ofToIntArray(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[I>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32ValueArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32ValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 6
    return-object v0
.end method

.method public static ofToLong(Lcom/alibaba/fastjson2/function/ToLongFunction;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/ToLongFunction;",
            ")",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;

    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x0

    .line 7
    .line 8
    const-string v2, "toLong"

    .line 9
    const/4 v3, 0x0

    .line 10
    .line 11
    const-wide/high16 v4, 0x1000000000000L

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v9, p0

    .line 14
    .line 15
    .line 16
    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToLongFunction;)V

    .line 17
    const/4 p0, 0x1

    .line 18
    .line 19
    new-array p0, p0, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    aput-object v1, p0, v2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static ofToLongArray(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[J>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 6
    return-object v0
.end method

.method public static ofToShortArray(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/Object;",
            "[S>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 6
    return-object v0
.end method

.method public static ofToString(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriters;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 3
    .line 4
    const-class v10, Ljava/lang/String;

    .line 5
    const/4 v11, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    const-string v3, "toString"

    .line 10
    const/4 v4, 0x0

    .line 11
    .line 12
    const-wide/high16 v5, 0x1000000000000L

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    .line 16
    const-class v9, Ljava/lang/String;

    .line 17
    move-object v12, p0

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 21
    move-result-object p0

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    new-array v1, v1, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    aput-object p0, v1, v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
