.class public Lcom/alibaba/fastjson2/reader/ObjectReader6;
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

.field protected final fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

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

.field final hashCode5:J

.field final hashCode5LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader2:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader3:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader4:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader5:Lcom/alibaba/fastjson2/reader/ObjectReader;


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
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 24
    const/4 p3, 0x1

    .line 25
    .line 26
    aget-object v1, p8, p3

    .line 27
    .line 28
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 29
    const/4 v2, 0x2

    .line 30
    .line 31
    aget-object v2, p8, v2

    .line 32
    .line 33
    iput-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 34
    const/4 v3, 0x3

    .line 35
    .line 36
    aget-object v3, p8, v3

    .line 37
    .line 38
    iput-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 39
    const/4 v4, 0x4

    .line 40
    .line 41
    aget-object v4, p8, v4

    .line 42
    .line 43
    iput-object v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 44
    const/4 v5, 0x5

    .line 45
    .line 46
    aget-object v5, p8, v5

    .line 47
    .line 48
    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 49
    .line 50
    iget-wide v6, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 51
    .line 52
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode0:J

    .line 53
    .line 54
    iget-wide v6, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 55
    .line 56
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode1:J

    .line 57
    .line 58
    iget-wide v6, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 59
    .line 60
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode2:J

    .line 61
    .line 62
    iget-wide v6, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 63
    .line 64
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode3:J

    .line 65
    .line 66
    iget-wide v6, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 67
    .line 68
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode4:J

    .line 69
    .line 70
    iget-wide v6, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 71
    .line 72
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode5:J

    .line 73
    .line 74
    iget-wide v6, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 75
    .line 76
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode0LCase:J

    .line 77
    .line 78
    iget-wide v6, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 79
    .line 80
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode1LCase:J

    .line 81
    .line 82
    iget-wide v6, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 83
    .line 84
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode2LCase:J

    .line 85
    .line 86
    iget-wide v6, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 87
    .line 88
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode3LCase:J

    .line 89
    .line 90
    iget-wide v6, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 91
    .line 92
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode4LCase:J

    .line 93
    .line 94
    iget-wide v6, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 95
    .line 96
    iput-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode5LCase:J

    .line 97
    .line 98
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 99
    .line 100
    if-nez p2, :cond_0

    .line 101
    .line 102
    iget-object p2, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 103
    .line 104
    if-nez p2, :cond_0

    .line 105
    .line 106
    iget-object p2, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 107
    .line 108
    if-nez p2, :cond_0

    .line 109
    .line 110
    iget-object p2, v3, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 111
    .line 112
    if-nez p2, :cond_0

    .line 113
    .line 114
    iget-object p2, v4, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 115
    .line 116
    if-nez p2, :cond_0

    .line 117
    .line 118
    iget-object p2, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 119
    .line 120
    if-eqz p2, :cond_1

    .line 121
    :cond_0
    move p1, p3

    .line 122
    .line 123
    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 124
    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode0:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode1:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode2:J

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode3:J

    .line 30
    .line 31
    cmp-long v0, p1, v0

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode4:J

    .line 39
    .line 40
    cmp-long v0, p1, v0

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode5:J

    .line 48
    .line 49
    cmp-long p1, p1, v0

    .line 50
    .line 51
    if-nez p1, :cond_5

    .line 52
    .line 53
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 54
    return-object p1

    .line 55
    :cond_5
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode0LCase:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode1LCase:J

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode2LCase:J

    .line 21
    .line 22
    cmp-long v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode3LCase:J

    .line 30
    .line 31
    cmp-long v0, p1, v0

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode4LCase:J

    .line 39
    .line 40
    cmp-long v0, p1, v0

    .line 41
    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 45
    return-object p1

    .line 46
    .line 47
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode5LCase:J

    .line 48
    .line 49
    cmp-long p1, p1, v0

    .line 50
    .line 51
    if-nez p1, :cond_5

    .line 52
    .line 53
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 54
    return-object p1

    .line 55
    :cond_5
    const/4 p1, 0x0

    .line 56
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 31
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
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 90
    const/4 p3, 0x5

    .line 91
    .line 92
    if-le p2, p3, :cond_2

    .line 93
    .line 94
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 98
    const/4 p3, 0x6

    .line 99
    .line 100
    :goto_0
    if-ge p3, p2, :cond_2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 104
    .line 105
    add-int/lit8 p3, p3, 0x1

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 109
    .line 110
    if-eqz p2, :cond_3

    .line 111
    .line 112
    .line 113
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object p1

    .line 115
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x5

    .line 66
    .line 67
    if-le p3, v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 73
    const/4 v0, 0x6

    .line 74
    .line 75
    :goto_0
    if-ge v0, p3, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 79
    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_2
    return-object p2

    .line 92
    .line 93
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 97
    move-result-wide v3

    .line 98
    .line 99
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 100
    .line 101
    or-long v5, v0, p4

    .line 102
    move-object v1, p1

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    .line 111
    invoke-interface {v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 112
    move-result-object v1

    .line 113
    .line 114
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 115
    .line 116
    if-eq v1, v2, :cond_4

    .line 117
    move-object v1, p1

    .line 118
    move-object v2, p2

    .line 119
    move-object v3, p3

    .line 120
    move-wide v4, p4

    .line 121
    .line 122
    .line 123
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    .line 127
    :cond_4
    const/16 p2, -0x5a

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 131
    move-result p2

    .line 132
    .line 133
    if-eqz p2, :cond_18

    .line 134
    .line 135
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 136
    .line 137
    const-wide/16 v2, 0x0

    .line 138
    .line 139
    if-eqz p2, :cond_5

    .line 140
    .line 141
    .line 142
    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 143
    move-result-object p2

    .line 144
    goto :goto_1

    .line 145
    .line 146
    :cond_5
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 147
    .line 148
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 149
    or-long/2addr p2, p4

    .line 150
    .line 151
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 152
    .line 153
    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 154
    and-long/2addr p2, v6

    .line 155
    .line 156
    cmp-long p2, p2, v2

    .line 157
    .line 158
    if-eqz p2, :cond_6

    .line 159
    .line 160
    :try_start_0
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 161
    .line 162
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p2, p3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 166
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    move-object p2, v0

    .line 170
    .line 171
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 172
    .line 173
    const-string v0, "create instance error"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    .line 179
    .line 180
    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    throw p3

    .line 182
    :cond_6
    const/4 p2, 0x0

    .line 183
    .line 184
    :goto_1
    if-eqz p2, :cond_7

    .line 185
    .line 186
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 187
    .line 188
    if-eqz p3, :cond_7

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader6;->initDefaultValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    :cond_7
    :goto_2
    const/16 p3, -0x5b

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 197
    move-result p3

    .line 198
    .line 199
    if-eqz p3, :cond_9

    .line 200
    .line 201
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 202
    .line 203
    if-eqz p1, :cond_8

    .line 204
    .line 205
    .line 206
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    move-result-object p1

    .line 208
    return-object p1

    .line 209
    :cond_8
    return-object p2

    .line 210
    .line 211
    .line 212
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 213
    move-result-wide v6

    .line 214
    .line 215
    cmp-long p3, v6, v2

    .line 216
    .line 217
    if-nez p3, :cond_a

    .line 218
    goto :goto_2

    .line 219
    .line 220
    :cond_a
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode0:J

    .line 221
    .line 222
    cmp-long p3, v6, v8

    .line 223
    .line 224
    if-nez p3, :cond_b

    .line 225
    .line 226
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 230
    goto :goto_2

    .line 231
    .line 232
    :cond_b
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode1:J

    .line 233
    .line 234
    cmp-long p3, v6, v8

    .line 235
    .line 236
    if-nez p3, :cond_c

    .line 237
    .line 238
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 242
    goto :goto_2

    .line 243
    .line 244
    :cond_c
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode2:J

    .line 245
    .line 246
    cmp-long p3, v6, v8

    .line 247
    .line 248
    if-nez p3, :cond_d

    .line 249
    .line 250
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 254
    goto :goto_2

    .line 255
    .line 256
    :cond_d
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode3:J

    .line 257
    .line 258
    cmp-long p3, v6, v8

    .line 259
    .line 260
    if-nez p3, :cond_e

    .line 261
    .line 262
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 266
    goto :goto_2

    .line 267
    .line 268
    :cond_e
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode4:J

    .line 269
    .line 270
    cmp-long p3, v6, v8

    .line 271
    .line 272
    if-nez p3, :cond_f

    .line 273
    .line 274
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 278
    goto :goto_2

    .line 279
    .line 280
    :cond_f
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode5:J

    .line 281
    .line 282
    cmp-long p3, v6, v8

    .line 283
    .line 284
    if-nez p3, :cond_10

    .line 285
    .line 286
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 290
    goto :goto_2

    .line 291
    .line 292
    :cond_10
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 293
    or-long/2addr v6, p4

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 297
    move-result p3

    .line 298
    .line 299
    if-nez p3, :cond_11

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 303
    goto :goto_2

    .line 304
    .line 305
    .line 306
    :cond_11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 307
    move-result-wide v6

    .line 308
    .line 309
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode0LCase:J

    .line 310
    .line 311
    cmp-long p3, v6, v8

    .line 312
    .line 313
    if-nez p3, :cond_12

    .line 314
    .line 315
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 319
    goto :goto_2

    .line 320
    .line 321
    :cond_12
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode1LCase:J

    .line 322
    .line 323
    cmp-long p3, v6, v8

    .line 324
    .line 325
    if-nez p3, :cond_13

    .line 326
    .line 327
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 331
    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :cond_13
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode2LCase:J

    .line 335
    .line 336
    cmp-long p3, v6, v8

    .line 337
    .line 338
    if-nez p3, :cond_14

    .line 339
    .line 340
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :cond_14
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode3LCase:J

    .line 348
    .line 349
    cmp-long p3, v6, v8

    .line 350
    .line 351
    if-nez p3, :cond_15

    .line 352
    .line 353
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 357
    .line 358
    goto/16 :goto_2

    .line 359
    .line 360
    :cond_15
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode4LCase:J

    .line 361
    .line 362
    cmp-long p3, v6, v8

    .line 363
    .line 364
    if-nez p3, :cond_16

    .line 365
    .line 366
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 370
    .line 371
    goto/16 :goto_2

    .line 372
    .line 373
    :cond_16
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode5LCase:J

    .line 374
    .line 375
    cmp-long p3, v6, v8

    .line 376
    .line 377
    if-nez p3, :cond_17

    .line 378
    .line 379
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 383
    .line 384
    goto/16 :goto_2

    .line 385
    .line 386
    .line 387
    :cond_17
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 388
    .line 389
    goto/16 :goto_2

    .line 390
    .line 391
    :cond_18
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 392
    .line 393
    new-instance p3, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    const-string v0, "expect object, but "

    .line 399
    .line 400
    .line 401
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 405
    move-result v0

    .line 406
    .line 407
    .line 408
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 409
    move-result-object v0

    .line 410
    .line 411
    .line 412
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    move-result-object p3

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    move-result-object p1

    .line 421
    .line 422
    .line 423
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 424
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
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader6;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader6;->initDefaultValue(Ljava/lang/Object;)V

    .line 72
    .line 73
    :cond_3
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 77
    .line 78
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 82
    .line 83
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 87
    .line 88
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 92
    .line 93
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 97
    .line 98
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 105
    move-result p3

    .line 106
    .line 107
    if-eqz p3, :cond_5

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 111
    .line 112
    iget-object p1, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :cond_4
    return-object p2

    .line 121
    .line 122
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 123
    .line 124
    const-string p3, "array to bean end error"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p2

    .line 133
    :cond_6
    move-object v2, p1

    .line 134
    move-object v3, p2

    .line 135
    move-object v4, p3

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 139
    move-result-object p1

    .line 140
    move-object p2, v1

    .line 141
    return-object p1

    .line 142
    :cond_7
    move-wide v8, v2

    .line 143
    move-object v2, p2

    .line 144
    move-object p2, v1

    .line 145
    move-wide v0, v8

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 149
    .line 150
    iget-object v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 151
    .line 152
    .line 153
    invoke-interface {v3}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 154
    move-result-object v7

    .line 155
    .line 156
    iget-boolean v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 157
    .line 158
    if-eqz v3, :cond_8

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/reader/ObjectReader6;->initDefaultValue(Ljava/lang/Object;)V

    .line 162
    .line 163
    :cond_8
    if-eqz v7, :cond_9

    .line 164
    .line 165
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 166
    .line 167
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 168
    and-long/2addr v3, v5

    .line 169
    .line 170
    cmp-long v0, v3, v0

    .line 171
    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    .line 176
    :cond_9
    const/4 v0, 0x0

    .line 177
    move v6, v0

    .line 178
    .line 179
    .line 180
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 181
    move-result v0

    .line 182
    .line 183
    if-eqz v0, :cond_a

    .line 184
    goto :goto_1

    .line 185
    .line 186
    .line 187
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 188
    move-result-wide v0

    .line 189
    .line 190
    if-nez v6, :cond_d

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    const-wide v3, 0x6570797440L

    .line 196
    .line 197
    cmp-long v3, v0, v3

    .line 198
    .line 199
    if-nez v3, :cond_d

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    .line 203
    move-result-wide v0

    .line 204
    .line 205
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    if-nez v0, :cond_b

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 215
    move-result-object v0

    .line 216
    .line 217
    iget-object v1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    if-nez v0, :cond_b

    .line 224
    .line 225
    goto/16 :goto_2

    .line 226
    .line 227
    :cond_b
    if-eq v0, p2, :cond_1b

    .line 228
    move-object v1, p1

    .line 229
    move-object v3, p3

    .line 230
    move-wide v4, p4

    .line 231
    .line 232
    .line 233
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 234
    move-result-object v7

    .line 235
    .line 236
    .line 237
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 238
    .line 239
    iget-object p1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 240
    .line 241
    if-eqz p1, :cond_c

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, v7}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-result-object p1

    .line 246
    return-object p1

    .line 247
    :cond_c
    return-object v7

    .line 248
    .line 249
    :cond_d
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode0:J

    .line 250
    .line 251
    cmp-long v3, v0, v3

    .line 252
    .line 253
    if-nez v3, :cond_e

    .line 254
    .line 255
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_e
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode1:J

    .line 263
    .line 264
    cmp-long v3, v0, v3

    .line 265
    .line 266
    if-nez v3, :cond_f

    .line 267
    .line 268
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    :cond_f
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode2:J

    .line 276
    .line 277
    cmp-long v3, v0, v3

    .line 278
    .line 279
    if-nez v3, :cond_10

    .line 280
    .line 281
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 285
    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :cond_10
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode3:J

    .line 289
    .line 290
    cmp-long v3, v0, v3

    .line 291
    .line 292
    if-nez v3, :cond_11

    .line 293
    .line 294
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 298
    .line 299
    goto/16 :goto_2

    .line 300
    .line 301
    :cond_11
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode4:J

    .line 302
    .line 303
    cmp-long v3, v0, v3

    .line 304
    .line 305
    if-nez v3, :cond_12

    .line 306
    .line 307
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 311
    .line 312
    goto/16 :goto_2

    .line 313
    .line 314
    :cond_12
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode5:J

    .line 315
    .line 316
    cmp-long v0, v0, v3

    .line 317
    .line 318
    if-nez v0, :cond_13

    .line 319
    .line 320
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 324
    goto :goto_2

    .line 325
    .line 326
    :cond_13
    iget-wide v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 327
    or-long/2addr v0, p4

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 331
    move-result v0

    .line 332
    .line 333
    if-nez v0, :cond_14

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, p1, v7, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 337
    goto :goto_2

    .line 338
    .line 339
    .line 340
    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 341
    move-result-wide v0

    .line 342
    .line 343
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode0LCase:J

    .line 344
    .line 345
    cmp-long v3, v0, v3

    .line 346
    .line 347
    if-nez v3, :cond_15

    .line 348
    .line 349
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 353
    goto :goto_2

    .line 354
    .line 355
    :cond_15
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode1LCase:J

    .line 356
    .line 357
    cmp-long v3, v0, v3

    .line 358
    .line 359
    if-nez v3, :cond_16

    .line 360
    .line 361
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 365
    goto :goto_2

    .line 366
    .line 367
    :cond_16
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode2LCase:J

    .line 368
    .line 369
    cmp-long v3, v0, v3

    .line 370
    .line 371
    if-nez v3, :cond_17

    .line 372
    .line 373
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader2:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 377
    goto :goto_2

    .line 378
    .line 379
    :cond_17
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode3LCase:J

    .line 380
    .line 381
    cmp-long v3, v0, v3

    .line 382
    .line 383
    if-nez v3, :cond_18

    .line 384
    .line 385
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader3:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 389
    goto :goto_2

    .line 390
    .line 391
    :cond_18
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode4LCase:J

    .line 392
    .line 393
    cmp-long v3, v0, v3

    .line 394
    .line 395
    if-nez v3, :cond_19

    .line 396
    .line 397
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader4:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 401
    goto :goto_2

    .line 402
    .line 403
    :cond_19
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->hashCode5LCase:J

    .line 404
    .line 405
    cmp-long v0, v0, v3

    .line 406
    .line 407
    if-nez v0, :cond_1a

    .line 408
    .line 409
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader6;->fieldReader5:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 413
    goto :goto_2

    .line 414
    .line 415
    .line 416
    :cond_1a
    invoke-virtual {p0, p1, v7, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 417
    .line 418
    :cond_1b
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 419
    .line 420
    goto/16 :goto_0
.end method
