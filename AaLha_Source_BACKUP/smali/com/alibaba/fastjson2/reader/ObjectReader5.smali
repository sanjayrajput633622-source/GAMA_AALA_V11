.class public Lcom/alibaba/fastjson2/reader/ObjectReader5;
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

.field protected final fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final hashCode0:J

.field final hashCode0LCase:J

.field final hashCode1:J

.field final hashCode1LCase:J

.field final hashCode2:J

.field final hashCode2LCase:J

.field final hashCode3:J

.field final hashCode3LCase:J

.field final hashCode4:J

.field final hashCode4LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader4:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/function/Supplier;JLcom/alibaba/fastjson2/function/Function;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/function/Supplier<",
            "TT;>;J",
            "Lcom/alibaba/fastjson2/function/Function;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            "Lcom/alibaba/fastjson2/reader/FieldReader;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

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

    const/4 p6, 0x4

    aput-object p10, v0, p6

    move-object p8, p5

    move-wide p5, p3

    const/4 p3, 0x0

    const/4 p4, 0x0

    move-object p7, p2

    move-object p9, v0

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Lcom/alibaba/fastjson2/reader/ObjectReader5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

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

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 p3, 0x1

    .line 4
    aget-object v1, p8, p3

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v2, 0x2

    .line 5
    aget-object v2, p8, v2

    iput-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v3, 0x3

    .line 6
    aget-object v3, p8, v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    const/4 v4, 0x4

    .line 7
    aget-object v4, p8, v4

    iput-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 8
    iget-wide v5, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0:J

    .line 9
    iget-wide v5, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1:J

    .line 10
    iget-wide v5, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2:J

    .line 11
    iget-wide v5, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3:J

    .line 12
    iget-wide v5, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4:J

    .line 13
    iget-wide v5, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0LCase:J

    .line 14
    iget-wide v5, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1LCase:J

    .line 15
    iget-wide v5, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2LCase:J

    .line 16
    iget-wide v5, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3LCase:J

    .line 17
    iget-wide v5, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    iput-wide v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4LCase:J

    .line 18
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object p2, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

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
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2:J

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3:J

    .line 30
    .line 31
    cmp-long v0, p1, v0

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4:J

    .line 39
    .line 40
    cmp-long p1, p1, v0

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 45
    return-object p1

    .line 46
    :cond_4
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0LCase:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1LCase:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2LCase:J

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3LCase:J

    .line 30
    .line 31
    cmp-long v0, p1, v0

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4LCase:J

    .line 39
    .line 40
    cmp-long p1, p1, v0

    .line 41
    .line 42
    if-nez p1, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 45
    return-object p1

    .line 46
    :cond_4
    const/4 p1, 0x0

    .line 47
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 26
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
    .line 52
    if-lez p2, :cond_2

    .line 53
    .line 54
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 58
    const/4 p3, 0x1

    .line 59
    .line 60
    if-le p2, p3, :cond_2

    .line 61
    .line 62
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 66
    const/4 p3, 0x2

    .line 67
    .line 68
    if-le p2, p3, :cond_2

    .line 69
    .line 70
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 74
    const/4 p3, 0x3

    .line 75
    .line 76
    if-le p2, p3, :cond_2

    .line 77
    .line 78
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 82
    const/4 p3, 0x4

    .line 83
    .line 84
    if-le p2, p3, :cond_2

    .line 85
    .line 86
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 90
    const/4 p3, 0x5

    .line 91
    .line 92
    :goto_0
    if-ge p3, p2, :cond_2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 96
    .line 97
    add-int/lit8 p3, p3, 0x1

    .line 98
    goto :goto_0

    .line 99
    .line 100
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 101
    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    .line 105
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    :cond_3
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 57
    const/4 v0, 0x4

    .line 58
    .line 59
    if-le p3, v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x5

    .line 66
    .line 67
    :goto_0
    if-ge v0, p3, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :cond_2
    return-object p2

    .line 84
    .line 85
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 89
    move-result-wide v3

    .line 90
    .line 91
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 92
    .line 93
    or-long v5, v0, p4

    .line 94
    move-object v1, p1

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    .line 103
    invoke-interface {v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 104
    move-result-object v1

    .line 105
    .line 106
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 107
    .line 108
    if-eq v1, v2, :cond_4

    .line 109
    move-object v1, p1

    .line 110
    move-object v2, p2

    .line 111
    move-object v3, p3

    .line 112
    move-wide v4, p4

    .line 113
    .line 114
    .line 115
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    .line 119
    :cond_4
    const/16 p2, -0x5a

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 123
    move-result p2

    .line 124
    .line 125
    if-eqz p2, :cond_16

    .line 126
    .line 127
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 128
    .line 129
    const-wide/16 v2, 0x0

    .line 130
    .line 131
    if-eqz p2, :cond_5

    .line 132
    .line 133
    .line 134
    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 135
    move-result-object p2

    .line 136
    goto :goto_1

    .line 137
    .line 138
    :cond_5
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 139
    .line 140
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 141
    or-long/2addr p2, p4

    .line 142
    .line 143
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 144
    .line 145
    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 146
    and-long/2addr p2, v6

    .line 147
    .line 148
    cmp-long p2, p2, v2

    .line 149
    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    :try_start_0
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 153
    .line 154
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, p3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 158
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    move-object p2, v0

    .line 162
    .line 163
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 164
    .line 165
    const-string v0, "create instance error"

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    .line 171
    .line 172
    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    throw p3

    .line 174
    :cond_6
    const/4 p2, 0x0

    .line 175
    .line 176
    :goto_1
    if-eqz p2, :cond_7

    .line 177
    .line 178
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 179
    .line 180
    if-eqz p3, :cond_7

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->initDefaultValue(Ljava/lang/Object;)V

    .line 184
    .line 185
    :cond_7
    :goto_2
    const/16 p3, -0x5b

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 189
    move-result p3

    .line 190
    .line 191
    if-eqz p3, :cond_9

    .line 192
    .line 193
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 194
    .line 195
    if-eqz p1, :cond_8

    .line 196
    .line 197
    .line 198
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    move-result-object p1

    .line 200
    return-object p1

    .line 201
    :cond_8
    return-object p2

    .line 202
    .line 203
    .line 204
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 205
    move-result-wide v6

    .line 206
    .line 207
    cmp-long p3, v6, v2

    .line 208
    .line 209
    if-nez p3, :cond_a

    .line 210
    goto :goto_2

    .line 211
    .line 212
    :cond_a
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0:J

    .line 213
    .line 214
    cmp-long p3, v6, v8

    .line 215
    .line 216
    if-nez p3, :cond_b

    .line 217
    .line 218
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 222
    goto :goto_2

    .line 223
    .line 224
    :cond_b
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1:J

    .line 225
    .line 226
    cmp-long p3, v6, v8

    .line 227
    .line 228
    if-nez p3, :cond_c

    .line 229
    .line 230
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 234
    goto :goto_2

    .line 235
    .line 236
    :cond_c
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2:J

    .line 237
    .line 238
    cmp-long p3, v6, v8

    .line 239
    .line 240
    if-nez p3, :cond_d

    .line 241
    .line 242
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 246
    goto :goto_2

    .line 247
    .line 248
    :cond_d
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3:J

    .line 249
    .line 250
    cmp-long p3, v6, v8

    .line 251
    .line 252
    if-nez p3, :cond_e

    .line 253
    .line 254
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 258
    goto :goto_2

    .line 259
    .line 260
    :cond_e
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4:J

    .line 261
    .line 262
    cmp-long p3, v6, v8

    .line 263
    .line 264
    if-nez p3, :cond_f

    .line 265
    .line 266
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 270
    goto :goto_2

    .line 271
    .line 272
    :cond_f
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 273
    or-long/2addr v6, p4

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 277
    move-result p3

    .line 278
    .line 279
    if-nez p3, :cond_10

    .line 280
    .line 281
    .line 282
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 283
    goto :goto_2

    .line 284
    .line 285
    .line 286
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 287
    move-result-wide v6

    .line 288
    .line 289
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0LCase:J

    .line 290
    .line 291
    cmp-long p3, v6, v8

    .line 292
    .line 293
    if-nez p3, :cond_11

    .line 294
    .line 295
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 299
    goto :goto_2

    .line 300
    .line 301
    :cond_11
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1LCase:J

    .line 302
    .line 303
    cmp-long p3, v6, v8

    .line 304
    .line 305
    if-nez p3, :cond_12

    .line 306
    .line 307
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 311
    goto :goto_2

    .line 312
    .line 313
    :cond_12
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2LCase:J

    .line 314
    .line 315
    cmp-long p3, v6, v8

    .line 316
    .line 317
    if-nez p3, :cond_13

    .line 318
    .line 319
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :cond_13
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3LCase:J

    .line 327
    .line 328
    cmp-long p3, v6, v8

    .line 329
    .line 330
    if-nez p3, :cond_14

    .line 331
    .line 332
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 336
    .line 337
    goto/16 :goto_2

    .line 338
    .line 339
    :cond_14
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4LCase:J

    .line 340
    .line 341
    cmp-long p3, v6, v8

    .line 342
    .line 343
    if-nez p3, :cond_15

    .line 344
    .line 345
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 349
    .line 350
    goto/16 :goto_2

    .line 351
    .line 352
    .line 353
    :cond_15
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 354
    .line 355
    goto/16 :goto_2

    .line 356
    .line 357
    :cond_16
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 358
    .line 359
    new-instance p3, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    const-string v0, "expect object, but "

    .line 365
    .line 366
    .line 367
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 371
    move-result p1

    .line 372
    .line 373
    .line 374
    invoke-static {p1}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 375
    move-result-object p1

    .line 376
    .line 377
    .line 378
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    move-result-object p1

    .line 383
    .line 384
    .line 385
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 386
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
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

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
    const-wide/16 v2, 0x0

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
    cmp-long p4, p4, v2

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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->initDefaultValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    :cond_3
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 77
    .line 78
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 82
    .line 83
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 87
    .line 88
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 92
    .line 93
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 100
    move-result p3

    .line 101
    .line 102
    if-eqz p3, :cond_5

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 106
    .line 107
    iget-object p1, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_4
    return-object p2

    .line 116
    .line 117
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 118
    .line 119
    const-string p3, "array to bean end error"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    .line 125
    .line 126
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p2

    .line 128
    :cond_6
    move-object v2, p1

    .line 129
    move-object v3, p2

    .line 130
    move-object v4, p3

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    move-object p2, v1

    .line 136
    return-object p1

    .line 137
    :cond_7
    move-wide v8, v2

    .line 138
    move-object v2, p2

    .line 139
    move-object p2, v1

    .line 140
    move-wide v0, v8

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 144
    .line 145
    iget-object v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 146
    .line 147
    .line 148
    invoke-interface {v3}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 149
    move-result-object v7

    .line 150
    .line 151
    iget-boolean v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 152
    .line 153
    if-eqz v3, :cond_8

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/reader/ObjectReader5;->initDefaultValue(Ljava/lang/Object;)V

    .line 157
    .line 158
    :cond_8
    if-eqz v7, :cond_9

    .line 159
    .line 160
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 161
    .line 162
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 163
    and-long/2addr v3, v5

    .line 164
    .line 165
    cmp-long v0, v3, v0

    .line 166
    .line 167
    if-eqz v0, :cond_9

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    .line 171
    :cond_9
    const/4 v0, 0x0

    .line 172
    move v6, v0

    .line 173
    .line 174
    .line 175
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 176
    move-result v0

    .line 177
    .line 178
    if-eqz v0, :cond_a

    .line 179
    goto :goto_1

    .line 180
    .line 181
    .line 182
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 183
    move-result-wide v0

    .line 184
    .line 185
    if-nez v6, :cond_c

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    const-wide v3, 0x6570797440L

    .line 191
    .line 192
    cmp-long v3, v0, v3

    .line 193
    .line 194
    if-nez v3, :cond_c

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 198
    move-result-wide v0

    .line 199
    .line 200
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 204
    move-result-object v0

    .line 205
    .line 206
    if-nez v0, :cond_b

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    .line 212
    iget-object v1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    if-nez v0, :cond_b

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :cond_b
    if-eq v0, p2, :cond_1a

    .line 223
    move-object v1, p1

    .line 224
    move-object v3, p3

    .line 225
    move-wide v4, p4

    .line 226
    .line 227
    .line 228
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 229
    move-result-object v7

    .line 230
    goto :goto_1

    .line 231
    .line 232
    :cond_c
    const-wide/16 v3, -0x1

    .line 233
    .line 234
    cmp-long v3, v0, v3

    .line 235
    .line 236
    if-nez v3, :cond_e

    .line 237
    .line 238
    .line 239
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 240
    .line 241
    iget-object p1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 242
    .line 243
    if-eqz p1, :cond_d

    .line 244
    .line 245
    .line 246
    invoke-interface {p1, v7}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-result-object p1

    .line 248
    return-object p1

    .line 249
    :cond_d
    return-object v7

    .line 250
    .line 251
    :cond_e
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0:J

    .line 252
    .line 253
    cmp-long v3, v0, v3

    .line 254
    .line 255
    if-nez v3, :cond_f

    .line 256
    .line 257
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 261
    .line 262
    goto/16 :goto_2

    .line 263
    .line 264
    :cond_f
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1:J

    .line 265
    .line 266
    cmp-long v3, v0, v3

    .line 267
    .line 268
    if-nez v3, :cond_10

    .line 269
    .line 270
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 274
    .line 275
    goto/16 :goto_2

    .line 276
    .line 277
    :cond_10
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2:J

    .line 278
    .line 279
    cmp-long v3, v0, v3

    .line 280
    .line 281
    if-nez v3, :cond_11

    .line 282
    .line 283
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :cond_11
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3:J

    .line 291
    .line 292
    cmp-long v3, v0, v3

    .line 293
    .line 294
    if-nez v3, :cond_12

    .line 295
    .line 296
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 300
    goto :goto_2

    .line 301
    .line 302
    :cond_12
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4:J

    .line 303
    .line 304
    cmp-long v0, v0, v3

    .line 305
    .line 306
    if-nez v0, :cond_13

    .line 307
    .line 308
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 312
    goto :goto_2

    .line 313
    .line 314
    :cond_13
    iget-wide v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 315
    or-long/2addr v0, p4

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 319
    move-result v0

    .line 320
    .line 321
    if-nez v0, :cond_14

    .line 322
    .line 323
    .line 324
    invoke-virtual {p0, p1, v7, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 325
    goto :goto_2

    .line 326
    .line 327
    .line 328
    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 329
    move-result-wide v0

    .line 330
    .line 331
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode0LCase:J

    .line 332
    .line 333
    cmp-long v3, v0, v3

    .line 334
    .line 335
    if-nez v3, :cond_15

    .line 336
    .line 337
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 341
    goto :goto_2

    .line 342
    .line 343
    :cond_15
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode1LCase:J

    .line 344
    .line 345
    cmp-long v3, v0, v3

    .line 346
    .line 347
    if-nez v3, :cond_16

    .line 348
    .line 349
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 353
    goto :goto_2

    .line 354
    .line 355
    :cond_16
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode2LCase:J

    .line 356
    .line 357
    cmp-long v3, v0, v3

    .line 358
    .line 359
    if-nez v3, :cond_17

    .line 360
    .line 361
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 365
    goto :goto_2

    .line 366
    .line 367
    :cond_17
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode3LCase:J

    .line 368
    .line 369
    cmp-long v3, v0, v3

    .line 370
    .line 371
    if-nez v3, :cond_18

    .line 372
    .line 373
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 377
    goto :goto_2

    .line 378
    .line 379
    :cond_18
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->hashCode4LCase:J

    .line 380
    .line 381
    cmp-long v0, v0, v3

    .line 382
    .line 383
    if-nez v0, :cond_19

    .line 384
    .line 385
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader5;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 389
    goto :goto_2

    .line 390
    .line 391
    .line 392
    :cond_19
    invoke-virtual {p0, p1, v7, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 393
    .line 394
    :cond_1a
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 395
    .line 396
    goto/16 :goto_0
.end method
