.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;"
    }
.end annotation


# instance fields
.field annotationNames:[Ljava/lang/String;

.field final defineClass:Ljava/lang/Class;

.field final enumConstants:[Ljava/lang/Enum;

.field final enumType:Ljava/lang/Class;

.field final features:J

.field final hashCodes:[J

.field jsonbNames:[[B

.field final names:[Ljava/lang/String;

.field typeNameHash:J

.field typeNameJSONB:[B

.field final valueField:Ljava/lang/reflect/Member;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->defineClass:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->enumType:Ljava/lang/Class;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->features:J

    .line 10
    .line 11
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->valueField:Ljava/lang/reflect/Member;

    .line 12
    .line 13
    instance-of p1, p3, Ljava/lang/reflect/AccessibleObject;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    :try_start_0
    check-cast p3, Ljava/lang/reflect/AccessibleObject;

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :catchall_0
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    check-cast p1, [Ljava/lang/Enum;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->enumConstants:[Ljava/lang/Enum;

    .line 30
    array-length p2, p1

    .line 31
    .line 32
    new-array p2, p2, [Ljava/lang/String;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->names:[Ljava/lang/String;

    .line 35
    array-length p1, p1

    .line 36
    .line 37
    new-array p1, p1, [J

    .line 38
    .line 39
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->hashCodes:[J

    .line 40
    const/4 p1, 0x0

    .line 41
    .line 42
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->enumConstants:[Ljava/lang/Enum;

    .line 43
    array-length p3, p2

    .line 44
    .line 45
    if-ge p1, p3, :cond_1

    .line 46
    .line 47
    aget-object p2, p2, p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->names:[Ljava/lang/String;

    .line 54
    .line 55
    aput-object p2, p3, p1

    .line 56
    .line 57
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->hashCodes:[J

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 61
    move-result-wide p5

    .line 62
    .line 63
    aput-wide p5, p3, p1

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_1
    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->annotationNames:[Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 5

    .line 1
    move-object p3, p2

    .line 2
    .line 3
    check-cast p3, Ljava/lang/Enum;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->valueField:Ljava/lang/reflect/Member;

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    if-eqz p4, :cond_2

    .line 15
    .line 16
    :try_start_0
    instance-of v1, p4, Ljava/lang/reflect/Field;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    check-cast p4, Ljava/lang/reflect/Field;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p4

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    check-cast p4, Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p4

    .line 34
    .line 35
    :goto_0
    if-eq p4, p2, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-void

    .line 40
    .line 41
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 42
    .line 43
    const-string p3, "getEnumValue error"

    .line 44
    .line 45
    .line 46
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    throw p2

    .line 48
    .line 49
    :cond_2
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->features:J

    .line 50
    or-long/2addr p5, v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 54
    move-result-wide p4

    .line 55
    .line 56
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 57
    .line 58
    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 59
    and-long/2addr v1, p4

    .line 60
    .line 61
    const-wide/16 v3, 0x0

    .line 62
    .line 63
    cmp-long p2, v1, v3

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 73
    return-void

    .line 74
    .line 75
    :cond_3
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingOrdinal:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 76
    .line 77
    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 78
    and-long/2addr p4, v1

    .line 79
    .line 80
    cmp-long p2, p4, v3

    .line 81
    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 86
    move-result p2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 90
    return-void

    .line 91
    .line 92
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->annotationNames:[Ljava/lang/String;

    .line 93
    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 98
    move-result p2

    .line 99
    .line 100
    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->annotationNames:[Ljava/lang/String;

    .line 101
    array-length p5, p4

    .line 102
    .line 103
    if-ge p2, p5, :cond_5

    .line 104
    .line 105
    aget-object v0, p4, p2

    .line 106
    .line 107
    :cond_5
    if-nez v0, :cond_6

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    :cond_6
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    .line 4
    move-result p3

    .line 5
    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameJSONB:[B

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->enumType:Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    .line 19
    invoke-static {p3}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 20
    move-result-object p4

    .line 21
    .line 22
    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameJSONB:[B

    .line 23
    .line 24
    .line 25
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 26
    move-result-wide p3

    .line 27
    .line 28
    iput-wide p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameHash:J

    .line 29
    .line 30
    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameJSONB:[B

    .line 31
    .line 32
    iget-wide p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->typeNameHash:J

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 36
    .line 37
    :cond_1
    check-cast p2, Ljava/lang/Enum;

    .line 38
    .line 39
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    .line 43
    move-result p3

    .line 44
    .line 45
    if-eqz p3, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 53
    return-void

    .line 54
    .line 55
    :cond_2
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->jsonbNames:[[B

    .line 56
    .line 57
    if-nez p3, :cond_3

    .line 58
    .line 59
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->names:[Ljava/lang/String;

    .line 60
    array-length p3, p3

    .line 61
    .line 62
    new-array p3, p3, [[B

    .line 63
    .line 64
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->jsonbNames:[[B

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 68
    move-result p2

    .line 69
    .line 70
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->jsonbNames:[[B

    .line 71
    .line 72
    aget-object p3, p3, p2

    .line 73
    .line 74
    if-nez p3, :cond_4

    .line 75
    .line 76
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->names:[Ljava/lang/String;

    .line 77
    .line 78
    aget-object p3, p3, p2

    .line 79
    .line 80
    .line 81
    invoke-static {p3}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 82
    move-result-object p3

    .line 83
    .line 84
    iget-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;->jsonbNames:[[B

    .line 85
    .line 86
    aput-object p3, p4, p2

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    .line 90
    return-void
.end method
