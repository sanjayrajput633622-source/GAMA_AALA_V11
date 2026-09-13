.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;

    .line 8
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
    .locals 1

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
    sget-object p3, Lcom/alibaba/fastjson2/util/TypeUtils;->PARAM_TYPE_LIST_STR:Ljava/lang/reflect/ParameterizedType;

    .line 9
    .line 10
    if-ne p4, p3, :cond_1

    .line 11
    .line 12
    const-class p3, Ljava/util/List;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_1
    instance-of p3, p4, Ljava/lang/Class;

    .line 16
    .line 17
    if-eqz p3, :cond_2

    .line 18
    move-object p3, p4

    .line 19
    .line 20
    check-cast p3, Ljava/lang/Class;

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_2
    instance-of p3, p4, Ljava/lang/reflect/ParameterizedType;

    .line 24
    .line 25
    if-eqz p3, :cond_3

    .line 26
    .line 27
    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    .line 28
    .line 29
    .line 30
    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 31
    move-result-object p3

    .line 32
    .line 33
    instance-of p4, p3, Ljava/lang/Class;

    .line 34
    .line 35
    if-eqz p4, :cond_3

    .line 36
    .line 37
    check-cast p3, Ljava/lang/Class;

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const/4 p3, 0x0

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    move-result-object p4

    .line 44
    .line 45
    const-class v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    if-eq p4, v0, :cond_5

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2, p3, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;J)Z

    .line 51
    move-result p3

    .line 52
    .line 53
    if-eqz p3, :cond_5

    .line 54
    .line 55
    sget-object p3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->CLASS_SUBLIST:Ljava/lang/Class;

    .line 56
    .line 57
    if-ne p4, p3, :cond_4

    .line 58
    move-object p4, v0

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-static {p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_5
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toList(Ljava/lang/Object;)Ljava/util/List;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/util/List;)V

    .line 73
    return-void
.end method
