.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;
.super Lcom/alibaba/fastjson2/writer/FieldWriterObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterObject<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final fieldClass:Ljava/lang/Class;

.field final fieldType:Ljava/lang/reflect/Type;

.field volatile objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final refDetect:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 4
    move-object p1, p0

    .line 5
    .line 6
    iput-object p7, p1, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldType:Ljava/lang/reflect/Type;

    .line 7
    .line 8
    iput-object p8, p1, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldClass:Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p8}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 12
    move-result p2

    .line 13
    .line 14
    xor-int/lit8 p2, p2, 0x1

    .line 15
    .line 16
    iput-boolean p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->refDetect:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldClass:Ljava/lang/Class;

    .line 3
    .line 4
    if-eq v0, p2, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 16
    return-object p1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->objectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 23
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 1
    const/4 v1, 0x0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const/4 p2, 0x1

    .line 7
    .line 8
    if-nez v4, :cond_4

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 14
    move-result-wide v4

    .line 15
    or-long/2addr v2, v4

    .line 16
    .line 17
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 18
    .line 19
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 20
    .line 21
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 22
    .line 23
    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 24
    or-long/2addr v4, v6

    .line 25
    and-long/2addr v2, v4

    .line 26
    .line 27
    const-wide/16 v4, 0x0

    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    return v1

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldClass:Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 41
    move-result v0

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldClass:Ljava/lang/Class;

    .line 50
    .line 51
    const-class v1, Ljava/lang/StringBuffer;

    .line 52
    .line 53
    if-eq v0, v1, :cond_3

    .line 54
    .line 55
    const-class v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    if-ne v0, v1, :cond_2

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeObjectNull(Ljava/lang/Class;)V

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeStringNull()V

    .line 66
    :goto_1
    return p2

    .line 67
    .line 68
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldClass:Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 72
    move-result-object v2

    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->unwrapped:Z

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 79
    .line 80
    iget-boolean v7, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->refDetect:Z

    .line 81
    move-object v3, p1

    .line 82
    move-object v8, v2

    .line 83
    move-object v2, p0

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->writeWithUnwrapped(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;JZLcom/alibaba/fastjson2/writer/ObjectWriter;)Z

    .line 87
    move-result p1

    .line 88
    move-object v9, v2

    .line 89
    move-object v2, v8

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    return p2

    .line 93
    :cond_5
    move-object v9, p0

    .line 94
    move-object v3, p1

    .line 95
    .line 96
    .line 97
    :cond_6
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 98
    .line 99
    iget-boolean p1, v3, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 100
    .line 101
    if-eqz p1, :cond_7

    .line 102
    .line 103
    iget-object v5, v9, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v6, v9, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldType:Ljava/lang/reflect/Type;

    .line 106
    .line 107
    iget-wide v7, v9, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 108
    .line 109
    .line 110
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 111
    goto :goto_2

    .line 112
    .line 113
    :cond_7
    iget-object v5, v9, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v6, v9, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldType:Ljava/lang/reflect/Type;

    .line 116
    .line 117
    iget-wide v7, v9, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 118
    .line 119
    .line 120
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 121
    :goto_2
    return p2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    move-object v9, p0

    .line 124
    move-object v3, p1

    .line 125
    move-object p1, v0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->isIgnoreErrorGetter()Z

    .line 129
    move-result p2

    .line 130
    .line 131
    if-eqz p2, :cond_8

    .line 132
    return v1

    .line 133
    :cond_8
    throw p1
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 10
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
    move-result-object v2

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->refDetect:Z

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    move v7, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v7, v1

    .line 26
    .line 27
    :goto_0
    if-eqz v7, :cond_3

    .line 28
    .line 29
    if-ne v2, p2, :cond_2

    .line 30
    .line 31
    const-string p2, ".."

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    .line 37
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, v2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 50
    return-void

    .line 51
    .line 52
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldClass:Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-wide v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 62
    move-result-wide v4

    .line 63
    .line 64
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 65
    .line 66
    iget-wide v8, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 67
    and-long/2addr v4, v8

    .line 68
    .line 69
    const-wide/16 v8, 0x0

    .line 70
    .line 71
    cmp-long p2, v4, v8

    .line 72
    .line 73
    if-eqz p2, :cond_4

    .line 74
    move v1, v3

    .line 75
    .line 76
    :cond_4
    iget-boolean p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 77
    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldType:Ljava/lang/reflect/Type;

    .line 85
    .line 86
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 87
    move-object v1, p1

    .line 88
    .line 89
    .line 90
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    move-object v1, p1

    .line 93
    .line 94
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldType:Ljava/lang/reflect/Type;

    .line 97
    .line 98
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 99
    .line 100
    .line 101
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 102
    goto :goto_1

    .line 103
    .line 104
    :cond_6
    if-eqz v1, :cond_7

    .line 105
    .line 106
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldType:Ljava/lang/reflect/Type;

    .line 109
    .line 110
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 111
    move-object v1, p1

    .line 112
    .line 113
    .line 114
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 115
    goto :goto_1

    .line 116
    :cond_7
    move-object v1, p1

    .line 117
    .line 118
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFinal;->fieldType:Ljava/lang/reflect/Type;

    .line 121
    .line 122
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 123
    .line 124
    .line 125
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 126
    .line 127
    :goto_1
    if-eqz v7, :cond_8

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 131
    :cond_8
    return-void
.end method
