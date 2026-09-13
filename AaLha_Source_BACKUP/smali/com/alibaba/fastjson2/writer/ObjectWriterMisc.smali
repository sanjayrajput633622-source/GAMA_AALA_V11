.class final Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public synthetic getFeatures()J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/a;->a(Lcom/alibaba/fastjson2/writer/ObjectWriter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->b(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->c(Lcom/alibaba/fastjson2/writer/ObjectWriter;J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->d(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getFieldWriters()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/a;->e(Lcom/alibaba/fastjson2/writer/ObjectWriter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->f(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result p1

    return p1
.end method

.method public synthetic setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->g(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/Filter;)V

    return-void
.end method

.method public synthetic setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->h(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/NameFilter;)V

    return-void
.end method

.method public synthetic setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->i(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/PropertyFilter;)V

    return-void
.end method

.method public synthetic setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->j(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V

    return-void
.end method

.method public synthetic setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->k(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/filter/ValueFilter;)V

    return-void
.end method

.method public varargs synthetic toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->l(Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->m(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 5
    const-string p4, "java.util.regex.Pattern"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    const-string p4, "net.sf.json.JSONNull"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    const-string p4, "java.net.Inet6Address"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "com.fasterxml.jackson.databind.node.ArrayNode"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    const-string p4, "java.net.Inet4Address"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "java.text.SimpleDateFormat"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "java.net.InetSocketAddress"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 6
    check-cast p2, Ljava/net/InetSocketAddress;

    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 8
    const-string p3, "address"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 10
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 11
    const-string p3, "port"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 13
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void

    .line 15
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support class : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isUTF8()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 19
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    return-void

    .line 20
    :cond_4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_5
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 22
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 23
    :cond_7
    check-cast p2, Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p2

    .line 24
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/a;->n(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public synthetic writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->o(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/a;->p(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public synthetic writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/a;->q(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public synthetic writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/a;->r(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result p1

    return p1
.end method

.method public synthetic writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/writer/a;->s(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/a;->t(Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method
