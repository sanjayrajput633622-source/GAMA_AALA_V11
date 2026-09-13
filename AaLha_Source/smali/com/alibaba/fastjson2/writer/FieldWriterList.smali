.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterList;
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
.field final contentAs:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final itemClass:Ljava/lang/Class;

.field final itemClassNotReferenceDetect:Z

.field itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final itemType:Ljava/lang/reflect/Type;

.field listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final writeAsString:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

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
    move-object/from16 v0, p12

    .line 22
    move-object p3, v5

    .line 23
    .line 24
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->contentAs:Ljava/lang/Class;

    .line 25
    .line 26
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 27
    .line 28
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 29
    and-long/2addr v0, v3

    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    cmp-long v0, v0, v5

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x1

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    move v0, v8

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v0, v7

    .line 41
    .line 42
    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeAsString:Z

    .line 43
    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    const-class v0, Ljava/lang/Object;

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object v0, p2

    .line 49
    .line 50
    :goto_1
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 51
    .line 52
    instance-of v0, v0, Ljava/lang/Class;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    move-object v0, p2

    .line 56
    .line 57
    check-cast v0, Ljava/lang/Class;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    const-class v1, Ljava/lang/Enum;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 67
    move-result v1

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    new-instance p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;

    .line 72
    .line 73
    move-object/from16 v1, p9

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, v1, v0, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;-><init>(Ljava/lang/Class;Ljava/lang/Class;J)V

    .line 77
    .line 78
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 79
    goto :goto_2

    .line 80
    .line 81
    :cond_2
    move-object/from16 v1, p9

    .line 82
    .line 83
    const-class v2, Ljava/lang/String;

    .line 84
    .line 85
    if-ne v0, v2, :cond_3

    .line 86
    .line 87
    sget-object p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;

    .line 88
    .line 89
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move-object v3, v0

    .line 92
    .line 93
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    .line 94
    move-object v4, p2

    .line 95
    move-wide v5, p4

    .line 96
    .line 97
    move-object/from16 v2, p8

    .line 98
    .line 99
    .line 100
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    .line 101
    .line 102
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 103
    goto :goto_2

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    .line 110
    .line 111
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    .line 112
    .line 113
    if-eqz p2, :cond_6

    .line 114
    .line 115
    .line 116
    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 117
    move-result p2

    .line 118
    .line 119
    if-eqz p2, :cond_6

    .line 120
    move v7, v8

    .line 121
    .line 122
    :cond_6
    iput-boolean v7, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClassNotReferenceDetect:Z

    .line 123
    .line 124
    if-eqz p3, :cond_7

    .line 125
    .line 126
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    .line 127
    .line 128
    const-class v0, Ljava/util/Date;

    .line 129
    .line 130
    if-ne p2, v0, :cond_7

    .line 131
    .line 132
    new-instance p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    .line 133
    const/4 v0, 0x0

    .line 134
    .line 135
    .line 136
    invoke-direct {p2, p3, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 137
    .line 138
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 139
    :cond_7
    return-void
.end method


# virtual methods
.method public getItemClass()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public getItemType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 3
    return-object v0
.end method

.method public getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->contentAs:Ljava/lang/Class;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    return-object p2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 16
    return-object p1

    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 21
    .line 22
    if-ne p2, v0, :cond_2

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    .line 34
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    return-object v0

    .line 38
    .line 39
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 40
    .line 41
    if-eqz v0, :cond_7

    .line 42
    .line 43
    const-class v0, Ljava/lang/Double;

    .line 44
    .line 45
    if-ne p2, v0, :cond_5

    .line 46
    .line 47
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    .line 48
    .line 49
    new-instance p2, Ljava/text/DecimalFormat;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;-><init>(Ljava/text/DecimalFormat;)V

    .line 58
    .line 59
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 60
    return-object p1

    .line 61
    .line 62
    :cond_5
    const-class v0, Ljava/lang/Float;

    .line 63
    .line 64
    if-ne p2, v0, :cond_6

    .line 65
    .line 66
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    .line 67
    .line 68
    new-instance p2, Ljava/text/DecimalFormat;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;-><init>(Ljava/text/DecimalFormat;)V

    .line 77
    .line 78
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 79
    return-object p1

    .line 80
    .line 81
    :cond_6
    const-class v0, Ljava/math/BigDecimal;

    .line 82
    .line 83
    if-ne p2, v0, :cond_7

    .line 84
    .line 85
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 86
    .line 87
    new-instance p2, Ljava/text/DecimalFormat;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Lcom/alibaba/fastjson2/function/Function;)V

    .line 97
    .line 98
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 99
    return-object p1

    .line 100
    .line 101
    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 110
    return-object p1
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 18
    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->listWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 26
    return-object p1

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public writeList(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 11

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeListJSONB(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 14
    move-result-wide v7

    .line 15
    .line 16
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 17
    .line 18
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 19
    and-long/2addr v0, v7

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v0, v0, v2

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 37
    .line 38
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 39
    and-long/2addr v0, v7

    .line 40
    .line 41
    cmp-long v0, v0, v2

    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v9, 0x1

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    move v0, v9

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v1

    .line 49
    .line 50
    :goto_0
    if-eqz p2, :cond_3

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 57
    const/4 p2, 0x0

    .line 58
    move v10, v1

    .line 59
    move v1, v0

    .line 60
    move-object v0, p2

    .line 61
    .line 62
    .line 63
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 64
    move-result v2

    .line 65
    .line 66
    if-ge v10, v2, :cond_b

    .line 67
    .line 68
    if-eqz v10, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-interface {p3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    if-nez v4, :cond_5

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    const-class v3, Ljava/lang/String;

    .line 88
    .line 89
    if-ne v2, v3, :cond_6

    .line 90
    .line 91
    check-cast v4, Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 95
    :goto_2
    move-object v3, p1

    .line 96
    goto :goto_6

    .line 97
    .line 98
    :cond_6
    if-ne v2, p2, :cond_7

    .line 99
    :goto_3
    move-object v2, v0

    .line 100
    goto :goto_4

    .line 101
    .line 102
    .line 103
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 104
    move-result p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    if-eqz p2, :cond_8

    .line 111
    .line 112
    .line 113
    invoke-static {v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 114
    move-result p2

    .line 115
    xor-int/2addr p2, v9

    .line 116
    :cond_8
    move v1, p2

    .line 117
    move-object p2, v2

    .line 118
    goto :goto_3

    .line 119
    .line 120
    :goto_4
    if-eqz v1, :cond_9

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v10, v4}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    if-eqz v0, :cond_9

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 133
    move-object v3, p1

    .line 134
    goto :goto_5

    .line 135
    :cond_9
    const/4 v5, 0x0

    .line 136
    .line 137
    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 138
    move-object v3, p1

    .line 139
    .line 140
    .line 141
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 142
    .line 143
    if-eqz v1, :cond_a

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 147
    :cond_a
    :goto_5
    move-object v0, v2

    .line 148
    .line 149
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 150
    move-object p1, v3

    .line 151
    goto :goto_1

    .line 152
    :cond_b
    move-object v3, p1

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 156
    return-void
.end method

.method public final writeListJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 13

    .line 26
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v7

    .line 27
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v1

    .line 28
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    .line 29
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v7

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    if-nez v10, :cond_1

    goto/16 :goto_9

    .line 30
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 31
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v7

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_1

    :cond_2
    move v2, v1

    .line 32
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p1, p2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 35
    :cond_3
    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 v3, 0x0

    move-object v4, v3

    :goto_2
    if-ge v1, v10, :cond_c

    move-object v5, v4

    .line 36
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    move-object v12, v3

    move-object v4, v5

    move-object v3, p1

    goto/16 :goto_8

    .line 38
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, v3, :cond_8

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v2

    .line 40
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    if-ne v6, v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v3, :cond_5

    goto :goto_3

    .line 41
    :cond_5
    invoke-virtual {p0, p1, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    :goto_3
    if-eqz v2, :cond_6

    .line 42
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    if-ne v6, v2, :cond_7

    .line 43
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClassNotReferenceDetect:Z

    :goto_4
    xor-int/2addr v2, v9

    :cond_6
    move v11, v2

    move-object v2, v3

    move-object v12, v6

    goto :goto_5

    .line 44
    :cond_7
    invoke-static {v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_4

    :cond_8
    move v11, v2

    move-object v12, v3

    move-object v2, v5

    :goto_5
    if-eqz v11, :cond_9

    .line 45
    invoke-virtual {p1, v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, p1

    goto :goto_7

    :cond_9
    if-eqz v0, :cond_a

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_6

    :cond_a
    move-object v3, p1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_6
    if-eqz v11, :cond_b

    .line 48
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_b
    :goto_7
    move-object v4, v2

    move v2, v11

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object p1, v3

    move-object v3, v12

    goto :goto_2

    :cond_c
    :goto_9
    return-void
.end method

.method public final writeListJSONB(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v7

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v7

    cmp-long v4, v4, v2

    if-eqz v4, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    goto/16 :goto_9

    .line 4
    :cond_1
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v7

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 6
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    .line 7
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p1, p3, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 10
    :cond_4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    const/4 v3, 0x0

    move-object v4, v3

    :goto_2
    if-ge v1, p2, :cond_d

    move-object v5, v4

    .line 11
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    move-object v11, v3

    move-object v4, v5

    move-object v3, p1

    goto/16 :goto_8

    .line 13
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, v3, :cond_9

    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v2

    .line 15
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    if-ne v6, v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v3, :cond_6

    goto :goto_3

    .line 16
    :cond_6
    invoke-virtual {p0, p1, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    :goto_3
    if-eqz v2, :cond_7

    .line 17
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    if-ne v6, v2, :cond_8

    .line 18
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClassNotReferenceDetect:Z

    :goto_4
    xor-int/2addr v2, v9

    :cond_7
    move v10, v2

    move-object v2, v3

    move-object v11, v6

    goto :goto_5

    .line 19
    :cond_8
    invoke-static {v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_4

    :cond_9
    move v10, v2

    move-object v11, v3

    move-object v2, v5

    :goto_5
    if-eqz v10, :cond_a

    .line 20
    invoke-virtual {p1, v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 21
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    move-object v3, p1

    goto :goto_7

    :cond_a
    if-eqz v0, :cond_b

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    move-object v3, p1

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_6

    :cond_b
    move-object v3, p1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_6
    if-eqz v10, :cond_c

    .line 25
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_c
    :goto_7
    move-object v4, v2

    move v2, v10

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object p1, v3

    move-object v3, v11

    goto :goto_2

    :cond_d
    :goto_9
    return-void
.end method

.method public writeListStr(Lcom/alibaba/fastjson2/JSONWriter;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 6
    .line 7
    :cond_0
    iget-boolean p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public writeListValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    iget-boolean v1, v2, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeListJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-wide v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 18
    move-result-wide v6

    .line 19
    .line 20
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 21
    .line 22
    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 23
    and-long/2addr v3, v6

    .line 24
    .line 25
    const-wide/16 v8, 0x0

    .line 26
    .line 27
    cmp-long v1, v3, v8

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x1

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    move v1, v11

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v10

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 38
    const/4 v3, 0x0

    .line 39
    move-object v4, v3

    .line 40
    move v12, v10

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 44
    move-result v5

    .line 45
    .line 46
    if-ge v12, v5, :cond_b

    .line 47
    .line 48
    if-eqz v12, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 52
    .line 53
    :cond_2
    move-object/from16 v13, p2

    .line 54
    .line 55
    .line 56
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 63
    goto :goto_6

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    move-result-object v14

    .line 68
    .line 69
    const-class v15, Ljava/lang/String;

    .line 70
    .line 71
    if-ne v14, v15, :cond_4

    .line 72
    .line 73
    check-cast v5, Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 77
    goto :goto_6

    .line 78
    .line 79
    :cond_4
    iget-boolean v15, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->writeAsString:Z

    .line 80
    .line 81
    if-eqz v15, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 89
    goto :goto_6

    .line 90
    .line 91
    :cond_5
    if-ne v14, v3, :cond_6

    .line 92
    move-object v15, v3

    .line 93
    :goto_2
    move v14, v1

    .line 94
    move-object v1, v4

    .line 95
    goto :goto_4

    .line 96
    .line 97
    :cond_6
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 98
    .line 99
    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 100
    and-long/2addr v3, v6

    .line 101
    .line 102
    cmp-long v1, v3, v8

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    move v1, v11

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    move v1, v10

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-virtual {v0, v2, v14}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 111
    move-result-object v4

    .line 112
    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    .line 116
    invoke-static {v14}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 117
    move-result v1

    .line 118
    xor-int/2addr v1, v11

    .line 119
    :cond_8
    move-object v15, v14

    .line 120
    goto :goto_2

    .line 121
    .line 122
    :goto_4
    if-eqz v14, :cond_9

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v12, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(ILjava/lang/Object;)Z

    .line 126
    move-result v3

    .line 127
    .line 128
    if-eqz v3, :cond_9

    .line 129
    goto :goto_5

    .line 130
    :cond_9
    const/4 v4, 0x0

    .line 131
    move-object v3, v5

    .line 132
    .line 133
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 134
    .line 135
    .line 136
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 137
    .line 138
    if-eqz v14, :cond_a

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 142
    :cond_a
    :goto_5
    move-object v4, v1

    .line 143
    move v1, v14

    .line 144
    move-object v3, v15

    .line 145
    .line 146
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 147
    goto :goto_1

    .line 148
    .line 149
    .line 150
    :cond_b
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 151
    return-void
.end method

.method public final writeListValueJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/util/List;)V
    .locals 13

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 6
    move-result-wide v7

    .line 7
    .line 8
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 9
    .line 10
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 11
    and-long/2addr v0, v7

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v9, 0x1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    move v0, v9

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    move-result v10

    .line 27
    .line 28
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 29
    .line 30
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 31
    and-long/2addr v4, v7

    .line 32
    .line 33
    cmp-long v2, v4, v2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    move v2, v9

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v2, v1

    .line 39
    .line 40
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p1, v10}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 61
    const/4 v3, 0x0

    .line 62
    move-object v4, v3

    .line 63
    .line 64
    :goto_2
    if-ge v1, v10, :cond_b

    .line 65
    move-object v5, v4

    .line 66
    .line 67
    .line 68
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    if-nez v4, :cond_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 75
    move-object v12, v3

    .line 76
    move-object v4, v5

    .line 77
    move-object v3, p1

    .line 78
    .line 79
    goto/16 :goto_8

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    move-result-object v6

    .line 84
    .line 85
    if-eq v6, v3, :cond_7

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 89
    move-result v2

    .line 90
    .line 91
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 92
    .line 93
    if-ne v6, v3, :cond_4

    .line 94
    .line 95
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    goto :goto_3

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p0, p1, v6}, Lcom/alibaba/fastjson2/writer/FieldWriterList;->getItemWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 102
    move-result-object v3

    .line 103
    .line 104
    :goto_3
    if-eqz v2, :cond_5

    .line 105
    .line 106
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClass:Ljava/lang/Class;

    .line 107
    .line 108
    if-ne v6, v2, :cond_6

    .line 109
    .line 110
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemClassNotReferenceDetect:Z

    .line 111
    :goto_4
    xor-int/2addr v2, v9

    .line 112
    :cond_5
    move v11, v2

    .line 113
    move-object v2, v3

    .line 114
    move-object v12, v6

    .line 115
    goto :goto_5

    .line 116
    .line 117
    .line 118
    :cond_6
    invoke-static {v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 119
    move-result v2

    .line 120
    goto :goto_4

    .line 121
    :cond_7
    move v11, v2

    .line 122
    move-object v12, v3

    .line 123
    move-object v2, v5

    .line 124
    .line 125
    :goto_5
    if-eqz v11, :cond_8

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(ILjava/lang/Object;)Z

    .line 129
    move-result v3

    .line 130
    .line 131
    if-eqz v3, :cond_8

    .line 132
    move-object v3, p1

    .line 133
    goto :goto_7

    .line 134
    .line 135
    :cond_8
    if-eqz v0, :cond_9

    .line 136
    .line 137
    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v5

    .line 140
    .line 141
    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 142
    move-object v3, p1

    .line 143
    .line 144
    .line 145
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 146
    goto :goto_6

    .line 147
    :cond_9
    move-object v3, p1

    .line 148
    .line 149
    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v5

    .line 152
    .line 153
    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/FieldWriterList;->itemType:Ljava/lang/reflect/Type;

    .line 154
    .line 155
    .line 156
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 157
    .line 158
    :goto_6
    if-eqz v11, :cond_a

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 162
    :cond_a
    :goto_7
    move-object v4, v2

    .line 163
    move v2, v11

    .line 164
    .line 165
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 166
    move-object p1, v3

    .line 167
    move-object v3, v12

    .line 168
    goto :goto_2

    .line 169
    :cond_b
    return-void
.end method
