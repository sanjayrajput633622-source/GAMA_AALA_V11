.class final Lcom/alibaba/fastjson2/writer/ObjectWriterArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterArray;


# instance fields
.field volatile itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final itemType:Ljava/lang/reflect/Type;

.field final typeNameBytes:[B

.field final typeNameHash:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;

    .line 3
    .line 4
    const-class v1, Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    .line 9
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterArray;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->itemType:Ljava/lang/reflect/Type;

    .line 6
    .line 7
    const-class v0, Ljava/lang/Object;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const-string p1, "[O"

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->typeNameBytes:[B

    .line 18
    .line 19
    const-string p1, "[0"

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->typeNameHash:J

    .line 26
    return-void

    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const/16 v1, 0x5b

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    check-cast p1, Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->typeNameBytes:[B

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 59
    move-result-wide v0

    .line 60
    .line 61
    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->typeNameHash:J

    .line 62
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 8
    move-object p1, p0

    .line 9
    return-void

    .line 10
    :cond_0
    move-object v1, p1

    .line 11
    move-object p1, p0

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 17
    return-void

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 21
    move-result p3

    .line 22
    .line 23
    check-cast p2, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 27
    const/4 p4, 0x0

    .line 28
    const/4 v0, 0x0

    .line 29
    move v7, v0

    .line 30
    move-object v0, p4

    .line 31
    :goto_0
    array-length v2, p2

    .line 32
    .line 33
    if-ge v7, v2, :cond_8

    .line 34
    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 39
    .line 40
    :cond_2
    aget-object v2, p2, v7

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 46
    goto :goto_2

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    if-ne v3, p4, :cond_4

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 57
    move-result p3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    if-eqz p3, :cond_5

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 67
    move-result p3

    .line 68
    .line 69
    xor-int/lit8 p3, p3, 0x1

    .line 70
    :cond_5
    move-object p4, v3

    .line 71
    .line 72
    :goto_1
    if-eqz p3, :cond_6

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v7, v2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 85
    goto :goto_2

    .line 86
    .line 87
    .line 88
    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->itemType:Ljava/lang/reflect/Type;

    .line 92
    move-wide v5, p5

    .line 93
    .line 94
    .line 95
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 96
    .line 97
    if-eqz p3, :cond_7

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 101
    .line 102
    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 103
    goto :goto_0

    .line 104
    .line 105
    .line 106
    :cond_8
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 107
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 8

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 10
    move-result p3

    .line 11
    move-object p5, p2

    .line 12
    .line 13
    check-cast p5, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    .line 17
    move-result p2

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->typeNameBytes:[B

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->typeNameHash:J

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 27
    :cond_1
    array-length p2, p5

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 31
    const/4 p2, 0x0

    .line 32
    const/4 p4, 0x0

    .line 33
    move p6, p4

    .line 34
    move p4, p3

    .line 35
    move-object p3, p2

    .line 36
    :goto_0
    array-length v0, p5

    .line 37
    .line 38
    if-ge p6, v0, :cond_7

    .line 39
    .line 40
    aget-object v3, p5, p6

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 46
    move-object v2, p1

    .line 47
    goto :goto_3

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-ne v0, p2, :cond_3

    .line 54
    move-object v1, p3

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 59
    move-result p4

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    if-eqz p4, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 69
    move-result p2

    .line 70
    .line 71
    xor-int/lit8 p4, p2, 0x1

    .line 72
    :cond_4
    move-object v1, p3

    .line 73
    move-object p2, v0

    .line 74
    .line 75
    :goto_1
    if-eqz p4, :cond_5

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p6, v3}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object p3

    .line 80
    .line 81
    if-eqz p3, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 88
    move-object v2, p1

    .line 89
    goto :goto_2

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v4

    .line 94
    .line 95
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->itemType:Ljava/lang/reflect/Type;

    .line 96
    .line 97
    const-wide/16 v6, 0x0

    .line 98
    move-object v2, p1

    .line 99
    .line 100
    .line 101
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 102
    .line 103
    if-eqz p4, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 107
    :cond_6
    :goto_2
    move-object p3, v1

    .line 108
    .line 109
    :goto_3
    add-int/lit8 p6, p6, 0x1

    .line 110
    move-object p1, v2

    .line 111
    goto :goto_0

    .line 112
    :cond_7
    return-void
.end method
