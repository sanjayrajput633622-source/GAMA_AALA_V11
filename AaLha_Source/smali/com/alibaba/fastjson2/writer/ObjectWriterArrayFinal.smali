.class final Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field public static final DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

.field public static final DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

.field public static final FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;


# instance fields
.field public final format:Ljava/text/DecimalFormat;

.field final itemClass:Ljava/lang/Class;

.field volatile itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field public refDetect:Z

.field final typeNameBytes:[B

.field final typeNameHash:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 3
    .line 4
    const-class v1, Ljava/lang/Float;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 9
    .line 10
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->FLOAT_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 11
    .line 12
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 13
    .line 14
    const-class v1, Ljava/lang/Double;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 18
    .line 19
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DOUBLE_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 20
    .line 21
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 22
    .line 23
    const-class v1, Ljava/math/BigDecimal;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    .line 27
    .line 28
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->DECIMAL_ARRAY:Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemClass:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    .line 8
    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const/16 v0, 0x5b

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->typeNameBytes:[B

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->typeNameHash:J

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 44
    move-result p1

    .line 45
    .line 46
    xor-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->refDetect:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getItemObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 3
    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemClass:Ljava/lang/Class;

    .line 7
    .line 8
    const-class v1, Ljava/lang/Float;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;-><init>(Ljava/text/DecimalFormat;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const-class v1, Ljava/lang/Double;

    .line 28
    .line 29
    if-ne v0, v1, :cond_3

    .line 30
    .line 31
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;-><init>(Ljava/text/DecimalFormat;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    const-class v1, Ljava/math/BigDecimal;

    .line 47
    .line 48
    if-ne v0, v1, :cond_5

    .line 49
    .line 50
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->format:Ljava/text/DecimalFormat;

    .line 57
    const/4 v1, 0x0

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;-><init>(Ljava/text/DecimalFormat;Lcom/alibaba/fastjson2/function/Function;)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_4
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 71
    return-object p1

    .line 72
    :cond_6
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

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
    if-eqz p3, :cond_2

    .line 24
    .line 25
    iget-boolean p3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->refDetect:Z

    .line 26
    .line 27
    :cond_2
    check-cast p2, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 31
    const/4 p4, 0x0

    .line 32
    :goto_0
    array-length v0, p2

    .line 33
    .line 34
    if-ge p4, v0, :cond_7

    .line 35
    .line 36
    if-eqz p4, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 40
    .line 41
    :cond_3
    aget-object v2, p2, p4

    .line 42
    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    .line 50
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->getItemObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-eqz p3, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p4, v2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    if-eqz v3, :cond_5

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    iget-object v4, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemClass:Ljava/lang/Class;

    .line 73
    move-wide v5, p5

    .line 74
    .line 75
    .line 76
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 77
    .line 78
    if-eqz p3, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 82
    .line 83
    :cond_6
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 88
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
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->refDetect:Z

    .line 15
    :cond_1
    move-object v0, p2

    .line 16
    .line 17
    check-cast v0, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    .line 21
    move-result p2

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->typeNameBytes:[B

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->typeNameHash:J

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 31
    :cond_2
    array-length p2, v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 35
    const/4 p2, 0x0

    .line 36
    :goto_0
    array-length p4, v0

    .line 37
    .line 38
    if-ge p2, p4, :cond_6

    .line 39
    .line 40
    aget-object v3, v0, p2

    .line 41
    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 46
    :goto_1
    move-object v2, p1

    .line 47
    move-wide v6, p5

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->getItemObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    if-eqz p3, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object p4

    .line 59
    .line 60
    if-eqz p4, :cond_4

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 67
    goto :goto_1

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v4

    .line 72
    .line 73
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;->itemClass:Ljava/lang/Class;

    .line 74
    move-object v2, p1

    .line 75
    move-wide v6, p5

    .line 76
    .line 77
    .line 78
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 79
    .line 80
    if-eqz p3, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 84
    .line 85
    :cond_5
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 86
    move-object p1, v2

    .line 87
    move-wide p5, v6

    .line 88
    goto :goto_0

    .line 89
    :cond_6
    return-void
.end method
