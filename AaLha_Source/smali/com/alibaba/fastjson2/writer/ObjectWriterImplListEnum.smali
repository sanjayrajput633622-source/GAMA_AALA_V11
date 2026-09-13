.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# instance fields
.field final defineClass:Ljava/lang/Class;

.field final enumType:Ljava/lang/Class;

.field final features:J

.field typeNameJSONB:[B


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->defineClass:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->enumType:Ljava/lang/Class;

    .line 8
    .line 9
    iput-wide p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->features:J

    .line 10
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 14
    const/4 p3, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    move-result p4

    .line 19
    .line 20
    if-ge p3, p4, :cond_3

    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object p4

    .line 30
    .line 31
    check-cast p4, Ljava/lang/String;

    .line 32
    .line 33
    if-nez p4, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 37
    goto :goto_1

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 41
    .line 42
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 47
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 9

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;)Z

    .line 14
    move-result p4

    .line 15
    .line 16
    if-eqz p4, :cond_1

    .line 17
    .line 18
    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->defineClass:Ljava/lang/Class;

    .line 19
    .line 20
    if-eq p4, p3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 24
    move-result-object p3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toList(Ljava/lang/Object;)Ljava/util/List;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 35
    move-result p3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 39
    .line 40
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    .line 44
    move-result p4

    .line 45
    const/4 v0, 0x0

    .line 46
    .line 47
    :goto_0
    if-ge v0, p3, :cond_5

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    move-object v4, v1

    .line 53
    .line 54
    check-cast v4, Ljava/lang/Enum;

    .line 55
    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 60
    move-object v3, p1

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->enumType:Ljava/lang/Class;

    .line 68
    .line 69
    if-eq v1, v2, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->enumType:Ljava/lang/Class;

    .line 76
    .line 77
    iget-wide v7, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListEnum;->features:J

    .line 78
    or-long/2addr v7, p5

    .line 79
    const/4 v5, 0x0

    .line 80
    move-object v3, p1

    .line 81
    .line 82
    .line 83
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move-object v3, p1

    .line 86
    .line 87
    if-eqz p4, :cond_4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 100
    .line 101
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 102
    move-object p1, v3

    .line 103
    goto :goto_0

    .line 104
    :cond_5
    move-object v3, p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 108
    return-void
.end method
