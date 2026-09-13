.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

.field static final JSONB_TYPE_HASH:J

.field static final TYPE_NAME_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "[String"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 6
    move-result-object v1

    .line 7
    .line 8
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->TYPE_NAME_BYTES:[B

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->JSONB_TYPE_HASH:J

    .line 15
    .line 16
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

    .line 22
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
    .locals 0

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
    :cond_0
    check-cast p2, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

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
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    .line 10
    move-result p3

    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->TYPE_NAME_BYTES:[B

    .line 15
    .line 16
    sget-wide p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->JSONB_TYPE_HASH:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 20
    .line 21
    :cond_1
    check-cast p2, [Ljava/lang/String;

    .line 22
    array-length p3, p2

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 26
    const/4 p3, 0x0

    .line 27
    :goto_0
    array-length p4, p2

    .line 28
    .line 29
    if-ge p3, p4, :cond_4

    .line 30
    .line 31
    aget-object p4, p2, p3

    .line 32
    .line 33
    if-nez p4, :cond_3

    .line 34
    .line 35
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 36
    .line 37
    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 38
    .line 39
    sget-object p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 40
    .line 41
    iget-wide v0, p6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 42
    or-long/2addr p4, v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(J)Z

    .line 46
    move-result p4

    .line 47
    .line 48
    if-eqz p4, :cond_2

    .line 49
    .line 50
    const-string p4, ""

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 62
    .line 63
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_4
    return-void
.end method
