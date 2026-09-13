.class public Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson2/reader/ObjectReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field final emptyVariantArgs:Ljava/lang/Object;

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final features:J

.field final function:Lcom/alibaba/fastjson2/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/Function<",
            "TI;TT;>;"
        }
    .end annotation
.end field

.field final valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TI;>;"
        }
    .end annotation
.end field

.field valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final valueType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TI;>;J",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TI;TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->valueType:Ljava/lang/reflect/Type;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->valueClass:Ljava/lang/Class;

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->features:J

    .line 10
    .line 11
    iput-object p8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->constructor:Ljava/lang/reflect/Constructor;

    .line 12
    .line 13
    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->factoryMethod:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    iput-object p10, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->function:Lcom/alibaba/fastjson2/function/Function;

    .line 16
    .line 17
    if-eqz p9, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 21
    move-result-object p1

    .line 22
    array-length p2, p1

    .line 23
    const/4 p3, 0x2

    .line 24
    .line 25
    if-ne p2, p3, :cond_0

    .line 26
    const/4 p2, 0x1

    .line 27
    .line 28
    aget-object p1, p1, p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x0

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->emptyVariantArgs:Ljava/lang/Object;

    .line 40
    return-void

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    .line 43
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->emptyVariantArgs:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "TI;TT;>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue<",
            "TI;TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v1, p0

    move-object v2, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue<",
            "TI;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v1, p0

    move-object v2, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/Function;)V

    return-object v0
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

.method public synthetic createInstance(J)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->f(Lcom/alibaba/fastjson2/reader/ObjectReader;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/reader/d;->g(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->h(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/d;->i(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/d;->j(Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0

    .line 7
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

.method public synthetic getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/d;->r(Lcom/alibaba/fastjson2/reader/ObjectReader;)Ljava/lang/Class;

    move-result-object v0

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
    .locals 0
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
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->valueType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->valueReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->features:J

    or-long v5, p4, v2

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    return-object p2

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->function:Lcom/alibaba/fastjson2/function/Function;

    const-string p4, "create object error"

    if-eqz p3, :cond_2

    .line 8
    :try_start_0
    invoke-interface {p3, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 9
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->constructor:Ljava/lang/reflect/Constructor;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 11
    :try_start_1
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, p5

    invoke-virtual {p3, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 12
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 13
    :cond_3
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_5

    .line 14
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->emptyVariantArgs:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    .line 15
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, p5

    aput-object v1, v3, v0

    invoke-virtual {p3, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 16
    :cond_4
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, p5

    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 17
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 18
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v2, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

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
