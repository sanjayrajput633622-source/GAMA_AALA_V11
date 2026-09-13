.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;

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
    :cond_0
    check-cast p2, Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 16
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
    const-string p3, "java.lang.Class"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 18
    .line 19
    :cond_1
    check-cast p2, Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 27
    return-void
.end method
