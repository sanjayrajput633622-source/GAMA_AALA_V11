.class public Lcom/alibaba/fastjson2/reader/ObjectReader4;
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


# instance fields
.field protected final fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

.field protected final fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final hashCode0:J

.field final hashCode0LCase:J

.field final hashCode1:J

.field final hashCode1LCase:J

.field final hashCode2:J

.field final hashCode2LCase:J

.field final hashCode3:J

.field final hashCode3LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "J",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/function/Function;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    const/4 p6, 0x1

    aput-object p7, v0, p6

    const/4 p6, 0x2

    aput-object p8, v0, p6

    const/4 p6, 0x3

    aput-object p9, v0, p6

    move-object p8, p5

    move-wide p5, p2

    const/4 p3, 0x0

    move-object p7, p4

    const/4 p4, 0x0

    move-object p2, p1

    move-object p9, v0

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReader4;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

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

    const/4 p1, 0x0

    .line 3
    aget-object p2, p8, p1

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x1

    .line 4
    aget-object v1, p8, p3

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v2, 0x2

    .line 5
    aget-object v2, p8, v2

    iput-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v3, 0x3

    .line 6
    aget-object v3, p8, v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 7
    iget-wide v4, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0:J

    .line 8
    iget-wide v4, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1:J

    .line 9
    iget-wide v4, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2:J

    .line 10
    iget-wide v4, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3:J

    .line 11
    iget-wide v4, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0LCase:J

    .line 12
    iget-wide v4, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1LCase:J

    .line 13
    iget-wide v4, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2LCase:J

    .line 14
    iget-wide v4, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3LCase:J

    .line 15
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-eqz p2, :cond_1

    :cond_0
    move p1, p3

    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2:J

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3:J

    .line 30
    .line 31
    cmp-long p1, p1, v0

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 36
    return-object p1

    .line 37
    :cond_3
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0LCase:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1LCase:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2LCase:J

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3LCase:J

    .line 30
    .line 31
    cmp-long p1, p1, v0

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 36
    return-object p1

    .line 37
    :cond_3
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public initDefaultValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 21
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
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 47
    .line 48
    .line 49
    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    if-lez p1, :cond_2

    .line 53
    .line 54
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v4, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 58
    const/4 p3, 0x1

    .line 59
    .line 60
    if-le p1, p3, :cond_2

    .line 61
    .line 62
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v4, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 66
    const/4 p3, 0x2

    .line 67
    .line 68
    if-le p1, p3, :cond_2

    .line 69
    .line 70
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, v4, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 74
    const/4 p3, 0x3

    .line 75
    .line 76
    if-le p1, p3, :cond_2

    .line 77
    .line 78
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v4, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 82
    const/4 p3, 0x4

    .line 83
    .line 84
    :goto_0
    if-ge p3, p1, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 88
    .line 89
    add-int/lit8 p3, p3, 0x1

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :cond_3
    return-object p2
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 10
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
    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 25
    move-result p3

    .line 26
    .line 27
    if-lez p3, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 33
    const/4 v0, 0x1

    .line 34
    .line 35
    if-le p3, v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x2

    .line 42
    .line 43
    if-le p3, v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x3

    .line 50
    .line 51
    if-le p3, v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 57
    const/4 v0, 0x4

    .line 58
    .line 59
    :goto_0
    if-ge v0, p3, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_2
    return-object p2

    .line 76
    .line 77
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 81
    move-result-wide v3

    .line 82
    .line 83
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 84
    .line 85
    or-long v5, v0, p4

    .line 86
    move-object v1, p1

    .line 87
    .line 88
    .line 89
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-interface {v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 96
    move-result-object v1

    .line 97
    .line 98
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 99
    .line 100
    if-eq v1, v2, :cond_4

    .line 101
    move-object v1, p1

    .line 102
    move-object v2, p2

    .line 103
    move-object v3, p3

    .line 104
    move-wide v4, p4

    .line 105
    .line 106
    .line 107
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    .line 111
    :cond_4
    const/16 p2, -0x5a

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 115
    move-result p2

    .line 116
    .line 117
    if-eqz p2, :cond_14

    .line 118
    .line 119
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 120
    .line 121
    const-wide/16 v2, 0x0

    .line 122
    .line 123
    if-eqz p2, :cond_5

    .line 124
    .line 125
    .line 126
    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 127
    move-result-object p2

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_5
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 131
    .line 132
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 133
    or-long/2addr p2, p4

    .line 134
    .line 135
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 136
    .line 137
    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 138
    and-long/2addr p2, v6

    .line 139
    .line 140
    cmp-long p2, p2, v2

    .line 141
    .line 142
    if-eqz p2, :cond_6

    .line 143
    .line 144
    :try_start_0
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 145
    .line 146
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    move-object p2, v0

    .line 154
    .line 155
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 156
    .line 157
    const-string v0, "create instance error"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    .line 163
    .line 164
    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    throw p3

    .line 166
    :cond_6
    const/4 p2, 0x0

    .line 167
    .line 168
    :goto_1
    if-eqz p2, :cond_7

    .line 169
    .line 170
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 171
    .line 172
    if-eqz p3, :cond_7

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->initDefaultValue(Ljava/lang/Object;)V

    .line 176
    .line 177
    :cond_7
    :goto_2
    const/16 p3, -0x5b

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 181
    move-result p3

    .line 182
    .line 183
    if-eqz p3, :cond_9

    .line 184
    .line 185
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 186
    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    .line 190
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    move-result-object p1

    .line 192
    return-object p1

    .line 193
    :cond_8
    return-object p2

    .line 194
    .line 195
    .line 196
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 197
    move-result-wide v6

    .line 198
    .line 199
    cmp-long p3, v6, v2

    .line 200
    .line 201
    if-nez p3, :cond_a

    .line 202
    goto :goto_2

    .line 203
    .line 204
    :cond_a
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0:J

    .line 205
    .line 206
    cmp-long p3, v6, v8

    .line 207
    .line 208
    if-nez p3, :cond_b

    .line 209
    .line 210
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 214
    goto :goto_2

    .line 215
    .line 216
    :cond_b
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1:J

    .line 217
    .line 218
    cmp-long p3, v6, v8

    .line 219
    .line 220
    if-nez p3, :cond_c

    .line 221
    .line 222
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 226
    goto :goto_2

    .line 227
    .line 228
    :cond_c
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2:J

    .line 229
    .line 230
    cmp-long p3, v6, v8

    .line 231
    .line 232
    if-nez p3, :cond_d

    .line 233
    .line 234
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 238
    goto :goto_2

    .line 239
    .line 240
    :cond_d
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3:J

    .line 241
    .line 242
    cmp-long p3, v6, v8

    .line 243
    .line 244
    if-nez p3, :cond_e

    .line 245
    .line 246
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 250
    goto :goto_2

    .line 251
    .line 252
    :cond_e
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 253
    or-long/2addr v6, p4

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 257
    move-result p3

    .line 258
    .line 259
    if-nez p3, :cond_f

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 263
    goto :goto_2

    .line 264
    .line 265
    .line 266
    :cond_f
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 267
    move-result-wide v6

    .line 268
    .line 269
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0LCase:J

    .line 270
    .line 271
    cmp-long p3, v6, v8

    .line 272
    .line 273
    if-nez p3, :cond_10

    .line 274
    .line 275
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 279
    goto :goto_2

    .line 280
    .line 281
    :cond_10
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1LCase:J

    .line 282
    .line 283
    cmp-long p3, v6, v8

    .line 284
    .line 285
    if-nez p3, :cond_11

    .line 286
    .line 287
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 291
    goto :goto_2

    .line 292
    .line 293
    :cond_11
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2LCase:J

    .line 294
    .line 295
    cmp-long p3, v6, v8

    .line 296
    .line 297
    if-nez p3, :cond_12

    .line 298
    .line 299
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 303
    goto :goto_2

    .line 304
    .line 305
    :cond_12
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3LCase:J

    .line 306
    .line 307
    cmp-long p3, v6, v8

    .line 308
    .line 309
    if-nez p3, :cond_13

    .line 310
    .line 311
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 315
    .line 316
    goto/16 :goto_2

    .line 317
    .line 318
    .line 319
    :cond_13
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 320
    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :cond_14
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 324
    .line 325
    new-instance p3, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    const-string v0, "expect object, but "

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 337
    move-result v0

    .line 338
    .line 339
    .line 340
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 341
    move-result-object v0

    .line 342
    .line 343
    .line 344
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object p3

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    move-result-object p1

    .line 353
    .line 354
    .line 355
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 356
    throw p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
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
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1

    .line 30
    .line 31
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 32
    or-long/2addr v0, p4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 36
    move-result-wide v6

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 40
    move-result v0

    .line 41
    .line 42
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 47
    .line 48
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 49
    and-long/2addr v3, v6

    .line 50
    .line 51
    cmp-long v0, v3, v1

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_3
    move-object v2, p0

    .line 60
    move-object v3, p1

    .line 61
    move-object v4, p2

    .line 62
    move-object v5, p3

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_4
    move-wide v4, v6

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 72
    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 77
    move-result-object v7

    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/reader/ObjectReader4;->initDefaultValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    :cond_5
    if-eqz v7, :cond_6

    .line 87
    .line 88
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 89
    .line 90
    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 91
    and-long/2addr v4, v8

    .line 92
    .line 93
    cmp-long v0, v4, v1

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    .line 99
    :cond_6
    const/4 v0, 0x0

    .line 100
    move v8, v0

    .line 101
    .line 102
    .line 103
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 104
    move-result v0

    .line 105
    .line 106
    if-eqz v0, :cond_7

    .line 107
    goto :goto_1

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 111
    move-result-wide v0

    .line 112
    .line 113
    if-nez v8, :cond_b

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    const-wide v4, 0x6570797440L

    .line 119
    .line 120
    cmp-long v2, v0, v4

    .line 121
    .line 122
    if-nez v2, :cond_b

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 126
    move-result-wide v0

    .line 127
    .line 128
    iget-object v2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    if-nez v0, :cond_9

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    if-nez v0, :cond_9

    .line 147
    :cond_8
    move-wide v4, p4

    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_9
    if-eq v0, p0, :cond_8

    .line 152
    move-object v1, p1

    .line 153
    move-object v2, p2

    .line 154
    move-object v3, p3

    .line 155
    move-wide v4, p4

    .line 156
    .line 157
    .line 158
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 159
    move-result-object v7

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 163
    .line 164
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 165
    .line 166
    if-eqz p1, :cond_a

    .line 167
    .line 168
    .line 169
    invoke-interface {p1, v7}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 171
    return-object p1

    .line 172
    :cond_a
    return-object v7

    .line 173
    :cond_b
    move-wide v4, p4

    .line 174
    .line 175
    iget-wide v9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0:J

    .line 176
    .line 177
    cmp-long v2, v0, v9

    .line 178
    .line 179
    if-nez v2, :cond_c

    .line 180
    .line 181
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_c
    iget-wide v9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1:J

    .line 189
    .line 190
    cmp-long v2, v0, v9

    .line 191
    .line 192
    if-nez v2, :cond_d

    .line 193
    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 198
    goto :goto_2

    .line 199
    .line 200
    :cond_d
    iget-wide v9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2:J

    .line 201
    .line 202
    cmp-long v2, v0, v9

    .line 203
    .line 204
    if-nez v2, :cond_e

    .line 205
    .line 206
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 210
    goto :goto_2

    .line 211
    .line 212
    :cond_e
    iget-wide v9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3:J

    .line 213
    .line 214
    cmp-long v0, v0, v9

    .line 215
    .line 216
    if-nez v0, :cond_f

    .line 217
    .line 218
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 222
    goto :goto_2

    .line 223
    .line 224
    :cond_f
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 225
    or-long/2addr v0, v4

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 229
    move-result v0

    .line 230
    .line 231
    if-nez v0, :cond_10

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, p1, v7, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 235
    goto :goto_2

    .line 236
    .line 237
    .line 238
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 239
    move-result-wide v0

    .line 240
    .line 241
    iget-wide v9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode0LCase:J

    .line 242
    .line 243
    cmp-long v2, v0, v9

    .line 244
    .line 245
    if-nez v2, :cond_11

    .line 246
    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 251
    goto :goto_2

    .line 252
    .line 253
    :cond_11
    iget-wide v9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode1LCase:J

    .line 254
    .line 255
    cmp-long v2, v0, v9

    .line 256
    .line 257
    if-nez v2, :cond_12

    .line 258
    .line 259
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 263
    goto :goto_2

    .line 264
    .line 265
    :cond_12
    iget-wide v9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode2LCase:J

    .line 266
    .line 267
    cmp-long v2, v0, v9

    .line 268
    .line 269
    if-nez v2, :cond_13

    .line 270
    .line 271
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 275
    goto :goto_2

    .line 276
    .line 277
    :cond_13
    iget-wide v9, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->hashCode3LCase:J

    .line 278
    .line 279
    cmp-long v0, v0, v9

    .line 280
    .line 281
    if-nez v0, :cond_14

    .line 282
    .line 283
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader4;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 287
    goto :goto_2

    .line 288
    .line 289
    .line 290
    :cond_14
    invoke-virtual {p0, p1, v7, v4, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 291
    .line 292
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 293
    .line 294
    goto/16 :goto_0
.end method
