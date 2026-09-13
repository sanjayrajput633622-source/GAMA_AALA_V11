.class final Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final itemClass:Ljava/lang/Class;

.field itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p3

    .line 4
    move-wide v3, p4

    .line 5
    .line 6
    move-object/from16 v5, p6

    .line 7
    .line 8
    move-object/from16 v6, p7

    .line 9
    .line 10
    move-object/from16 v7, p8

    .line 11
    .line 12
    move-object/from16 v8, p9

    .line 13
    .line 14
    move-object/from16 v9, p10

    .line 15
    .line 16
    move-object/from16 v10, p11

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 20
    .line 21
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemType:Ljava/lang/reflect/Type;

    .line 22
    .line 23
    instance-of p1, p2, Ljava/lang/Class;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    check-cast p2, Ljava/lang/Class;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemClass:Ljava/lang/Class;

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemClass:Ljava/lang/Class;

    .line 37
    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->method:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p1

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :catch_1
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_2
    move-exception p1

    .line 14
    .line 15
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v2, "field.get error, "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    throw v0
.end method

.method public getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemType:Ljava/lang/reflect/Type;

    .line 6
    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    .line 15
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    return-object v1

    .line 19
    .line 20
    :cond_2
    const-class v1, [Ljava/lang/Float;

    .line 21
    .line 22
    const-class v2, Ljava/lang/Float;

    .line 23
    .line 24
    if-ne p2, v1, :cond_4

    .line 25
    .line 26
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v2, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_4
    const-class v1, [Ljava/lang/Double;

    .line 42
    .line 43
    const-class v3, Ljava/lang/Double;

    .line 44
    .line 45
    if-ne p2, v1, :cond_6

    .line 46
    .line 47
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, v3, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 57
    return-object p1

    .line 58
    .line 59
    :cond_5
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 60
    return-object p1

    .line 61
    .line 62
    :cond_6
    const-class v1, [Ljava/math/BigDecimal;

    .line 63
    .line 64
    const-class v4, Ljava/math/BigDecimal;

    .line 65
    .line 66
    if-ne p2, v1, :cond_8

    .line 67
    .line 68
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 69
    .line 70
    if-eqz p1, :cond_7

    .line 71
    .line 72
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 73
    .line 74
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 75
    .line 76
    .line 77
    invoke-direct {p1, v4, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 78
    return-object p1

    .line 79
    .line 80
    :cond_7
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 81
    return-object p1

    .line 82
    .line 83
    :cond_8
    if-ne p2, v2, :cond_a

    .line 84
    .line 85
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 86
    .line 87
    if-eqz p1, :cond_9

    .line 88
    .line 89
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    .line 90
    .line 91
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;-><init>(Ljava/text/DecimalFormat;)V

    .line 95
    return-object p1

    .line 96
    .line 97
    :cond_9
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    .line 98
    return-object p1

    .line 99
    .line 100
    :cond_a
    if-ne p2, v3, :cond_c

    .line 101
    .line 102
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 103
    .line 104
    if-eqz p1, :cond_b

    .line 105
    .line 106
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    .line 107
    .line 108
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;-><init>(Ljava/text/DecimalFormat;)V

    .line 112
    return-object p1

    .line 113
    .line 114
    :cond_b
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    .line 115
    return-object p1

    .line 116
    .line 117
    :cond_c
    if-ne p2, v4, :cond_e

    .line 118
    .line 119
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 120
    .line 121
    if-eqz p1, :cond_d

    .line 122
    .line 123
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 124
    .line 125
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Lcom/alibaba/fastjson2/function/Function;)V

    .line 129
    return-object p1

    .line 130
    .line 131
    :cond_d
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 132
    return-object p1

    .line 133
    .line 134
    :cond_e
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemType:Ljava/lang/reflect/Type;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemClass:Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 143
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, [Ljava/lang/Object;

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 15
    move-result-wide v3

    .line 16
    or-long/2addr v1, v3

    .line 17
    .line 18
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 19
    .line 20
    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 21
    .line 22
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 23
    .line 24
    iget-wide v5, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 25
    or-long/2addr v3, v5

    .line 26
    .line 27
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 28
    .line 29
    iget-wide v5, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 30
    or-long/2addr v3, v5

    .line 31
    and-long/2addr v1, v3

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    cmp-long p2, v1, v3

    .line 36
    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 44
    return v0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    return p1

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V

    .line 50
    return v0
.end method

.method public writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V
    .locals 13

    .line 1
    .line 2
    move-object/from16 v7, p3

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 11
    move-result v8

    .line 12
    .line 13
    if-eqz v8, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0, v7}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    if-eqz v0, :cond_a

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 38
    .line 39
    if-eq v0, v4, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 47
    :cond_2
    array-length v9, v7

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 51
    move v10, v2

    .line 52
    move-object v0, v3

    .line 53
    move v2, v8

    .line 54
    .line 55
    :goto_0
    if-ge v10, v9, :cond_8

    .line 56
    move v4, v2

    .line 57
    .line 58
    aget-object v2, v7, v10

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 64
    move v2, v4

    .line 65
    goto :goto_3

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    move-result-object v5

    .line 70
    .line 71
    if-eq v5, v3, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 75
    move-result v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 79
    move-result-object v3

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-static {v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 85
    move-result v0

    .line 86
    .line 87
    xor-int/lit8 v0, v0, 0x1

    .line 88
    :cond_4
    move v11, v0

    .line 89
    move-object v0, v3

    .line 90
    move-object v12, v5

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    move-object v12, v3

    .line 93
    move v11, v4

    .line 94
    .line 95
    :goto_1
    if-eqz v11, :cond_6

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v10, v2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 108
    goto :goto_2

    .line 109
    .line 110
    .line 111
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->itemType:Ljava/lang/reflect/Type;

    .line 115
    .line 116
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 117
    move-object v1, p1

    .line 118
    .line 119
    .line 120
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 121
    .line 122
    if-eqz v11, :cond_7

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 126
    :cond_7
    :goto_2
    move v2, v11

    .line 127
    move-object v3, v12

    .line 128
    .line 129
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 130
    goto :goto_0

    .line 131
    .line 132
    :cond_8
    if-eqz v8, :cond_9

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 136
    :cond_9
    return-void

    .line 137
    .line 138
    .line 139
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 140
    move v8, v2

    .line 141
    move-object v0, v3

    .line 142
    :goto_4
    array-length v2, v7

    .line 143
    .line 144
    if-ge v8, v2, :cond_e

    .line 145
    .line 146
    if-eqz v8, :cond_b

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 150
    .line 151
    :cond_b
    aget-object v2, v7, v8

    .line 152
    .line 153
    if-nez v2, :cond_c

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 157
    goto :goto_6

    .line 158
    .line 159
    .line 160
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    move-result-object v4

    .line 162
    .line 163
    if-ne v4, v3, :cond_d

    .line 164
    move-object v9, v3

    .line 165
    goto :goto_5

    .line 166
    .line 167
    .line 168
    :cond_d
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 169
    move-result-object v0

    .line 170
    move-object v9, v4

    .line 171
    :goto_5
    const/4 v4, 0x0

    .line 172
    .line 173
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 174
    const/4 v3, 0x0

    .line 175
    move-object v1, p1

    .line 176
    .line 177
    .line 178
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 179
    move-object v3, v9

    .line 180
    .line 181
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 182
    goto :goto_4

    .line 183
    .line 184
    .line 185
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 186
    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    check-cast p2, [Ljava/lang/Object;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;->writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V

    .line 17
    return-void
.end method
