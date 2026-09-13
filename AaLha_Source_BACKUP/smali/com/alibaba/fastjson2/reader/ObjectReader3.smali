.class public Lcom/alibaba/fastjson2/reader/ObjectReader3;
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

.field final hashCode0:J

.field final hashCode0LCase:J

.field final hashCode1:J

.field final hashCode1LCase:J

.field final hashCode2:J

.field final hashCode2LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
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

    .line 1
    const/4 v9, 0x0

    .line 2
    const/4 v10, 0x0

    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    .line 9
    move-wide/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v11, p8

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    aget-object p2, p8, p1

    .line 22
    .line 23
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 24
    const/4 p3, 0x1

    .line 25
    .line 26
    aget-object v1, p8, p3

    .line 27
    .line 28
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 29
    const/4 v2, 0x2

    .line 30
    .line 31
    aget-object v2, p8, v2

    .line 32
    .line 33
    iput-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 34
    .line 35
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 36
    .line 37
    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    .line 38
    .line 39
    iget-wide v3, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 40
    .line 41
    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    .line 42
    .line 43
    iget-wide v3, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 44
    .line 45
    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    .line 46
    .line 47
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 48
    .line 49
    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0LCase:J

    .line 50
    .line 51
    iget-wide v3, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 52
    .line 53
    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1LCase:J

    .line 54
    .line 55
    iget-wide v3, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 56
    .line 57
    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2LCase:J

    .line 58
    .line 59
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 60
    .line 61
    if-nez p2, :cond_0

    .line 62
    .line 63
    iget-object p2, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 64
    .line 65
    if-nez p2, :cond_0

    .line 66
    .line 67
    iget-object p2, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 68
    .line 69
    if-eqz p2, :cond_1

    .line 70
    :cond_0
    move p1, p3

    .line 71
    .line 72
    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 73
    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    .line 21
    .line 22
    cmp-long p1, p1, v0

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0LCase:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1LCase:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2LCase:J

    .line 21
    .line 22
    cmp-long p1, p1, v0

    .line 23
    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 16
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
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 50
    move-result p2

    .line 51
    const/4 p3, 0x3

    .line 52
    .line 53
    if-lez p2, :cond_2

    .line 54
    .line 55
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p4, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 59
    const/4 p4, 0x1

    .line 60
    .line 61
    if-le p2, p4, :cond_2

    .line 62
    .line 63
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p4, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 67
    const/4 p4, 0x2

    .line 68
    .line 69
    if-le p2, p4, :cond_2

    .line 70
    .line 71
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 75
    move p4, p3

    .line 76
    .line 77
    :goto_0
    if-ge p4, p2, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 81
    .line 82
    add-int/lit8 p4, p4, 0x1

    .line 83
    goto :goto_0

    .line 84
    .line 85
    :cond_2
    :goto_1
    if-ge p3, p2, :cond_3

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 89
    .line 90
    add-int/lit8 p3, p3, 0x1

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 94
    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    :cond_4
    return-object p1
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 49
    const/4 v0, 0x3

    .line 50
    .line 51
    :goto_0
    if-ge v0, p3, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_2
    return-object p2

    .line 68
    .line 69
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 73
    move-result-wide v3

    .line 74
    .line 75
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 76
    .line 77
    or-long v5, v0, p4

    .line 78
    move-object v1, p1

    .line 79
    .line 80
    .line 81
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-interface {v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 91
    .line 92
    if-eq v1, v2, :cond_4

    .line 93
    move-object v1, p1

    .line 94
    move-object v2, p2

    .line 95
    move-object v3, p3

    .line 96
    move-wide v4, p4

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
    :cond_4
    const/16 p2, -0x5a

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 107
    move-result p2

    .line 108
    .line 109
    if-eqz p2, :cond_12

    .line 110
    .line 111
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 112
    .line 113
    const-wide/16 v2, 0x0

    .line 114
    .line 115
    if-eqz p2, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 119
    move-result-object p2

    .line 120
    goto :goto_1

    .line 121
    .line 122
    :cond_5
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 123
    .line 124
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 125
    or-long/2addr p2, p4

    .line 126
    .line 127
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 128
    .line 129
    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 130
    and-long/2addr p2, v6

    .line 131
    .line 132
    cmp-long p2, p2, v2

    .line 133
    .line 134
    if-eqz p2, :cond_6

    .line 135
    .line 136
    :try_start_0
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 137
    .line 138
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    move-object p2, v0

    .line 146
    .line 147
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 148
    .line 149
    const-string v0, "create instance error"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    .line 155
    .line 156
    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    throw p3

    .line 158
    :cond_6
    const/4 p2, 0x0

    .line 159
    .line 160
    :goto_1
    if-eqz p2, :cond_7

    .line 161
    .line 162
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 163
    .line 164
    if-eqz p3, :cond_7

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->initDefaultValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    :cond_7
    :goto_2
    const/16 p3, -0x5b

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 173
    move-result p3

    .line 174
    .line 175
    if-eqz p3, :cond_9

    .line 176
    .line 177
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 178
    .line 179
    if-eqz p1, :cond_8

    .line 180
    .line 181
    .line 182
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-result-object p1

    .line 184
    return-object p1

    .line 185
    :cond_8
    return-object p2

    .line 186
    .line 187
    .line 188
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 189
    move-result-wide v6

    .line 190
    .line 191
    cmp-long p3, v6, v2

    .line 192
    .line 193
    if-nez p3, :cond_a

    .line 194
    goto :goto_2

    .line 195
    .line 196
    :cond_a
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    .line 197
    .line 198
    cmp-long p3, v6, v8

    .line 199
    .line 200
    if-nez p3, :cond_b

    .line 201
    .line 202
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 206
    goto :goto_2

    .line 207
    .line 208
    :cond_b
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    .line 209
    .line 210
    cmp-long p3, v6, v8

    .line 211
    .line 212
    if-nez p3, :cond_c

    .line 213
    .line 214
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 218
    goto :goto_2

    .line 219
    .line 220
    :cond_c
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    .line 221
    .line 222
    cmp-long p3, v6, v8

    .line 223
    .line 224
    if-nez p3, :cond_d

    .line 225
    .line 226
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 230
    goto :goto_2

    .line 231
    .line 232
    :cond_d
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 233
    or-long/2addr v6, p4

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 237
    move-result p3

    .line 238
    .line 239
    if-nez p3, :cond_e

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 243
    goto :goto_2

    .line 244
    .line 245
    .line 246
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 247
    move-result-wide v6

    .line 248
    .line 249
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    .line 250
    .line 251
    cmp-long p3, v6, v8

    .line 252
    .line 253
    if-nez p3, :cond_f

    .line 254
    .line 255
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 259
    goto :goto_2

    .line 260
    .line 261
    :cond_f
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    .line 262
    .line 263
    cmp-long p3, v6, v8

    .line 264
    .line 265
    if-nez p3, :cond_10

    .line 266
    .line 267
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 271
    goto :goto_2

    .line 272
    .line 273
    :cond_10
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    .line 274
    .line 275
    cmp-long p3, v6, v8

    .line 276
    .line 277
    if-nez p3, :cond_11

    .line 278
    .line 279
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 280
    .line 281
    .line 282
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 283
    goto :goto_2

    .line 284
    .line 285
    .line 286
    :cond_11
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 287
    goto :goto_2

    .line 288
    .line 289
    :cond_12
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 290
    .line 291
    new-instance p3, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    const-string v0, "expect object, but "

    .line 297
    .line 298
    .line 299
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 303
    move-result v0

    .line 304
    .line 305
    .line 306
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 307
    move-result-object v0

    .line 308
    .line 309
    .line 310
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    move-result-object p3

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    move-result-object p1

    .line 319
    .line 320
    .line 321
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 322
    throw p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
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
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    move-object v1, p0

    .line 19
    return-object p1

    .line 20
    :cond_1
    move-object v1, p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 30
    const/4 p1, 0x0

    .line 31
    return-object p1

    .line 32
    .line 33
    :cond_2
    iget-wide v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 34
    or-long/2addr v2, p4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    .line 38
    move-result-wide v5

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 42
    move-result v0

    .line 43
    .line 44
    const-wide/16 v7, 0x0

    .line 45
    .line 46
    if-eqz v0, :cond_7

    .line 47
    .line 48
    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 49
    .line 50
    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 51
    and-long/2addr p4, v5

    .line 52
    .line 53
    cmp-long p4, p4, v7

    .line 54
    .line 55
    if-eqz p4, :cond_6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 59
    .line 60
    iget-object p2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 61
    .line 62
    .line 63
    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    iget-boolean p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 67
    .line 68
    if-eqz p3, :cond_3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->initDefaultValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    :cond_3
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 77
    .line 78
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 82
    .line 83
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 90
    move-result p3

    .line 91
    .line 92
    if-eqz p3, :cond_5

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 96
    .line 97
    iget-object p1, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 98
    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_4
    return-object p2

    .line 106
    .line 107
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 108
    .line 109
    const-string p3, "array to bean end error"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 117
    throw p2

    .line 118
    :cond_6
    move-object v2, p1

    .line 119
    move-object v3, p2

    .line 120
    move-object v4, p3

    .line 121
    .line 122
    .line 123
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 124
    move-result-object p1

    .line 125
    move-object p2, v1

    .line 126
    return-object p1

    .line 127
    :cond_7
    move-object v2, p2

    .line 128
    move-object p2, v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 132
    .line 133
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 134
    .line 135
    .line 136
    invoke-interface {v0}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 137
    move-result-object v9

    .line 138
    .line 139
    iget-boolean v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 140
    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/reader/ObjectReader3;->initDefaultValue(Ljava/lang/Object;)V

    .line 145
    .line 146
    :cond_8
    if-eqz v9, :cond_9

    .line 147
    .line 148
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 149
    .line 150
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 151
    and-long/2addr v0, v5

    .line 152
    .line 153
    cmp-long v0, v0, v7

    .line 154
    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    .line 159
    :cond_9
    const/4 v0, 0x0

    .line 160
    move v6, v0

    .line 161
    .line 162
    .line 163
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 164
    move-result v0

    .line 165
    .line 166
    if-eqz v0, :cond_a

    .line 167
    goto :goto_1

    .line 168
    .line 169
    .line 170
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 171
    move-result-wide v0

    .line 172
    .line 173
    cmp-long v3, v0, v7

    .line 174
    .line 175
    if-nez v3, :cond_b

    .line 176
    .line 177
    goto/16 :goto_2

    .line 178
    .line 179
    :cond_b
    if-nez v6, :cond_e

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    const-wide v3, 0x6570797440L

    .line 185
    .line 186
    cmp-long v3, v0, v3

    .line 187
    .line 188
    if-nez v3, :cond_e

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 192
    move-result-wide v0

    .line 193
    .line 194
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 198
    move-result-object v0

    .line 199
    .line 200
    if-nez v0, :cond_c

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    iget-object v1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    if-nez v0, :cond_c

    .line 213
    .line 214
    goto/16 :goto_2

    .line 215
    .line 216
    :cond_c
    if-eq v0, p2, :cond_16

    .line 217
    move-object v1, p1

    .line 218
    move-object v3, p3

    .line 219
    move-wide v4, p4

    .line 220
    .line 221
    .line 222
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 223
    move-result-object v9

    .line 224
    .line 225
    .line 226
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 227
    .line 228
    iget-object p1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 229
    .line 230
    if-eqz p1, :cond_d

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v9}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    move-result-object p1

    .line 235
    return-object p1

    .line 236
    :cond_d
    return-object v9

    .line 237
    .line 238
    :cond_e
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0:J

    .line 239
    .line 240
    cmp-long v3, v0, v3

    .line 241
    .line 242
    if-nez v3, :cond_f

    .line 243
    .line 244
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, p1, v9}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 248
    goto :goto_2

    .line 249
    .line 250
    :cond_f
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1:J

    .line 251
    .line 252
    cmp-long v3, v0, v3

    .line 253
    .line 254
    if-nez v3, :cond_10

    .line 255
    .line 256
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, p1, v9}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 260
    goto :goto_2

    .line 261
    .line 262
    :cond_10
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2:J

    .line 263
    .line 264
    cmp-long v0, v0, v3

    .line 265
    .line 266
    if-nez v0, :cond_11

    .line 267
    .line 268
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p1, v9}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 272
    goto :goto_2

    .line 273
    .line 274
    :cond_11
    iget-wide v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 275
    or-long/2addr v0, p4

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 279
    move-result v0

    .line 280
    .line 281
    if-nez v0, :cond_12

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, p1, v9, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 285
    goto :goto_2

    .line 286
    .line 287
    .line 288
    :cond_12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 289
    move-result-wide v0

    .line 290
    .line 291
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode0LCase:J

    .line 292
    .line 293
    cmp-long v3, v0, v3

    .line 294
    .line 295
    if-nez v3, :cond_13

    .line 296
    .line 297
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, p1, v9}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 301
    goto :goto_2

    .line 302
    .line 303
    :cond_13
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode1LCase:J

    .line 304
    .line 305
    cmp-long v3, v0, v3

    .line 306
    .line 307
    if-nez v3, :cond_14

    .line 308
    .line 309
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, p1, v9}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 313
    goto :goto_2

    .line 314
    .line 315
    :cond_14
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->hashCode2LCase:J

    .line 316
    .line 317
    cmp-long v0, v0, v3

    .line 318
    .line 319
    if-nez v0, :cond_15

    .line 320
    .line 321
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader3;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, p1, v9}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 325
    goto :goto_2

    .line 326
    .line 327
    .line 328
    :cond_15
    invoke-virtual {p0, p1, v9, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 329
    .line 330
    :cond_16
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 331
    .line 332
    goto/16 :goto_0
.end method
