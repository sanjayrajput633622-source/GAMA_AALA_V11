.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterMap;
.super Lcom/alibaba/fastjson2/writer/FieldWriterObject;
.source "SourceFile"


# instance fields
.field protected final contentAs:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected contentAsFieldType:Ljava/lang/reflect/Type;

.field private final keyType:Ljava/lang/reflect/Type;

.field volatile mapWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field private final valueType:Ljava/lang/reflect/Type;

.field final valueTypeRefDetect:Z

.field volatile valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 4
    move-object p1, p0

    .line 5
    .line 6
    instance-of p2, p7, Ljava/lang/reflect/ParameterizedType;

    .line 7
    const/4 p3, 0x0

    .line 8
    const/4 p4, 0x2

    .line 9
    const/4 p5, 0x1

    .line 10
    const/4 p6, 0x0

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    check-cast p7, Ljava/lang/reflect/ParameterizedType;

    .line 15
    .line 16
    .line 17
    invoke-interface {p7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 18
    move-result-object p2

    .line 19
    array-length p7, p2

    .line 20
    .line 21
    if-ne p7, p4, :cond_0

    .line 22
    .line 23
    aget-object p7, p2, p3

    .line 24
    .line 25
    aget-object p2, p2, p5

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p2, p6

    .line 28
    move-object p7, p2

    .line 29
    .line 30
    :goto_0
    const-class p9, Ljava/lang/Object;

    .line 31
    .line 32
    if-nez p7, :cond_1

    .line 33
    move-object p7, p9

    .line 34
    .line 35
    :cond_1
    if-nez p2, :cond_2

    .line 36
    move-object p2, p9

    .line 37
    .line 38
    :cond_2
    if-eqz p11, :cond_3

    .line 39
    .line 40
    new-instance p6, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 41
    .line 42
    new-array p4, p4, [Ljava/lang/reflect/Type;

    .line 43
    .line 44
    const-class p9, Ljava/lang/String;

    .line 45
    .line 46
    aput-object p9, p4, p3

    .line 47
    .line 48
    aput-object p11, p4, p5

    .line 49
    .line 50
    .line 51
    invoke-direct {p6, p8, p4}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 52
    .line 53
    :cond_3
    iput-object p11, p1, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->contentAs:Ljava/lang/Class;

    .line 54
    .line 55
    iput-object p6, p1, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->contentAsFieldType:Ljava/lang/reflect/Type;

    .line 56
    .line 57
    iput-object p7, p1, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->keyType:Ljava/lang/reflect/Type;

    .line 58
    .line 59
    iput-object p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->valueType:Ljava/lang/reflect/Type;

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 67
    move-result p2

    .line 68
    xor-int/2addr p2, p5

    .line 69
    .line 70
    iput-boolean p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->valueTypeRefDetect:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 7

    .line 1
    .line 2
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->contentAs:Ljava/lang/Class;

    .line 3
    .line 4
    if-eqz v2, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    :cond_0
    move-object v3, p2

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    return-object p1

    .line 20
    .line 21
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 22
    .line 23
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->contentAsFieldType:Ljava/lang/reflect/Type;

    .line 24
    .line 25
    const-wide/high16 v5, -0x8000000000000000L

    .line 26
    or-long/2addr v5, v0

    .line 27
    .line 28
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->keyType:Ljava/lang/reflect/Type;

    .line 31
    move-object v3, p2

    .line 32
    .line 33
    .line 34
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    .line 35
    .line 36
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterMap;->mapWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 37
    return-object v0

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-super {p0, p1, v3}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method
