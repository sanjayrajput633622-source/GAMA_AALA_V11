.class public Lcom/alibaba/fastjson2/reader/ObjectReader2;
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

.field protected final hashCode0:J

.field protected final hashCode0LCase:J

.field protected final hashCode1:J

.field protected final hashCode1LCase:J

.field protected objectReader0:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field protected objectReader1:Lcom/alibaba/fastjson2/reader/ObjectReader;


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
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 24
    const/4 p3, 0x1

    .line 25
    .line 26
    aget-object v1, p8, p3

    .line 27
    .line 28
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 29
    .line 30
    iget-wide v2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 31
    .line 32
    iput-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0:J

    .line 33
    .line 34
    iget-wide v2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0LCase:J

    .line 37
    .line 38
    iget-wide v2, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHash:J

    .line 39
    .line 40
    iput-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1:J

    .line 41
    .line 42
    iget-wide v2, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldNameHashLCase:J

    .line 43
    .line 44
    iput-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1LCase:J

    .line 45
    .line 46
    iget-object p2, p2, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 47
    .line 48
    if-nez p2, :cond_0

    .line 49
    .line 50
    iget-object p2, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    :cond_0
    move p1, p3

    .line 54
    .line 55
    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 56
    return-void
.end method


# virtual methods
.method public getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1:J

    .line 12
    .line 13
    cmp-long p1, p1, v0

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return-object p1
.end method

.method public getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0LCase:J

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1LCase:J

    .line 12
    .line 13
    cmp-long p1, p1, v0

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 18
    return-object p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
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
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->acceptDefaultValue(Ljava/lang/Object;)V

    .line 11
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
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

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
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3, v4, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 66
    const/4 p3, 0x2

    .line 67
    .line 68
    :goto_0
    if-ge p3, p2, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 72
    .line 73
    add-int/lit8 p3, p3, 0x1

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
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
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->getTypeNameHash()J

    .line 15
    move-result-wide v3

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 18
    .line 19
    or-long v5, v0, p4

    .line 20
    move-object v1, p1

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    move-object v1, p1

    .line 36
    move-object v2, p2

    .line 37
    move-object v3, p3

    .line 38
    move-wide v4, p4

    .line 39
    .line 40
    .line 41
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 47
    move-result p2

    .line 48
    .line 49
    if-eqz p2, :cond_5

    .line 50
    .line 51
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 52
    .line 53
    .line 54
    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 58
    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initDefaultValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 66
    move-result p3

    .line 67
    .line 68
    if-lez p3, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x1

    .line 75
    .line 76
    if-le p3, v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 82
    const/4 v0, 0x2

    .line 83
    .line 84
    :goto_0
    if-ge v0, p3, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 88
    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :cond_4
    return-object p2

    .line 101
    .line 102
    :cond_5
    const/16 p2, -0x5a

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 106
    move-result p2

    .line 107
    .line 108
    if-eqz p2, :cond_11

    .line 109
    .line 110
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    .line 111
    .line 112
    const-wide/16 v2, 0x0

    .line 113
    .line 114
    if-eqz p2, :cond_6

    .line 115
    .line 116
    .line 117
    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    .line 118
    move-result-object p2

    .line 119
    goto :goto_1

    .line 120
    .line 121
    :cond_6
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 122
    .line 123
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 124
    or-long/2addr p2, p4

    .line 125
    .line 126
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 127
    .line 128
    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 129
    and-long/2addr p2, v6

    .line 130
    .line 131
    cmp-long p2, p2, v2

    .line 132
    .line 133
    if-eqz p2, :cond_7

    .line 134
    .line 135
    :try_start_0
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 136
    .line 137
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    move-object p2, v0

    .line 145
    .line 146
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 147
    .line 148
    const-string v0, "create instance error"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    .line 154
    .line 155
    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    throw p3

    .line 157
    :cond_7
    const/4 p2, 0x0

    .line 158
    .line 159
    :goto_1
    if-eqz p2, :cond_8

    .line 160
    .line 161
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    .line 162
    .line 163
    if-eqz p3, :cond_8

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initDefaultValue(Ljava/lang/Object;)V

    .line 167
    .line 168
    :cond_8
    if-eqz p2, :cond_9

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isInitStringFieldAsEmpty()Z

    .line 172
    move-result p3

    .line 173
    .line 174
    if-eqz p3, :cond_9

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    .line 178
    .line 179
    :cond_9
    :goto_2
    const/16 p3, -0x5b

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    .line 183
    move-result p3

    .line 184
    .line 185
    if-eqz p3, :cond_b

    .line 186
    .line 187
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    .line 188
    .line 189
    if-eqz p1, :cond_a

    .line 190
    .line 191
    .line 192
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-result-object p1

    .line 194
    return-object p1

    .line 195
    :cond_a
    return-object p2

    .line 196
    .line 197
    .line 198
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 199
    move-result-wide v6

    .line 200
    .line 201
    cmp-long p3, v6, v2

    .line 202
    .line 203
    if-nez p3, :cond_c

    .line 204
    goto :goto_2

    .line 205
    .line 206
    :cond_c
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0:J

    .line 207
    .line 208
    cmp-long p3, v6, v8

    .line 209
    .line 210
    if-nez p3, :cond_d

    .line 211
    .line 212
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 216
    goto :goto_2

    .line 217
    .line 218
    :cond_d
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1:J

    .line 219
    .line 220
    cmp-long p3, v6, v8

    .line 221
    .line 222
    if-nez p3, :cond_e

    .line 223
    .line 224
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 228
    goto :goto_2

    .line 229
    .line 230
    :cond_e
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    .line 231
    or-long/2addr v6, p4

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v6, v7}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    .line 235
    move-result p3

    .line 236
    .line 237
    if-eqz p3, :cond_10

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    .line 241
    move-result-wide v6

    .line 242
    .line 243
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0LCase:J

    .line 244
    .line 245
    cmp-long p3, v6, v8

    .line 246
    .line 247
    if-nez p3, :cond_f

    .line 248
    .line 249
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 253
    goto :goto_2

    .line 254
    .line 255
    :cond_f
    iget-wide v8, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1LCase:J

    .line 256
    .line 257
    cmp-long p3, v6, v8

    .line 258
    .line 259
    if-nez p3, :cond_10

    .line 260
    .line 261
    iget-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 265
    goto :goto_2

    .line 266
    .line 267
    .line 268
    :cond_10
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    .line 269
    goto :goto_2

    .line 270
    .line 271
    :cond_11
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 272
    .line 273
    new-instance p3, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    const-string v0, "expect object, but "

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 285
    move-result v0

    .line 286
    .line 287
    .line 288
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->j0(B)Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object p3

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    move-result-object p1

    .line 301
    .line 302
    .line 303
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 304
    throw p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 1
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->serializable:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->errorOnNoneSerializable(Ljava/lang/Class;)V

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p0

    return-object p1

    :cond_1
    move-object v1, p0

    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_2
    iget-wide v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->features(J)J

    move-result-wide v5

    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_6

    .line 10
    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p4, v5

    cmp-long p4, p4, v2

    if-eqz p4, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 12
    iget-object p2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    invoke-interface {p2}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 13
    iget-boolean p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    if-eqz p3, :cond_3

    .line 14
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initDefaultValue(Ljava/lang/Object;)V

    .line 15
    :cond_3
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 16
    iget-object p3, v1, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p3

    const/16 p4, 0x5d

    if-ne p3, p4, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    return-object p2

    .line 19
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "array to bean end error"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processObjectInputSingleItemArray(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    move-object p2, v1

    return-object p1

    :cond_6
    move-wide v8, v2

    move-object v2, p2

    move-object p2, v1

    move-wide v0, v8

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 22
    iget-object v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->creator:Lcom/alibaba/fastjson2/function/Supplier;

    invoke-interface {v3}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    .line 23
    iget-boolean v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->hasDefaultValue:Z

    if-eqz v3, :cond_7

    .line 24
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/reader/ObjectReader2;->initDefaultValue(Ljava/lang/Object;)V

    :cond_7
    if-eqz v7, :cond_8

    .line 25
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->initStringFieldAsEmpty(Ljava/lang/Object;)V

    :cond_8
    const/4 v0, 0x0

    move v6, v0

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1

    .line 28
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v0

    if-nez v6, :cond_c

    const-wide v3, 0x6570797440L

    cmp-long v3, v0, v3

    if-nez v3, :cond_c

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readTypeHashCode()J

    move-result-wide v0

    .line 30
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 31
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-nez v0, :cond_a

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->objectClass:Ljava/lang/Class;

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    if-eq v0, p2, :cond_11

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    .line 34
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 35
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 36
    iget-object p3, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->buildFunction:Lcom/alibaba/fastjson2/function/Function;

    if-eqz p3, :cond_b

    .line 37
    :try_start_0
    invoke-interface {p3, v7}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p3, v0

    .line 38
    new-instance p4, Lcom/alibaba/fastjson2/JSONException;

    const-string p5, "build object error"

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :cond_b
    return-object v7

    .line 39
    :cond_c
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_d

    .line 40
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 41
    :cond_d
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_e

    .line 42
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 43
    :cond_e
    iget-wide v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->features:J

    or-long/2addr v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->isSupportSmartMatch(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNameHashCodeLCase()J

    move-result-wide v0

    .line 45
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode0LCase:J

    cmp-long v3, v0, v3

    if-nez v3, :cond_f

    .line 46
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader0:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 47
    :cond_f
    iget-wide v3, p2, Lcom/alibaba/fastjson2/reader/ObjectReader2;->hashCode1LCase:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_10

    .line 48
    iget-object v0, p2, Lcom/alibaba/fastjson2/reader/ObjectReader2;->fieldReader1:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    goto :goto_2

    .line 49
    :cond_10
    invoke-virtual {p0, p1, v7, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    :cond_11
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method
