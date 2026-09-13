.class final Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 1
    const/4 v10, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p3

    .line 5
    move-wide v3, p4

    .line 6
    .line 7
    move-object/from16 v5, p6

    .line 8
    .line 9
    move-object/from16 v6, p7

    .line 10
    .line 11
    move-object/from16 v7, p8

    .line 12
    .line 13
    move-object/from16 v8, p9

    .line 14
    .line 15
    move-object/from16 v9, p10

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 19
    .line 20
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemType:Ljava/lang/reflect/Type;

    .line 21
    .line 22
    instance-of p1, p2, Ljava/lang/Class;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    check-cast p2, Ljava/lang/Class;

    .line 27
    .line 28
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemClass:Ljava/lang/Class;

    .line 29
    return-void

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemClass:Ljava/lang/Class;

    .line 36
    return-void
.end method


# virtual methods
.method public getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemType:Ljava/lang/reflect/Type;

    .line 5
    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_2
    const-class v0, Ljava/lang/Double;

    .line 24
    .line 25
    if-ne p2, v0, :cond_3

    .line 26
    .line 27
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    .line 28
    .line 29
    new-instance p2, Ljava/text/DecimalFormat;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;-><init>(Ljava/text/DecimalFormat;)V

    .line 38
    .line 39
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_3
    const-class v0, Ljava/lang/Float;

    .line 43
    .line 44
    if-ne p2, v0, :cond_4

    .line 45
    .line 46
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    .line 47
    .line 48
    new-instance p2, Ljava/text/DecimalFormat;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;-><init>(Ljava/text/DecimalFormat;)V

    .line 57
    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    .line 62
    .line 63
    if-ne p2, v0, :cond_5

    .line 64
    .line 65
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 66
    .line 67
    if-eqz p2, :cond_5

    .line 68
    .line 69
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 72
    const/4 v0, 0x0

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Lcom/alibaba/fastjson2/function/Function;)V

    .line 76
    .line 77
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 78
    goto :goto_1

    .line 79
    .line 80
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemType:Ljava/lang/reflect/Type;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemClass:Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 89
    .line 90
    :goto_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 91
    return-object p1
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    .line 2
    const-class v0, [Ljava/lang/String;

    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    const-class v0, [Ljava/lang/Float;

    .line 10
    .line 11
    if-ne p2, v0, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 18
    .line 19
    const-class p2, Ljava/lang/Float;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_1
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_2
    const-class v0, [Ljava/lang/Double;

    .line 31
    .line 32
    if-ne p2, v0, :cond_4

    .line 33
    .line 34
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 39
    .line 40
    const-class p2, Ljava/lang/Double;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 46
    return-object p1

    .line 47
    .line 48
    :cond_3
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 49
    return-object p1

    .line 50
    .line 51
    :cond_4
    const-class v0, [Ljava/math/BigDecimal;

    .line 52
    .line 53
    if-ne p2, v0, :cond_6

    .line 54
    .line 55
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 60
    .line 61
    const-class p2, Ljava/math/BigDecimal;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->decimalFormat:Ljava/text/DecimalFormat;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 67
    return-object p1

    .line 68
    .line 69
    :cond_5
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 70
    return-object p1

    .line 71
    .line 72
    .line 73
    :cond_6
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 74
    move-result-object p1

    .line 75
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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V

    .line 50
    return v0
.end method

.method public writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V
    .locals 14

    .line 1
    move-object v1, p1

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 7
    move-result-wide v2

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 10
    or-long/2addr v2, v4

    .line 11
    .line 12
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    and-long/2addr v4, v2

    .line 16
    .line 17
    const-wide/16 v8, 0x0

    .line 18
    .line 19
    cmp-long v0, v4, v8

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v10, 0x1

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    move v11, v10

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v11, v4

    .line 27
    .line 28
    :goto_0
    if-eqz p2, :cond_2

    .line 29
    array-length v0, v7

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 34
    .line 35
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 36
    and-long/2addr v5, v2

    .line 37
    .line 38
    cmp-long v0, v5, v8

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 46
    .line 47
    :cond_2
    if-eqz v11, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, v7}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 59
    return-void

    .line 60
    .line 61
    :cond_3
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 62
    const/4 v5, 0x0

    .line 63
    .line 64
    if-eqz v0, :cond_c

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 71
    .line 72
    if-eq v0, v2, :cond_4

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 80
    :cond_4
    array-length v8, v7

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 84
    move v9, v4

    .line 85
    move-object v0, v5

    .line 86
    move v2, v11

    .line 87
    .line 88
    :goto_1
    if-ge v9, v8, :cond_a

    .line 89
    move v3, v2

    .line 90
    .line 91
    aget-object v2, v7, v9

    .line 92
    .line 93
    if-nez v2, :cond_5

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 97
    move v2, v3

    .line 98
    goto :goto_4

    .line 99
    .line 100
    .line 101
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    if-eq v4, v5, :cond_7

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 108
    move-result v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    .line 117
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 118
    move-result v0

    .line 119
    xor-int/2addr v0, v10

    .line 120
    :cond_6
    move v12, v0

    .line 121
    move-object v0, v3

    .line 122
    move-object v13, v4

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    move v12, v3

    .line 125
    move-object v13, v5

    .line 126
    .line 127
    :goto_2
    if-eqz v12, :cond_8

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v9, v2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    .line 133
    if-eqz v3, :cond_8

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 140
    goto :goto_3

    .line 141
    .line 142
    .line 143
    :cond_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->itemType:Ljava/lang/reflect/Type;

    .line 147
    .line 148
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 149
    .line 150
    .line 151
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 152
    .line 153
    if-eqz v12, :cond_9

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 157
    :cond_9
    :goto_3
    move v2, v12

    .line 158
    move-object v5, v13

    .line 159
    .line 160
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 161
    goto :goto_1

    .line 162
    .line 163
    :cond_a
    if-eqz v11, :cond_b

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 167
    :cond_b
    :goto_5
    return-void

    .line 168
    .line 169
    .line 170
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 171
    move v8, v4

    .line 172
    move-object v0, v5

    .line 173
    :goto_6
    array-length v4, v7

    .line 174
    .line 175
    if-ge v8, v4, :cond_10

    .line 176
    .line 177
    if-eqz v8, :cond_d

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 181
    :cond_d
    move-wide v3, v2

    .line 182
    .line 183
    aget-object v2, v7, v8

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 189
    move-object v9, v5

    .line 190
    move-wide v5, v3

    .line 191
    goto :goto_9

    .line 192
    .line 193
    .line 194
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    move-result-object v6

    .line 196
    .line 197
    if-ne v6, v5, :cond_f

    .line 198
    move-object v9, v5

    .line 199
    :goto_7
    move-wide v5, v3

    .line 200
    goto :goto_8

    .line 201
    .line 202
    .line 203
    :cond_f
    invoke-virtual {p0, p1, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 204
    move-result-object v0

    .line 205
    move-object v9, v6

    .line 206
    goto :goto_7

    .line 207
    .line 208
    .line 209
    :goto_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v3

    .line 211
    .line 212
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldType:Ljava/lang/reflect/Type;

    .line 213
    .line 214
    .line 215
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 216
    .line 217
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 218
    move-object v1, p1

    .line 219
    move-wide v2, v5

    .line 220
    move-object v5, v9

    .line 221
    goto :goto_6

    .line 222
    .line 223
    .line 224
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 225
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
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;->writeArray(Lcom/alibaba/fastjson2/JSONWriter;Z[Ljava/lang/Object;)V

    .line 17
    return-void
.end method
