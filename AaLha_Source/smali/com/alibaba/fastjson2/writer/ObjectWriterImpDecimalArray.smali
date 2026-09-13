.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;

.field static final JSONB_TYPE_NAME_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;

    .line 8
    .line 9
    const-string v0, "[BigDecimal"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 13
    move-result-object v0

    .line 14
    .line 15
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 5
    .line 6
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 7
    .line 8
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 9
    .line 10
    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 11
    or-long/2addr p2, p4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    check-cast p2, [Ljava/math/BigDecimal;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 34
    const/4 p3, 0x0

    .line 35
    :goto_0
    array-length p4, p2

    .line 36
    .line 37
    if-ge p3, p4, :cond_3

    .line 38
    .line 39
    if-eqz p3, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 43
    .line 44
    :cond_2
    aget-object p4, p2, p3

    .line 45
    .line 46
    const-wide/16 p5, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p4, p5, p6, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 51
    .line 52
    add-int/lit8 p3, p3, 0x1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 57
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

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
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    .line 10
    move-result p3

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;->JSONB_TYPE_NAME_BYTES:[B

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    const-wide p4, -0x1dad997bece99df5L    # -4.238441007007491E165

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 23
    .line 24
    :cond_1
    check-cast p2, [Ljava/math/BigDecimal;

    .line 25
    array-length p3, p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 29
    const/4 p3, 0x0

    .line 30
    :goto_0
    array-length p4, p2

    .line 31
    .line 32
    if-ge p3, p4, :cond_2

    .line 33
    .line 34
    aget-object p4, p2, p3

    .line 35
    .line 36
    const-wide/16 p5, 0x0

    .line 37
    const/4 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p4, p5, p6, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 41
    .line 42
    add-int/lit8 p3, p3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return-void
.end method
