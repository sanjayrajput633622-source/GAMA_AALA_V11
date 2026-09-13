.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

.field static final INSTANCE_FOR_FIELD:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

.field static final JSONB_TYPE_HASH:J

.field static final JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field final defineClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;-><init>(Ljava/lang/Class;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    .line 9
    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;-><init>(Ljava/lang/Class;)V

    .line 14
    .line 15
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->INSTANCE_FOR_FIELD:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    .line 16
    .line 17
    const-class v0, Ljava/util/Currency;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 25
    move-result-object v1

    .line 26
    .line 27
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->JSONB_TYPE_NAME_BYTES:[B

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->JSONB_TYPE_HASH:J

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->defineClass:Ljava/lang/Class;

    .line 6
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    check-cast p2, Ljava/util/Currency;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
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
    :cond_0
    check-cast p2, Ljava/util/Currency;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;)Z

    .line 12
    move-result p3

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->defineClass:Ljava/lang/Class;

    .line 17
    .line 18
    if-nez p3, :cond_1

    .line 19
    .line 20
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->JSONB_TYPE_NAME_BYTES:[B

    .line 21
    .line 22
    sget-wide p4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->JSONB_TYPE_HASH:J

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 33
    return-void
.end method
