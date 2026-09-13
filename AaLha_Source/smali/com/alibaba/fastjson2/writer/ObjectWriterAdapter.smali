.class public Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final TYPE:Ljava/lang/String; = "@type"


# instance fields
.field final containsNoneFieldGetter:Z

.field final features:J

.field protected final fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

.field final fieldWriters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;"
        }
    .end annotation
.end field

.field final googleCollection:Z

.field hasFilter:Z

.field final hasValueField:Z

.field final hashCodes:[J

.field final mapping:[S

.field nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

.field nameWithColonUTF16:[C

.field nameWithColonUTF8:[B

.field final objectClass:Ljava/lang/Class;

.field propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

.field propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

.field final serializable:Z

.field final typeKey:Ljava/lang/String;

.field typeKeyJSONB:[B

.field private typeName:Ljava/lang/String;

.field protected typeNameHash:J

.field protected typeNameJSONB:[B

.field protected typeNameSymbolCache:J

.field valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p2, "@type"

    :cond_1
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    .line 6
    iput-wide p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 7
    iput-object p6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    .line 8
    const-class p5, Ljava/io/Serializable;

    invoke-virtual {p5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, p4

    goto :goto_1

    :cond_3
    :goto_0
    move p1, p2

    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->serializable:Z

    .line 9
    const-string p1, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    .line 10
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    .line 11
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, p4

    goto :goto_3

    :cond_5
    :goto_2
    move p1, p2

    :goto_3
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->googleCollection:Z

    .line 12
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 13
    invoke-interface {p6, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    array-length p3, p1

    const-wide/16 p5, 0x0

    if-ne p3, p2, :cond_6

    aget-object p3, p1, p4

    iget-wide v0, p3, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr v0, v2

    cmp-long p3, v0, p5

    if-eqz p3, :cond_6

    move p3, p2

    goto :goto_4

    :cond_6
    move p3, p4

    :goto_4
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasValueField:Z

    .line 15
    array-length p1, p1

    new-array p3, p1, [J

    move v0, p4

    move v1, v0

    .line 16
    :goto_5
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 17
    aget-object v2, v2, v0

    .line 18
    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v3

    .line 19
    aput-wide v3, p3, v0

    .line 20
    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_7

    iget-wide v2, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v4, 0x10000000000000L

    and-long/2addr v2, v4

    cmp-long v2, v2, p5

    if-nez v2, :cond_7

    move v1, p2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 21
    :cond_8
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->containsNoneFieldGetter:Z

    .line 22
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hashCodes:[J

    .line 23
    invoke-static {p2}, Ljava/util/Arrays;->sort([J)V

    .line 24
    array-length p2, p2

    new-array p2, p2, [S

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->mapping:[S

    :goto_6
    if-ge p4, p1, :cond_9

    .line 25
    aget-wide p5, p3, p4

    .line 26
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hashCodes:[J

    invoke-static {p2, p5, p6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p2

    .line 27
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->mapping:[S

    int-to-short p6, p4

    aput-short p6, p5, p2

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method

.method private writeClassInfoSymbol(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameSymbolCache:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v3, v1, v3

    .line 11
    .line 12
    const/16 v4, 0x20

    .line 13
    const/4 v5, -0x1

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeNameHash()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 23
    move-result p2

    .line 24
    .line 25
    if-eq p2, v5, :cond_2

    .line 26
    int-to-long v1, p2

    .line 27
    shl-long/2addr v1, v4

    .line 28
    int-to-long v3, v0

    .line 29
    or-long/2addr v1, v3

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameSymbolCache:J

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    long-to-int v3, v1

    .line 34
    .line 35
    if-ne v3, v0, :cond_1

    .line 36
    .line 37
    shr-long v0, v1, v4

    .line 38
    long-to-int p2, v0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeNameHash()J

    .line 43
    move-result-wide v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson2/SymbolTable;->getOrdinalByHashCode(J)I

    .line 47
    move-result p2

    .line 48
    .line 49
    if-eq p2, v5, :cond_2

    .line 50
    int-to-long v1, p2

    .line 51
    shl-long/2addr v1, v4

    .line 52
    int-to-long v3, v0

    .line 53
    or-long/2addr v1, v3

    .line 54
    .line 55
    iput-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameSymbolCache:J

    .line 56
    .line 57
    :cond_2
    :goto_0
    if-eq p2, v5, :cond_3

    .line 58
    .line 59
    const/16 v0, -0x6e

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(B)V

    .line 63
    neg-int p2, p2

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 67
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    :cond_3
    const/4 p1, 0x0

    .line 70
    return p1
.end method


# virtual methods
.method public errorOnNoneSerializable()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "not support none serializable class "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method

.method public getFeatures()J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 3
    return-wide v0
.end method

.method public synthetic getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->b(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hashCodes:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->mapping:[S

    aget-short p1, p2, p1

    .line 4
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public synthetic getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->d(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public getFieldWriters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-class v1, Ljava/lang/Enum;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    .line 46
    .line 47
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeName:Ljava/lang/String;

    .line 48
    return-object v0
.end method

.method public getTypeNameHash()J
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeName()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    .line 21
    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameHash:J

    .line 23
    return-wide v0
.end method

.method public getTypeNameJSONB()[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    .line 19
    return-object v0
.end method

.method public final hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->containsNoneFieldGetter:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->hasFilter(Z)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public synthetic setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->g(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/Filter;)V

    return-void
.end method

.method public setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    .line 8
    :cond_0
    return-void
.end method

.method public setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    .line 8
    :cond_0
    return-void
.end method

.method public setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    .line 8
    :cond_0
    return-void
.end method

.method public setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter:Z

    .line 8
    :cond_0
    return-void
.end method

.method public toJSONObject(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/alibaba/fastjson2/JSONObject;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->toJSONObject(Ljava/lang/Object;J)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public toJSONObject(Ljava/lang/Object;J)Lcom/alibaba/fastjson2/JSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)",
            "Lcom/alibaba/fastjson2/JSONObject;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 4
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    iget-object v4, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 6
    iget-wide v5, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v7, 0x2000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    .line 7
    instance-of v4, v3, Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getInitWriter()Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    if-nez v4, :cond_2

    .line 10
    sget-object v4, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v2, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    .line 11
    :cond_2
    invoke-interface {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 13
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 14
    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 16
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v4, v6, :cond_6

    const-string v4, "com.alibaba.fastjson.JSONObject"

    .line 18
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 19
    check-cast v3, Ljava/util/Collection;

    .line 20
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 21
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_4

    move-object v5, v0

    goto :goto_3

    .line 22
    :cond_4
    invoke-static {v5}, Lcom/alibaba/fastjson2/a;->r1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    :goto_3
    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v3, v4

    :cond_6
    if-nez v3, :cond_7

    .line 24
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    or-long/2addr v4, p2

    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v9

    cmp-long v4, v4, v7

    if-nez v4, :cond_7

    goto/16 :goto_0

    :cond_7
    if-ne v3, p1, :cond_8

    move-object v3, v0

    .line 25
    :cond_8
    instance-of v4, v3, Ljava/lang/Enum;

    if-eqz v4, :cond_9

    .line 26
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, p2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_9

    .line 27
    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 28
    :cond_9
    instance-of v4, v2, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    if-eqz v4, :cond_c

    if-eqz v3, :cond_c

    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_c

    .line 29
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getInitWriter()Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    if-nez v4, :cond_a

    .line 30
    iget-object v4, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    or-long/2addr v5, p2

    invoke-static {v4, v5, v6}, Lcom/alibaba/fastjson2/JSONFactory;->getObjectWriter(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    .line 31
    :cond_a
    instance-of v5, v4, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz v5, :cond_c

    .line 32
    check-cast v4, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 33
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getFieldWriters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 34
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->toJSONObject(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v3

    goto :goto_4

    .line 35
    :cond_b
    invoke-static {v3}, Lcom/alibaba/fastjson2/a;->r1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 36
    :cond_c
    :goto_4
    iget-object v2, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    return-object v0
.end method

.method public varargs synthetic toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->l(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONObject;-><init>(I)V

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    move-result v2

    .line 19
    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 29
    .line 30
    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public synthetic write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->m(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasValueField:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    aget-object p3, p3, v1

    .line 4
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    or-long v2, p5, v2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 6
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7
    :goto_0
    iget-boolean v4, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 9
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 10
    :cond_3
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->googleCollection:Z

    if-eqz v4, :cond_4

    .line 11
    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    .line 12
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_4
    move-wide/from16 v8, p5

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 14
    :cond_5
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->serializable:Z

    if-nez v0, :cond_7

    .line 15
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v10, v2

    cmp-long v0, v10, v6

    if-eqz v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->errorOnNoneSerializable()V

    return-void

    .line 17
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v10

    cmp-long v0, v2, v6

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 19
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 20
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 21
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 22
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    or-long/2addr v2, v8

    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v10

    cmp-long p3, v2, v6

    if-nez p3, :cond_9

    invoke-virtual {p1, p2, v8, v9}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 24
    :cond_a
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    :goto_1
    if-ge v1, p3, :cond_b

    .line 25
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public synthetic writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/a;->n(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public synthetic writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->o(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 5
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    .line 6
    iget-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 7
    invoke-virtual {p5, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfoSymbol(Lcom/alibaba/fastjson2/JSONWriter;Lcom/alibaba/fastjson2/SymbolTable;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeNameJSONB()[B

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeNameHash()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 23
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    .line 3
    or-long/2addr v0, p5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 7
    move-result-wide v2

    .line 8
    or-long/2addr v0, v2

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->serializable:Z

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 17
    .line 18
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 19
    and-long/2addr v5, v0

    .line 20
    .line 21
    cmp-long v2, v5, v3

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->errorOnNoneSerializable()V

    .line 27
    return-void

    .line 28
    .line 29
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 30
    .line 31
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 32
    and-long/2addr v5, v0

    .line 33
    .line 34
    cmp-long v2, v5, v3

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 40
    return-void

    .line 41
    .line 42
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 43
    .line 44
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 45
    and-long/2addr v0, v5

    .line 46
    .line 47
    cmp-long v0, v0, v3

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 53
    move-object p1, p0

    .line 54
    return-void

    .line 55
    :cond_2
    move-object p3, p2

    .line 56
    move-object p2, p1

    .line 57
    move-object p1, p0

    .line 58
    .line 59
    iget-object v0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriterArray:[Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 60
    array-length v0, v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    .line 64
    move-result p4

    .line 65
    .line 66
    if-eqz p4, :cond_3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 73
    const/4 p4, 0x0

    .line 74
    .line 75
    :goto_0
    if-ge p4, v0, :cond_4

    .line 76
    .line 77
    iget-object p5, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    .line 78
    .line 79
    .line 80
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    move-result-object p5

    .line 82
    .line 83
    check-cast p5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p5, p2, p3}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 87
    .line 88
    add-int/lit8 p4, p4, 0x1

    .line 89
    goto :goto_0

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 93
    return-void
.end method

.method public writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->getTypeName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    .line 7
    .line 8
    const/16 v2, 0x3a

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    .line 12
    const/16 v5, 0x22

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF8:[B

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 28
    move-result v6

    .line 29
    .line 30
    add-int v7, v1, v6

    .line 31
    .line 32
    add-int/lit8 v8, v7, 0x5

    .line 33
    .line 34
    new-array v8, v8, [B

    .line 35
    .line 36
    aput-byte v5, v8, v3

    .line 37
    .line 38
    iget-object v9, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v9, v3, v1, v8, v4}, Ljava/lang/String;->getBytes(II[BI)V

    .line 42
    .line 43
    add-int/lit8 v9, v1, 0x1

    .line 44
    .line 45
    aput-byte v5, v8, v9

    .line 46
    .line 47
    add-int/lit8 v9, v1, 0x2

    .line 48
    .line 49
    aput-byte v2, v8, v9

    .line 50
    .line 51
    add-int/lit8 v2, v1, 0x3

    .line 52
    .line 53
    aput-byte v5, v8, v2

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x4

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v3, v6, v8, v1}, Ljava/lang/String;->getBytes(II[BI)V

    .line 59
    .line 60
    add-int/lit8 v7, v7, 0x4

    .line 61
    .line 62
    aput-byte v5, v8, v7

    .line 63
    .line 64
    iput-object v8, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF8:[B

    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF8:[B

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    .line 70
    return v4

    .line 71
    .line 72
    :cond_1
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    .line 73
    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF16:[C

    .line 77
    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 84
    move-result v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 88
    move-result v6

    .line 89
    .line 90
    add-int v7, v1, v6

    .line 91
    .line 92
    add-int/lit8 v8, v7, 0x5

    .line 93
    .line 94
    new-array v8, v8, [C

    .line 95
    .line 96
    aput-char v5, v8, v3

    .line 97
    .line 98
    iget-object v9, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v3, v1, v8, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 102
    .line 103
    add-int/lit8 v9, v1, 0x1

    .line 104
    .line 105
    aput-char v5, v8, v9

    .line 106
    .line 107
    add-int/lit8 v9, v1, 0x2

    .line 108
    .line 109
    aput-char v2, v8, v9

    .line 110
    .line 111
    add-int/lit8 v2, v1, 0x3

    .line 112
    .line 113
    aput-char v5, v8, v2

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x4

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v3, v6, v8, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 119
    .line 120
    add-int/lit8 v7, v7, 0x4

    .line 121
    .line 122
    aput-char v5, v8, v7

    .line 123
    .line 124
    iput-object v8, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF16:[C

    .line 125
    .line 126
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameWithColonUTF16:[C

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    .line 130
    return v4

    .line 131
    .line 132
    :cond_3
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 133
    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKeyJSONB:[B

    .line 137
    .line 138
    if-nez v0, :cond_4

    .line 139
    .line 140
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 144
    move-result-object v0

    .line 145
    .line 146
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKeyJSONB:[B

    .line 147
    .line 148
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKeyJSONB:[B

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    .line 152
    .line 153
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeNameJSONB:[B

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    .line 157
    return v4

    .line 158
    .line 159
    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->typeKey:Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 169
    return v4
.end method

.method public synthetic writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->s(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    if-nez v9, :cond_0

    .line 2
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 3
    :cond_0
    iget-wide v4, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->features:J

    or-long v4, v4, p5

    move-object/from16 v6, p4

    invoke-virtual {v3, v9, v6, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-boolean v0, v3, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeClassInfo(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 6
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 8
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 10
    :goto_0
    iget-object v10, v3, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 11
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v4

    or-long v4, v4, p5

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v7

    const-wide/16 v11, 0x0

    cmp-long v0, v4, v11

    if-eqz v0, :cond_3

    const/4 v15, 0x1

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 12
    :goto_1
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getBeforeFilter()Lcom/alibaba/fastjson2/filter/BeforeFilter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, v3, v9}, Lcom/alibaba/fastjson2/filter/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 14
    :cond_4
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyPreFilter()Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    move-result-object v0

    if-nez v0, :cond_5

    .line 15
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    :cond_5
    move-object v2, v0

    .line 16
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getNameFilter()Lcom/alibaba/fastjson2/filter/NameFilter;

    move-result-object v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    :cond_6
    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 18
    :cond_7
    iget-object v4, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz v4, :cond_6

    .line 19
    invoke-static {v4, v0}, Lcom/alibaba/fastjson2/filter/f;->a(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)Lcom/alibaba/fastjson2/filter/NameFilter;

    move-result-object v0

    goto :goto_2

    .line 20
    :goto_3
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getContextNameFilter()Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    move-result-object v5

    .line 21
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getValueFilter()Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v0

    if-nez v0, :cond_9

    .line 22
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    :cond_8
    :goto_4
    move-object v7, v0

    goto :goto_5

    .line 23
    :cond_9
    iget-object v7, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz v7, :cond_8

    .line 24
    invoke-static {v7, v0}, Lcom/alibaba/fastjson2/filter/m;->a(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;)Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v0

    goto :goto_4

    .line 25
    :goto_5
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getContextValueFilter()Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    move-result-object v8

    .line 26
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyFilter()Lcom/alibaba/fastjson2/filter/PropertyFilter;

    move-result-object v0

    if-nez v0, :cond_a

    .line 27
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    :cond_a
    move-wide/from16 v16, v11

    move-object v11, v0

    .line 28
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getLabelFilter()Lcom/alibaba/fastjson2/filter/LabelFilter;

    move-result-object v12

    .line 29
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v13, :cond_1f

    .line 30
    iget-object v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 31
    iget-object v6, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->field:Ljava/lang/reflect/Field;

    move-object/from16 v21, v6

    if-eqz v15, :cond_b

    .line 32
    iget-object v6, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    move/from16 v29, v13

    move/from16 v30, v14

    if-eqz v6, :cond_c

    iget-wide v13, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v18, 0x10000000000000L

    and-long v13, v13, v18

    cmp-long v6, v13, v16

    if-nez v6, :cond_c

    :goto_7
    move-object/from16 v31, v2

    :goto_8
    move-object v1, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    goto/16 :goto_11

    :cond_b
    move/from16 v29, v13

    move/from16 v30, v14

    .line 33
    :cond_c
    iget-object v6, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 34
    invoke-interface {v2, v3, v9, v6}, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;->process(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v12, :cond_e

    .line 35
    iget-object v13, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    if-eqz v13, :cond_e

    .line 36
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_e

    .line 37
    invoke-interface {v12, v13}, Lcom/alibaba/fastjson2/filter/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    goto :goto_7

    :cond_e
    if-nez v4, :cond_f

    if-nez v11, :cond_f

    if-nez v7, :cond_f

    if-nez v8, :cond_f

    if-nez v5, :cond_f

    .line 38
    invoke-virtual {v0, v3, v9}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    goto :goto_7

    .line 39
    :cond_f
    :try_start_0
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_10

    .line 40
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_7

    :cond_10
    if-eqz v4, :cond_11

    .line 41
    invoke-interface {v4, v9, v6, v13}, Lcom/alibaba/fastjson2/filter/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_9

    :cond_11
    move-object v14, v6

    :goto_9
    if-eqz v5, :cond_12

    .line 42
    new-instance v18, Lcom/alibaba/fastjson2/filter/BeanContext;

    move-object/from16 v31, v2

    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    move-object/from16 v24, v2

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v25, v2

    iget-wide v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    move-wide/from16 v26, v2

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    move-object/from16 v28, v2

    invoke-direct/range {v18 .. v28}, Lcom/alibaba/fastjson2/filter/BeanContext;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V

    move-object/from16 v2, v18

    .line 43
    invoke-interface {v5, v2, v9, v14, v13}, Lcom/alibaba/fastjson2/filter/ContextNameFilter;->process(Lcom/alibaba/fastjson2/filter/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_a

    :cond_12
    move-object/from16 v31, v2

    const/16 v18, 0x0

    :goto_a
    if-eqz v11, :cond_13

    .line 44
    invoke-interface {v11, v9, v6, v13}, Lcom/alibaba/fastjson2/filter/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v3, p1

    goto/16 :goto_8

    :cond_13
    if-eqz v14, :cond_14

    if-eq v14, v6, :cond_14

    const/4 v2, 0x1

    goto :goto_b

    :cond_14
    const/4 v2, 0x0

    :goto_b
    if-eqz v7, :cond_15

    .line 45
    invoke-interface {v7, v9, v6, v13}, Lcom/alibaba/fastjson2/filter/ValueFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_c

    :cond_15
    move-object v3, v13

    :goto_c
    if-eqz v8, :cond_18

    if-nez v18, :cond_17

    if-nez v21, :cond_16

    .line 46
    iget-object v6, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_16

    .line 47
    iget-object v6, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    move/from16 v19, v2

    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    move-object/from16 v35, v6

    goto :goto_d

    :cond_16
    move/from16 v19, v2

    move-object/from16 v35, v21

    .line 48
    :goto_d
    new-instance v32, Lcom/alibaba/fastjson2/filter/BeanContext;

    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->objectClass:Ljava/lang/Class;

    iget-object v6, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->label:Ljava/lang/String;

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v39, v1

    move-object/from16 v33, v2

    iget-wide v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    move-wide/from16 v40, v1

    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    move-object/from16 v42, v1

    move-object/from16 v34, v6

    invoke-direct/range {v32 .. v42}, Lcom/alibaba/fastjson2/filter/BeanContext;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V

    move-object/from16 v1, v32

    goto :goto_e

    :cond_17
    move/from16 v19, v2

    move-object/from16 v1, v18

    .line 49
    :goto_e
    invoke-interface {v8, v1, v9, v14, v3}, Lcom/alibaba/fastjson2/filter/ContextValueFilter;->process(Lcom/alibaba/fastjson2/filter/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_f

    :cond_18
    move/from16 v19, v2

    :goto_f
    if-eq v3, v13, :cond_1b

    if-eqz v19, :cond_19

    move-object/from16 v1, p1

    .line 50
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    goto :goto_10

    :cond_19
    move-object/from16 v1, p1

    .line 52
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    :goto_10
    if-nez v3, :cond_1a

    .line 53
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    move-object v3, v1

    goto/16 :goto_8

    .line 54
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    move-object v6, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v6

    move-object/from16 v6, p4

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v5, p3

    move-wide/from16 v7, p5

    .line 55
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_11

    :cond_1b
    move-object/from16 v3, p1

    move-object v1, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    if-nez v19, :cond_1c

    .line 56
    invoke-virtual {v0, v3, v9}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    goto :goto_11

    .line 57
    :cond_1c
    invoke-virtual {v3, v14}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    if-nez v13, :cond_1d

    .line 59
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 60
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_11

    .line 61
    :cond_1d
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-object v4, v13

    .line 62
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_11

    :catchall_0
    move-exception v0

    move-object/from16 v31, v2

    move-object v1, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .line 63
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    move-result-wide v4

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v2, v4, v16

    if-eqz v2, :cond_1e

    :goto_11
    add-int/lit8 v14, v30, 0x1

    move-object/from16 v6, p4

    move-object v4, v1

    move-object/from16 v5, v18

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move/from16 v13, v29

    move-object/from16 v2, v31

    move-object/from16 v1, p0

    goto/16 :goto_6

    .line 64
    :cond_1e
    throw v0

    .line 65
    :cond_1f
    invoke-virtual {v10}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getAfterFilter()Lcom/alibaba/fastjson2/filter/AfterFilter;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 66
    invoke-virtual {v0, v3, v9}, Lcom/alibaba/fastjson2/filter/AfterFilter;->writeAfter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 67
    :cond_20
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method
