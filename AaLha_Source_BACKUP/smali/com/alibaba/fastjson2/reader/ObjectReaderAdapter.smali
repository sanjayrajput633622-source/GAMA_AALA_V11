.class public Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderBean;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderBean<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final constructor:Ljava/lang/reflect/Constructor;

.field protected final fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

.field final hashCodes:[J

.field final hashCodesLCase:[J

.field final mapping:[S

.field final mappingLCase:[S

.field final parameterCount:I

.field final seeAlso:[Ljava/lang/Class;

.field final seeAlsoDefault:Ljava/lang/Class;

.field final seeAlsoMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final seeAlsoNames:[Ljava/lang/String;

.field protected final typeKey:Ljava/lang/String;

.field protected final typeKeyHashCode:J


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v8, p3

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Function;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v11, p8

    .line 2
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Function;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p2

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v2, p6

    move-object/from16 v6, p7

    move-object/from16 v10, p11

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Function;)V

    .line 5
    instance-of v3, v2, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 6
    move-object v1, v2

    check-cast v1, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;

    iget-object v1, v1, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->constructor:Ljava/lang/reflect/Constructor;

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDefaultConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    iput v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->parameterCount:I

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    .line 10
    iput v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->parameterCount:I

    .line 11
    :goto_2
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz v7, :cond_5

    .line 12
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    iput-object v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKey:Ljava/lang/String;

    .line 14
    invoke-static {v7}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKeyHashCode:J

    goto :goto_4

    .line 15
    :cond_5
    :goto_3
    const-string v1, "@type"

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKey:Ljava/lang/String;

    const-wide v1, 0x6570797440L

    .line 16
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKeyHashCode:J

    .line 17
    :goto_4
    iput-object v10, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    array-length v1, v10

    new-array v2, v1, [J

    .line 19
    array-length v3, v10

    new-array v6, v3, [J

    const/4 v7, 0x0

    move v11, v7

    .line 20
    :goto_5
    array-length v12, v10

    if-ge v11, v12, :cond_9

    .line 21
    aget-object v12, v10, v11

    .line 22
    iget-wide v13, v12, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    aput-wide v13, v2, v11

    .line 23
    iget-wide v13, v12, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    aput-wide v13, v6, v11

    .line 24
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/reader/FieldReader;->isUnwrapped()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 25
    iget-object v13, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->extraFieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz v13, :cond_6

    instance-of v13, v13, Lcom/alibaba/fastjson2/reader/FieldReaderAnySetter;

    if-nez v13, :cond_7

    .line 26
    :cond_6
    iput-object v12, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->extraFieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    :cond_7
    iget-object v12, v12, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-eqz v12, :cond_8

    .line 28
    iput-boolean v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 29
    :cond_9
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->hashCodes:[J

    .line 30
    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    .line 31
    array-length v5, v5

    new-array v5, v5, [S

    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->mapping:[S

    move v5, v7

    :goto_6
    if-ge v5, v1, :cond_a

    .line 32
    aget-wide v10, v2, v5

    .line 33
    iget-object v12, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->hashCodes:[J

    invoke-static {v12, v10, v11}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    .line 34
    iget-object v11, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->mapping:[S

    int-to-short v12, v5

    aput-short v12, v11, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 35
    :cond_a
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->hashCodesLCase:[J

    .line 36
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 37
    array-length v1, v1

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->mappingLCase:[S

    move v1, v7

    :goto_7
    if-ge v1, v3, :cond_b

    .line 38
    aget-wide v10, v6, v1

    .line 39
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->hashCodesLCase:[J

    invoke-static {v2, v10, v11}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 40
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->mappingLCase:[S

    int-to-short v10, v1

    aput-short v10, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 41
    :cond_b
    iput-object v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlso:[Ljava/lang/Class;

    if-eqz v8, :cond_10

    .line 42
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoMapping:Ljava/util/Map;

    .line 43
    array-length v1, v8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoNames:[Ljava/lang/String;

    .line 44
    :goto_8
    array-length v1, v8

    if-ge v7, v1, :cond_f

    .line 45
    aget-object v1, v8, v7

    if-eqz v9, :cond_c

    .line 46
    array-length v2, v9

    add-int/lit8 v3, v7, 0x1

    if-lt v2, v3, :cond_c

    .line 47
    aget-object v2, v9, v7

    goto :goto_9

    :cond_c
    move-object v2, v4

    :goto_9
    if-eqz v2, :cond_d

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 49
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 50
    :cond_e
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v5

    .line 51
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoMapping:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoNames:[Ljava/lang/String;

    aput-object v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_f
    :goto_a
    move-object/from16 v1, p10

    goto :goto_b

    .line 53
    :cond_10
    iput-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoMapping:Ljava/util/Map;

    .line 54
    iput-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoNames:[Ljava/lang/String;

    goto :goto_a

    .line 55
    :goto_b
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoDefault:Ljava/lang/Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Function;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v11, p10

    .line 3
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    return-void
.end method


# virtual methods
.method public autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoMapping:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoMapping:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 24
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoMapping:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->seeAlsoMapping:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1
.end method

.method public autoType(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            ")TT;"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v0

    .line 11
    iget-object v2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    invoke-virtual {p0, v2, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auotype not support : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v2, v0

    :goto_0
    const/4 v5, 0x0

    .line 16
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    const/4 v4, 0x0

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public autoType(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v0

    .line 2
    iget-object v2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/alibaba/fastjson2/JSONReader;->isSupportAutoTypeOrHandler(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    or-long/2addr v3, p3

    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr v3, v5

    invoke-virtual {v2, v0, p2, v3, v4}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    if-ne p2, v1, :cond_1

    move-object v0, p0

    goto :goto_1

    .line 8
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "auotype not support : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-wide v4, p3

    .line 9
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 7
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->constructor:Ljava/lang/reflect/Constructor;

    const-string p2, "create instance error, "

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->parameterCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 9
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    .line 12
    :goto_1
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->initDefaultValue(Ljava/lang/Object;)V

    :cond_1
    return-object p1

    .line 14
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            "J)TT;"
        }
    .end annotation

    const-wide/16 p2, 0x0

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v2, v1

    if-lt p3, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    aget-object v1, v1, p3

    .line 6
    invoke-virtual {v1, p2, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p2

    .line 15
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKey:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    iget-wide v6, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    or-long/2addr v6, v4

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultReaderFeatures()J

    move-result-wide v8

    or-long/2addr v6, v8

    .line 18
    instance-of v8, v3, Ljava/lang/String;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    if-eqz v8, :cond_3

    .line 19
    check-cast v3, Ljava/lang/String;

    .line 20
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v12

    .line 21
    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v14, v4

    cmp-long v8, v14, v10

    if-nez v8, :cond_1

    instance-of v8, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderSeeAlso;

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v9

    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    invoke-virtual {v0, v2, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_2

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getObjectClass()Ljava/lang/Class;

    move-result-object v8

    .line 24
    invoke-virtual {v2, v3, v8, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v8

    :cond_2
    if-eq v8, v0, :cond_3

    if-eqz v8, :cond_3

    .line 25
    invoke-interface {v8, v1, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 26
    :cond_3
    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->createInstance(J)Ljava/lang/Object;

    move-result-object v3

    .line 27
    iget-object v8, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->extraFieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-nez v8, :cond_e

    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v12, v14

    and-long/2addr v12, v6

    cmp-long v8, v12, v10

    if-nez v8, :cond_e

    .line 28
    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v12, v6

    cmp-long v8, v12, v10

    const/4 v12, 0x0

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    move v8, v12

    .line 29
    :goto_2
    iget-object v13, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    array-length v14, v13

    if-ge v12, v14, :cond_d

    .line 30
    aget-object v13, v13, v12

    .line 31
    iget-object v14, v13, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    .line 32
    sget-object v15, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    move-wide/from16 v16, v10

    iget-wide v10, v15, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v6

    cmp-long v10, v10, v16

    if-nez v10, :cond_c

    iget-object v10, v13, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_4

    :cond_5
    move-wide/from16 v16, v10

    .line 33
    :cond_6
    iget-object v10, v13, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 34
    :try_start_0
    iget-object v10, v13, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v10, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 35
    instance-of v11, v10, Ljava/util/Collection;

    if-eqz v11, :cond_7

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_7

    goto :goto_4

    :catch_0
    :cond_7
    if-eqz v14, :cond_b

    .line 36
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, v13, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    if-ne v10, v11, :cond_8

    goto :goto_3

    .line 37
    :cond_8
    instance-of v10, v13, Lcom/alibaba/fastjson2/reader/FieldReaderList;

    if-eqz v10, :cond_9

    instance-of v10, v14, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v10, :cond_9

    .line 38
    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson2/reader/FieldReader;->getObjectReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v10

    .line 39
    check-cast v14, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v10, v14, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;J)Ljava/lang/Object;

    move-result-object v10

    .line 40
    invoke-virtual {v13, v3, v10}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 41
    :cond_9
    instance-of v10, v14, Lcom/alibaba/fastjson2/JSONObject;

    if-eqz v10, :cond_a

    const-class v10, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v11, v10, :cond_a

    .line 42
    check-cast v14, Lcom/alibaba/fastjson2/JSONObject;

    .line 43
    invoke-virtual {v2, v11, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v10

    .line 44
    invoke-interface {v10, v14, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v10

    .line 45
    invoke-virtual {v13, v3, v10}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 46
    :cond_a
    invoke-virtual {v13, v3, v14, v4, v5}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptAny(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_4

    .line 47
    :cond_b
    :goto_3
    invoke-virtual {v13, v3, v14}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v10, v16

    goto/16 :goto_2

    :cond_d
    move-object v1, v3

    goto :goto_7

    .line 48
    :cond_e
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 51
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v8

    if-nez v8, :cond_f

    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v1, v18

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    :goto_6
    move-object v3, v1

    goto :goto_5

    :cond_f
    move-object v1, v3

    if-eqz v7, :cond_10

    .line 53
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v8, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    if-ne v2, v3, :cond_10

    .line 54
    invoke-virtual {v8, v1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    .line 55
    :cond_10
    invoke-virtual {v8, v1, v7, v4, v5}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptAny(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_6

    .line 56
    :goto_7
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    if-eqz v2, :cond_11

    .line 57
    invoke-interface {v2, v1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_8

    :cond_11
    move-object v3, v1

    :goto_8
    return-object v3
.end method

.method public createInstance0(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 5
    and-long/2addr p1, v0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long p1, p1, v0

    .line 10
    .line 11
    const-string p2, "create instance error, "

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->constructor:Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 21
    move-result-object p1

    .line 22
    array-length p1, p1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->constructor:Ljava/lang/reflect/Constructor;

    .line 27
    const/4 v0, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->initDefaultValue(Ljava/lang/Object;)V

    .line 39
    :cond_0
    return-object p1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_1
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :catch_2
    move-exception p1

    .line 45
    .line 46
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw v0

    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    .line 78
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    .line 98
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p1
.end method

.method public final getBuildFunction()Lcom/alibaba/fastjson2/function/Function;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 3
    return-object v0
.end method

.method public final getFeatures()J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 3
    return-wide v0
.end method

.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->hashCodes:[J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->mapping:[S

    .line 13
    .line 14
    aget-short p1, p2, p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 17
    .line 18
    aget-object p1, p2, p1

    .line 19
    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->hashCodesLCase:[J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-gez p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    .line 12
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->mappingLCase:[S

    .line 13
    .line 14
    aget-short p1, p2, p1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 17
    .line 18
    aget-object p1, p2, p1

    .line 19
    return-object p1
.end method

.method public getFieldReaders()[Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 3
    array-length v1, v0

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 10
    return-object v0
.end method

.method public final getTypeKey()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKey:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final getTypeKeyHash()J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKeyHashCode:J

    .line 3
    return-wide v0
.end method

.method public initDefaultValue(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    :goto_0
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v3, v0, v2

    .line 9
    .line 10
    iget-object v4, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p1, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method

.method public initStringFieldAsEmpty(Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 4
    array-length v2, v1

    .line 5
    .line 6
    if-ge v0, v2, :cond_1

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 11
    .line 12
    const-class v3, Ljava/lang/String;

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1, v2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method

.method public readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
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
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 14
    or-long/2addr v1, p4

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->checkAutoType(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    if-eq v3, p0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 29
    .line 30
    if-eq v0, v1, :cond_1

    .line 31
    move-object v4, p1

    .line 32
    move-object v5, p2

    .line 33
    move-object v6, p3

    .line 34
    move-wide v7, p4

    .line 35
    .line 36
    .line 37
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    move-object v4, p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 44
    move-result p1

    .line 45
    .line 46
    const-wide/16 p2, 0x0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->createInstance(J)Ljava/lang/Object;

    .line 50
    move-result-object p2

    .line 51
    const/4 p3, 0x0

    .line 52
    .line 53
    :goto_0
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 54
    array-length p5, p4

    .line 55
    .line 56
    if-ge p3, p5, :cond_3

    .line 57
    .line 58
    if-lt p3, p1, :cond_2

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_2
    aget-object p4, p4, p3

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, v4, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 65
    .line 66
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    array-length p3, p4

    .line 69
    .line 70
    :goto_2
    if-ge p3, p1, :cond_4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 74
    .line 75
    add-int/lit8 p3, p3, 0x1

    .line 76
    goto :goto_2

    .line 77
    .line 78
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_5
    return-object p2
.end method

.method public readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
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
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    move-object p2, p0

    .line 10
    return-object p1

    .line 11
    :cond_0
    move-object p2, p0

    .line 12
    .line 13
    iget-boolean p3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    iget-object p3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 24
    .line 25
    iget-object p3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 26
    .line 27
    .line 28
    invoke-interface {p3}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 29
    move-result-object p3

    .line 30
    const/4 p4, 0x0

    .line 31
    .line 32
    :goto_0
    iget-object p5, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->fieldReaders:[Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 33
    array-length v0, p5

    .line 34
    .line 35
    if-ge p4, v0, :cond_2

    .line 36
    .line 37
    aget-object p5, p5, p4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p5, p1, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 41
    .line 42
    add-int/lit8 p4, p4, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 47
    move-result p4

    .line 48
    .line 49
    if-eqz p4, :cond_4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 53
    .line 54
    iget-object p1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, p3}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_3
    return-object p3

    .line 63
    .line 64
    :cond_4
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 65
    .line 66
    const-string p4, "array to bean end error"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p3
.end method

.method public final readFieldValue(JLcom/alibaba/fastjson2/JSONReader;JLjava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->disableSmartMatch:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 13
    or-long/2addr p4, v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p4, p5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 17
    move-result p4

    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 23
    move-result-wide p4

    .line 24
    .line 25
    cmp-long v0, p4, p1

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-wide p1, p4

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    :cond_1
    if-eqz v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p3, p6}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 39
    return-void

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0, p3, p6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 11
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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 4
    move-result v0

    .line 5
    const/4 v6, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v6

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 17
    or-long/2addr v4, p4

    .line 18
    move-object v0, p1

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 31
    .line 32
    if-eq v0, v2, :cond_1

    .line 33
    move-object v2, p2

    .line 34
    move-object v3, p3

    .line 35
    move-wide v4, p4

    .line 36
    move-object v0, v1

    .line 37
    move-object v1, p1

    .line 38
    .line 39
    .line 40
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    .line 44
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportBeanArray()Z

    .line 61
    move-result v0

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    .line 70
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v3, "expect object, but "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 84
    move-result v3

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 103
    throw v0

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 107
    const/4 v0, 0x0

    .line 108
    move-object v2, v6

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 112
    move-result v3

    .line 113
    .line 114
    if-eqz v3, :cond_6

    .line 115
    .line 116
    if-nez v2, :cond_5

    .line 117
    .line 118
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 119
    .line 120
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 121
    or-long/2addr v0, p4

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->createInstance(J)Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 126
    return-object v0

    .line 127
    :cond_5
    return-object v2

    .line 128
    .line 129
    .line 130
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 131
    move-result-wide v3

    .line 132
    .line 133
    iget-wide v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->typeKeyHashCode:J

    .line 134
    .line 135
    cmp-long v5, v3, v7

    .line 136
    .line 137
    if-nez v5, :cond_a

    .line 138
    .line 139
    if-nez v0, :cond_a

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    .line 143
    move-result-wide v3

    .line 144
    .line 145
    iget-object v5, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v5, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 149
    move-result-object v3

    .line 150
    .line 151
    if-nez v3, :cond_8

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v3, v6}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 159
    move-result-object v4

    .line 160
    .line 161
    if-eqz v4, :cond_7

    .line 162
    move-object v3, v4

    .line 163
    goto :goto_1

    .line 164
    .line 165
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 166
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    const-string v4, "auotype not support : "

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v2

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object v1

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 190
    throw v0

    .line 191
    .line 192
    :cond_8
    :goto_1
    if-ne v3, p0, :cond_9

    .line 193
    move-wide v7, p4

    .line 194
    goto :goto_2

    .line 195
    :cond_9
    const/4 v0, 0x1

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    .line 199
    move-object v1, p1

    .line 200
    move-object v2, p2

    .line 201
    move-wide v4, p4

    .line 202
    move-object v0, v3

    .line 203
    move-object v3, p3

    .line 204
    .line 205
    .line 206
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 207
    move-result-object v0

    .line 208
    return-object v0

    .line 209
    :cond_a
    move-wide v7, p4

    .line 210
    .line 211
    const-wide/16 v9, 0x0

    .line 212
    .line 213
    cmp-long v5, v3, v9

    .line 214
    .line 215
    if-nez v5, :cond_b

    .line 216
    goto :goto_2

    .line 217
    .line 218
    .line 219
    :cond_b
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 220
    move-result-object v3

    .line 221
    .line 222
    if-nez v3, :cond_c

    .line 223
    .line 224
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 225
    or-long/2addr v4, v7

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 229
    move-result v4

    .line 230
    .line 231
    if-eqz v4, :cond_c

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 235
    move-result-wide v3

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 239
    move-result-object v3

    .line 240
    .line 241
    :cond_c
    if-nez v3, :cond_d

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, p1, v2, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 245
    goto :goto_2

    .line 246
    .line 247
    :cond_d
    if-nez v2, :cond_e

    .line 248
    .line 249
    iget-object v2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 250
    .line 251
    iget-wide v4, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 252
    or-long/2addr v4, v7

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->createInstance(J)Ljava/lang/Object;

    .line 256
    move-result-object v2

    .line 257
    .line 258
    .line 259
    :cond_e
    invoke-virtual {v3, p1, v2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 260
    .line 261
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 262
    .line 263
    goto/16 :goto_0
.end method
