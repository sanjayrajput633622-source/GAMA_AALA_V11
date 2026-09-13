.class public final Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

.field static INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

.field static final TYPE_HASH_JSONObject1O:J

.field static final TYPE_NAME_JSONObject1O:[B


# instance fields
.field final contentAs:Z

.field final features:J

.field final format:Ljava/lang/String;

.field final jsonObject1:Z

.field final jsonObject1InnerMap:Ljava/lang/reflect/Field;

.field jsonObject1InnerMapOffset:J

.field final jsonbTypeInfo:[B

.field final keyType:Ljava/lang/reflect/Type;

.field volatile keyWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final objectClass:Ljava/lang/Class;

.field final objectType:Ljava/lang/reflect/Type;

.field final typeInfoUTF16:[C

.field final typeInfoUTF8:[B

.field final typeNameHash:J

.field final valueType:Ljava/lang/reflect/Type;

.field final valueTypeRefDetect:Z

.field volatile valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    const-string v0, "JO10"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 6
    move-result-object v1

    .line 7
    .line 8
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->TYPE_NAME_JSONObject1O:[B

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->TYPE_HASH_JSONObject1O:J

    .line 15
    .line 16
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 17
    .line 18
    const-class v6, Lcom/alibaba/fastjson2/JSONObject;

    .line 19
    .line 20
    const-wide/16 v7, 0x0

    .line 21
    .line 22
    const-class v3, Ljava/lang/String;

    .line 23
    .line 24
    const-class v4, Ljava/lang/Object;

    .line 25
    .line 26
    const-class v5, Lcom/alibaba/fastjson2/JSONObject;

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    .line 30
    .line 31
    sput-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;J)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, p1

    move-object v0, p0

    move-object v3, p1

    move-wide v5, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMapOffset:J

    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyType:Ljava/lang/reflect/Type;

    .line 6
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 7
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->format:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectClass:Ljava/lang/Class;

    .line 9
    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectType:Ljava/lang/reflect/Type;

    .line 10
    iput-wide p6, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 11
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueTypeRefDetect:Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result p2

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueTypeRefDetect:Z

    :goto_0
    const-wide/high16 p2, -0x8000000000000000L

    and-long/2addr p2, p6

    const-wide/16 p5, 0x0

    cmp-long p2, p2, p5

    if-eqz p2, :cond_1

    move p2, p1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 13
    :goto_1
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->contentAs:Z

    .line 14
    invoke-static {p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\"@type\":\""

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\""

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeInfoUTF16:[C

    .line 17
    sget-object p5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeInfoUTF8:[B

    .line 18
    const-string p3, "JO1"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1:Z

    .line 19
    invoke-static {p2}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    move-result-object p5

    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonbTypeInfo:[B

    .line 20
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p5

    iput-wide p5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeNameHash:J

    if-eqz p3, :cond_3

    .line 21
    const-string p2, "map"

    invoke-static {p4, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMap:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_2

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMap:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static getINSTANCE1()Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
    .locals 8

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    .line 8
    move-result-object v4

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 17
    .line 18
    const-class v3, Ljava/lang/Object;

    .line 19
    .line 20
    const-wide/16 v6, 0x0

    .line 21
    .line 22
    const-class v2, Ljava/lang/String;

    .line 23
    move-object v5, v4

    .line 24
    .line 25
    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    .line 27
    .line 28
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 29
    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE_1x:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 31
    return-object v0
.end method

.method public static isWriteAsString(Ljava/lang/Object;J)Z
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    or-long/2addr v0, v2

    .line 10
    and-long/2addr p1, v0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long p1, p1, v0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/e;->a(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    instance-of p0, p0, Ljava/util/Date;

    .line 35
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public static of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
    .locals 7

    .line 1
    const-class v0, Lcom/alibaba/fastjson2/JSONObject;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getClassJSONObject1x()Ljava/lang/Class;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 4
    invoke-static {}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->getINSTANCE1()Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    move-object v4, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
    .locals 3

    .line 6
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 7
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/Class;J)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;
    .locals 10

    .line 9
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 10
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 11
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 12
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 13
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 14
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 15
    aget-object v0, v0, v2

    move-object v4, v0

    move-object v3, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    .line 16
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    const-wide/16 v8, 0x0

    move-object v7, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;J)V

    return-object v2
.end method


# virtual methods
.method public mapKeyToString(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter;J)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 14
    .line 15
    if-nez v0, :cond_6

    .line 16
    .line 17
    instance-of v0, p1, Ljava/lang/Long;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-static {p1, p3, p4}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->isWriteAsString(Ljava/lang/Object;J)Z

    .line 24
    move-result p3

    .line 25
    .line 26
    if-eqz p3, :cond_3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    .line 33
    .line 34
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->getContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p3}, Lcom/alibaba/fastjson2/a;->C1(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter$Context;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    if-eqz p1, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 45
    move-result p3

    .line 46
    const/4 p4, 0x1

    .line 47
    .line 48
    if-le p3, p4, :cond_5

    .line 49
    .line 50
    iget-boolean p2, p2, Lcom/alibaba/fastjson2/JSONWriter;->useSingleQuote:Z

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    const/16 p2, 0x27

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_4
    const/16 p2, 0x22

    .line 58
    :goto_0
    const/4 v0, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 62
    move-result v0

    .line 63
    .line 64
    if-ne v0, p2, :cond_5

    .line 65
    sub-int/2addr p3, p4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 69
    move-result v0

    .line 70
    .line 71
    if-ne v0, p2, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    :cond_5
    return-object p1

    .line 77
    .line 78
    .line 79
    :cond_6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 23

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    move-object/from16 v1, p4

    .line 9
    .line 10
    move-wide/from16 v3, p5

    .line 11
    .line 12
    iget-boolean v5, v2, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 22
    move-result v5

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 28
    return-void

    .line 29
    :cond_1
    move-object v5, v8

    .line 30
    .line 31
    check-cast v5, Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    .line 35
    move-result v9

    .line 36
    .line 37
    iget-object v6, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectType:Ljava/lang/reflect/Type;

    .line 38
    .line 39
    if-ne v1, v6, :cond_2

    .line 40
    .line 41
    iget-object v6, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectClass:Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v8, v6, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteMapTypeInfo(Ljava/lang/Object;Ljava/lang/Class;J)Z

    .line 45
    move-result v6

    .line 46
    .line 47
    if-nez v6, :cond_3

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v2, v8, v1, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    .line 51
    move-result v1

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    :cond_3
    const/4 v1, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    const/4 v1, 0x0

    .line 57
    .line 58
    :goto_0
    if-nez v1, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 62
    move-result v6

    .line 63
    .line 64
    if-eqz v6, :cond_5

    .line 65
    .line 66
    const/16 v1, 0x7b

    .line 67
    .line 68
    const/16 v3, 0x7d

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(CC)V

    .line 72
    return-void

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    .line 80
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 81
    .line 82
    .line 83
    :cond_6
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 84
    move-result-wide v6

    .line 85
    .line 86
    or-long v12, v3, v6

    .line 87
    .line 88
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->MapSortField:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 89
    .line 90
    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 91
    .line 92
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->SortMapEntriesByKeys:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 93
    .line 94
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 95
    or-long/2addr v3, v6

    .line 96
    and-long/2addr v3, v12

    .line 97
    .line 98
    const-wide/16 v14, 0x0

    .line 99
    .line 100
    cmp-long v3, v3, v14

    .line 101
    .line 102
    if-eqz v3, :cond_8

    .line 103
    .line 104
    instance-of v3, v5, Ljava/util/SortedMap;

    .line 105
    .line 106
    if-nez v3, :cond_8

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    move-result-object v3

    .line 111
    .line 112
    const-class v4, Ljava/util/LinkedHashMap;

    .line 113
    .line 114
    if-ne v3, v4, :cond_7

    .line 115
    .line 116
    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 117
    and-long/2addr v3, v12

    .line 118
    .line 119
    cmp-long v1, v3, v14

    .line 120
    .line 121
    if-eqz v1, :cond_8

    .line 122
    .line 123
    :cond_7
    new-instance v1, Ljava/util/TreeMap;

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 127
    move-object v5, v1

    .line 128
    .line 129
    :cond_8
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 130
    .line 131
    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 132
    .line 133
    .line 134
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 135
    move-result-object v3

    .line 136
    .line 137
    .line 138
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 139
    move-result-object v16

    .line 140
    .line 141
    .line 142
    :cond_9
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    move-result v3

    .line 144
    .line 145
    if-eqz v3, :cond_1e

    .line 146
    .line 147
    .line 148
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    move-result-object v3

    .line 150
    .line 151
    check-cast v3, Ljava/util/Map$Entry;

    .line 152
    .line 153
    .line 154
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 155
    move-result-object v4

    .line 156
    .line 157
    .line 158
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    if-nez v4, :cond_a

    .line 162
    .line 163
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 164
    .line 165
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 166
    and-long/2addr v4, v12

    .line 167
    .line 168
    cmp-long v4, v4, v14

    .line 169
    .line 170
    if-eqz v4, :cond_9

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v3, v2, v12, v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->writeMapKey(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter;J)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 180
    goto :goto_1

    .line 181
    .line 182
    :cond_a
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 183
    .line 184
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 185
    and-long/2addr v5, v12

    .line 186
    .line 187
    cmp-long v5, v5, v14

    .line 188
    .line 189
    if-eqz v5, :cond_c

    .line 190
    .line 191
    instance-of v5, v4, Ljava/util/Collection;

    .line 192
    .line 193
    if-eqz v5, :cond_b

    .line 194
    move-object v5, v4

    .line 195
    .line 196
    check-cast v5, Ljava/util/Collection;

    .line 197
    .line 198
    .line 199
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 200
    move-result v5

    .line 201
    .line 202
    if-eqz v5, :cond_b

    .line 203
    goto :goto_1

    .line 204
    .line 205
    .line 206
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    move-result-object v5

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 211
    move-result v5

    .line 212
    .line 213
    if-eqz v5, :cond_c

    .line 214
    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 217
    move-result v5

    .line 218
    .line 219
    if-nez v5, :cond_c

    .line 220
    goto :goto_1

    .line 221
    .line 222
    :cond_c
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 223
    const/4 v6, 0x0

    .line 224
    .line 225
    if-eqz v5, :cond_d

    .line 226
    move-object v5, v1

    .line 227
    .line 228
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 229
    move-object v7, v5

    .line 230
    const/4 v5, 0x0

    .line 231
    .line 232
    move-object/from16 v18, v6

    .line 233
    .line 234
    move-object/from16 v17, v7

    .line 235
    .line 236
    const-wide/16 v6, 0x0

    .line 237
    .line 238
    move-object/from16 v19, v4

    .line 239
    const/4 v4, 0x0

    .line 240
    .line 241
    move-object/from16 v11, v17

    .line 242
    .line 243
    move-object/from16 v10, v18

    .line 244
    .line 245
    .line 246
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 247
    move-object v4, v3

    .line 248
    move-object v6, v10

    .line 249
    goto :goto_2

    .line 250
    :cond_d
    move-object v11, v1

    .line 251
    .line 252
    move-object/from16 v19, v4

    .line 253
    move-object v10, v6

    .line 254
    move-object v4, v3

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v4, v2, v12, v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->writeMapKey(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter;J)Ljava/lang/String;

    .line 258
    move-result-object v6

    .line 259
    .line 260
    .line 261
    :goto_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 262
    .line 263
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->contentAs:Z

    .line 264
    .line 265
    if-eqz v1, :cond_e

    .line 266
    .line 267
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 268
    .line 269
    check-cast v1, Ljava/lang/Class;

    .line 270
    goto :goto_3

    .line 271
    .line 272
    .line 273
    :cond_e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    move-result-object v1

    .line 275
    .line 276
    :goto_3
    const-class v3, Ljava/lang/String;

    .line 277
    .line 278
    if-ne v1, v3, :cond_10

    .line 279
    .line 280
    move-object/from16 v4, v19

    .line 281
    .line 282
    check-cast v4, Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 286
    :cond_f
    :goto_4
    move-object v1, v11

    .line 287
    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :cond_10
    const-class v3, Ljava/lang/Integer;

    .line 291
    .line 292
    if-ne v1, v3, :cond_11

    .line 293
    .line 294
    move-object/from16 v4, v19

    .line 295
    .line 296
    check-cast v4, Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    .line 300
    goto :goto_4

    .line 301
    .line 302
    :cond_11
    const-class v3, Ljava/lang/Long;

    .line 303
    .line 304
    if-ne v1, v3, :cond_13

    .line 305
    .line 306
    iget-wide v3, v11, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    .line 307
    .line 308
    const-wide/16 v20, 0x4

    .line 309
    .line 310
    and-long v3, v3, v20

    .line 311
    .line 312
    cmp-long v3, v3, v14

    .line 313
    .line 314
    if-nez v3, :cond_12

    .line 315
    .line 316
    move-object/from16 v4, v19

    .line 317
    .line 318
    check-cast v4, Ljava/lang/Long;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    .line 322
    goto :goto_4

    .line 323
    .line 324
    .line 325
    :cond_12
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 326
    move-result-object v1

    .line 327
    .line 328
    const-class v5, Ljava/lang/Long;

    .line 329
    move-object v4, v6

    .line 330
    move-wide v6, v12

    .line 331
    .line 332
    move-object/from16 v3, v19

    .line 333
    .line 334
    .line 335
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 336
    goto :goto_4

    .line 337
    .line 338
    :cond_13
    move-object/from16 v3, v19

    .line 339
    .line 340
    const-class v5, Ljava/lang/Boolean;

    .line 341
    .line 342
    if-ne v1, v5, :cond_14

    .line 343
    move-object v4, v3

    .line 344
    .line 345
    check-cast v4, Ljava/lang/Boolean;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    move-result v1

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 353
    goto :goto_4

    .line 354
    .line 355
    :cond_14
    const-class v5, Ljava/math/BigDecimal;

    .line 356
    .line 357
    if-ne v1, v5, :cond_16

    .line 358
    .line 359
    iget-wide v5, v11, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    .line 360
    .line 361
    const-wide/16 v18, 0x8

    .line 362
    .line 363
    and-long v5, v5, v18

    .line 364
    .line 365
    cmp-long v5, v5, v14

    .line 366
    .line 367
    if-nez v5, :cond_15

    .line 368
    move-object v4, v3

    .line 369
    .line 370
    check-cast v4, Ljava/math/BigDecimal;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v4, v12, v13, v10}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    .line 374
    goto :goto_4

    .line 375
    .line 376
    .line 377
    :cond_15
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 378
    move-result-object v1

    .line 379
    .line 380
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 381
    .line 382
    iget-wide v6, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    .line 383
    .line 384
    .line 385
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 386
    goto :goto_4

    .line 387
    .line 388
    :cond_16
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 389
    .line 390
    if-ne v1, v5, :cond_18

    .line 391
    .line 392
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 393
    .line 394
    if-eqz v5, :cond_17

    .line 395
    .line 396
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 397
    goto :goto_5

    .line 398
    .line 399
    .line 400
    :cond_17
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 401
    move-result-object v1

    .line 402
    .line 403
    .line 404
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    move-result-object v5

    .line 406
    .line 407
    .line 408
    invoke-static {v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    .line 409
    move-result v5

    .line 410
    goto :goto_7

    .line 411
    .line 412
    :cond_18
    const-class v5, Lcom/alibaba/fastjson2/JSONObject;

    .line 413
    .line 414
    if-ne v1, v5, :cond_19

    .line 415
    .line 416
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 417
    :goto_6
    const/4 v5, 0x0

    .line 418
    goto :goto_7

    .line 419
    .line 420
    :cond_19
    const-class v5, Lcom/alibaba/fastjson2/JSONArray;

    .line 421
    .line 422
    if-ne v1, v5, :cond_1a

    .line 423
    .line 424
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    .line 425
    goto :goto_6

    .line 426
    .line 427
    .line 428
    :cond_1a
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 429
    move-result-object v5

    .line 430
    .line 431
    .line 432
    invoke-static {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    .line 433
    move-result v1

    .line 434
    .line 435
    move-object/from16 v22, v5

    .line 436
    move v5, v1

    .line 437
    .line 438
    move-object/from16 v1, v22

    .line 439
    .line 440
    :goto_7
    if-eqz v9, :cond_1b

    .line 441
    .line 442
    if-eqz v6, :cond_1b

    .line 443
    .line 444
    if-nez v5, :cond_1b

    .line 445
    const/4 v10, 0x1

    .line 446
    goto :goto_8

    .line 447
    :cond_1b
    const/4 v10, 0x0

    .line 448
    .line 449
    :goto_8
    if-eqz v10, :cond_1d

    .line 450
    .line 451
    if-ne v3, v8, :cond_1c

    .line 452
    .line 453
    const-string v1, ".."

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 457
    .line 458
    goto/16 :goto_4

    .line 459
    .line 460
    .line 461
    :cond_1c
    invoke-virtual {v2, v6, v3}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 462
    move-result-object v5

    .line 463
    .line 464
    if-eqz v5, :cond_1d

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 471
    .line 472
    goto/16 :goto_4

    .line 473
    .line 474
    :cond_1d
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 475
    .line 476
    iget-wide v6, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    .line 477
    .line 478
    .line 479
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 480
    .line 481
    if-eqz v10, :cond_f

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 485
    .line 486
    goto/16 :goto_4

    .line 487
    .line 488
    .line 489
    :cond_1e
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 490
    return-void
.end method

.method public writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    .line 1
    .line 2
    check-cast p2, Ljava/util/Map;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteNulls()Z

    .line 9
    move-result p3

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p2

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result p4

    .line 22
    .line 23
    if-eqz p4, :cond_3

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object p4

    .line 28
    .line 29
    check-cast p4, Ljava/util/Map$Entry;

    .line 30
    .line 31
    .line 32
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    move-result-object p5

    .line 34
    move-object v3, p5

    .line 35
    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-result-object p4

    .line 59
    .line 60
    const-class p5, Ljava/lang/String;

    .line 61
    .line 62
    if-ne p4, p5, :cond_2

    .line 63
    .line 64
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 68
    move-object v1, p1

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 76
    .line 77
    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    .line 78
    move-object v1, p1

    .line 79
    .line 80
    .line 81
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 82
    :goto_1
    move-object p1, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move-object v1, p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 88
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 27

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    move-object/from16 v8, p2

    .line 7
    .line 8
    move-object/from16 v1, p4

    .line 9
    .line 10
    move-wide/from16 v3, p5

    .line 11
    .line 12
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectType:Ljava/lang/reflect/Type;

    .line 13
    .line 14
    if-ne v1, v5, :cond_0

    .line 15
    .line 16
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectClass:Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v8, v5, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteMapTypeInfo(Ljava/lang/Object;Ljava/lang/Class;J)Z

    .line 20
    move-result v5

    .line 21
    .line 22
    if-nez v5, :cond_1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {v2, v8, v1, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    .line 26
    move-result v3

    .line 27
    .line 28
    if-eqz v3, :cond_5

    .line 29
    .line 30
    :cond_1
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMap:Ljava/lang/reflect/Field;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    iget-wide v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonObject1InnerMapOffset:J

    .line 35
    .line 36
    const-wide/16 v6, -0x1

    .line 37
    .line 38
    cmp-long v6, v4, v6

    .line 39
    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v8, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    instance-of v3, v3, Ljava/util/LinkedHashMap;

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_2
    :try_start_0
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    instance-of v3, v3, Ljava/util/LinkedHashMap;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    :cond_3
    const/4 v3, 0x0

    .line 58
    .line 59
    :goto_0
    if-eqz v3, :cond_4

    .line 60
    .line 61
    sget-object v3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->TYPE_NAME_JSONObject1O:[B

    .line 62
    .line 63
    sget-wide v4, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->TYPE_HASH_JSONObject1O:J

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_4
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->jsonbTypeInfo:[B

    .line 70
    .line 71
    iget-wide v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeNameHash:J

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    .line 75
    :cond_5
    :goto_1
    move-object v10, v8

    .line 76
    .line 77
    check-cast v10, Ljava/util/Map;

    .line 78
    .line 79
    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 83
    .line 84
    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 85
    .line 86
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->objectType:Ljava/lang/reflect/Type;

    .line 87
    const/4 v11, 0x1

    .line 88
    .line 89
    if-ne v1, v5, :cond_7

    .line 90
    :cond_6
    :goto_2
    move-object v12, v4

    .line 91
    goto :goto_3

    .line 92
    .line 93
    :cond_7
    instance-of v5, v1, Ljava/lang/reflect/ParameterizedType;

    .line 94
    .line 95
    if-eqz v5, :cond_6

    .line 96
    .line 97
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 98
    .line 99
    .line 100
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 101
    move-result-object v1

    .line 102
    array-length v5, v1

    .line 103
    const/4 v6, 0x2

    .line 104
    .line 105
    if-ne v5, v6, :cond_6

    .line 106
    .line 107
    aget-object v4, v1, v11

    .line 108
    goto :goto_2

    .line 109
    .line 110
    .line 111
    :goto_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getFeatures()J

    .line 112
    move-result-wide v13

    .line 113
    .line 114
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 115
    .line 116
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 117
    .line 118
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 119
    .line 120
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 121
    or-long/2addr v4, v6

    .line 122
    and-long/2addr v4, v13

    .line 123
    .line 124
    const-wide/16 v15, 0x0

    .line 125
    .line 126
    cmp-long v1, v4, v15

    .line 127
    .line 128
    if-eqz v1, :cond_8

    .line 129
    .line 130
    move/from16 v17, v11

    .line 131
    goto :goto_4

    .line 132
    .line 133
    :cond_8
    const/16 v17, 0x0

    .line 134
    .line 135
    :goto_4
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 136
    .line 137
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 138
    and-long/2addr v4, v13

    .line 139
    .line 140
    cmp-long v1, v4, v15

    .line 141
    .line 142
    if-eqz v1, :cond_9

    .line 143
    move v1, v11

    .line 144
    goto :goto_5

    .line 145
    :cond_9
    const/4 v1, 0x0

    .line 146
    .line 147
    :goto_5
    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 148
    .line 149
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 150
    .line 151
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 152
    and-long/2addr v4, v13

    .line 153
    .line 154
    cmp-long v4, v4, v15

    .line 155
    .line 156
    if-eqz v4, :cond_a

    .line 157
    .line 158
    move/from16 v18, v11

    .line 159
    goto :goto_6

    .line 160
    .line 161
    :cond_a
    const/16 v18, 0x0

    .line 162
    .line 163
    .line 164
    :goto_6
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 165
    move-result-object v4

    .line 166
    .line 167
    .line 168
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 169
    move-result-object v19

    .line 170
    .line 171
    const/16 v20, 0x0

    .line 172
    .line 173
    move-object/from16 v5, v20

    .line 174
    .line 175
    move-object/from16 v21, v5

    .line 176
    const/4 v4, 0x0

    .line 177
    .line 178
    .line 179
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    move-result v6

    .line 181
    .line 182
    if-eqz v6, :cond_2d

    .line 183
    .line 184
    .line 185
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    move-result-object v6

    .line 187
    .line 188
    check-cast v6, Ljava/util/Map$Entry;

    .line 189
    .line 190
    .line 191
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 192
    move-result-object v7

    .line 193
    .line 194
    move-wide/from16 p3, v15

    .line 195
    .line 196
    .line 197
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 198
    move-result-object v15

    .line 199
    .line 200
    if-nez v15, :cond_11

    .line 201
    .line 202
    if-eqz v17, :cond_10

    .line 203
    .line 204
    instance-of v15, v7, Ljava/lang/String;

    .line 205
    .line 206
    if-eqz v15, :cond_b

    .line 207
    .line 208
    check-cast v7, Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 212
    move v15, v1

    .line 213
    .line 214
    move-object/from16 v25, v3

    .line 215
    .line 216
    move/from16 v26, v4

    .line 217
    move-object v11, v5

    .line 218
    goto :goto_b

    .line 219
    .line 220
    .line 221
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    move-result-object v15

    .line 223
    .line 224
    if-eqz v18, :cond_c

    .line 225
    .line 226
    .line 227
    invoke-static {v15}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 228
    move-result v16

    .line 229
    .line 230
    if-nez v16, :cond_c

    .line 231
    .line 232
    move/from16 v16, v11

    .line 233
    goto :goto_8

    .line 234
    .line 235
    :cond_c
    const/16 v16, 0x0

    .line 236
    .line 237
    :goto_8
    if-eqz v16, :cond_d

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v4, v6}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    const-string v11, "key"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v11, v7}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    move-result-object v11

    .line 247
    goto :goto_9

    .line 248
    .line 249
    :cond_d
    move-object/from16 v11, v20

    .line 250
    .line 251
    :goto_9
    if-eqz v11, :cond_e

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 255
    move v15, v1

    .line 256
    .line 257
    move-object/from16 v25, v3

    .line 258
    .line 259
    move/from16 v26, v4

    .line 260
    move-object v11, v5

    .line 261
    move-object v9, v6

    .line 262
    move-object v3, v7

    .line 263
    goto :goto_a

    .line 264
    .line 265
    .line 266
    :cond_e
    invoke-virtual {v3, v15, v15, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 267
    move-result-object v11

    .line 268
    move-object v15, v5

    .line 269
    const/4 v5, 0x0

    .line 270
    .line 271
    move-object/from16 v23, v3

    .line 272
    .line 273
    move-object/from16 v22, v6

    .line 274
    move-object v3, v7

    .line 275
    .line 276
    const-wide/16 v6, 0x0

    .line 277
    .line 278
    move/from16 v24, v4

    .line 279
    const/4 v4, 0x0

    .line 280
    move-object v9, v15

    .line 281
    move v15, v1

    .line 282
    move-object v1, v11

    .line 283
    move-object v11, v9

    .line 284
    .line 285
    move-object/from16 v9, v22

    .line 286
    .line 287
    move-object/from16 v25, v23

    .line 288
    .line 289
    move/from16 v26, v24

    .line 290
    .line 291
    .line 292
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 293
    .line 294
    :goto_a
    if-eqz v16, :cond_f

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_f
    :goto_b
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 304
    .line 305
    move-object/from16 p6, v12

    .line 306
    move v9, v15

    .line 307
    .line 308
    move-object/from16 v12, v25

    .line 309
    .line 310
    :goto_c
    move/from16 v6, v26

    .line 311
    const/4 v4, 0x0

    .line 312
    .line 313
    goto/16 :goto_16

    .line 314
    :cond_10
    move-object v11, v5

    .line 315
    move v9, v1

    .line 316
    move v6, v4

    .line 317
    .line 318
    move-object/from16 p6, v12

    .line 319
    const/4 v4, 0x0

    .line 320
    move-object v12, v3

    .line 321
    .line 322
    goto/16 :goto_16

    .line 323
    :cond_11
    move v9, v1

    .line 324
    .line 325
    move-object/from16 v25, v3

    .line 326
    .line 327
    move/from16 v26, v4

    .line 328
    move-object v11, v5

    .line 329
    move-object v3, v7

    .line 330
    .line 331
    instance-of v1, v3, Ljava/lang/String;

    .line 332
    .line 333
    if-nez v1, :cond_12

    .line 334
    .line 335
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 336
    .line 337
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 338
    and-long/2addr v4, v13

    .line 339
    .line 340
    cmp-long v4, v4, p3

    .line 341
    .line 342
    if-nez v4, :cond_13

    .line 343
    .line 344
    :cond_12
    move/from16 v16, v1

    .line 345
    .line 346
    move-object/from16 p6, v12

    .line 347
    .line 348
    move-object/from16 v12, v25

    .line 349
    goto :goto_d

    .line 350
    .line 351
    :cond_13
    if-nez v3, :cond_14

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 355
    .line 356
    move/from16 v16, v1

    .line 357
    .line 358
    move-object/from16 p6, v12

    .line 359
    .line 360
    move-object/from16 v12, v25

    .line 361
    goto :goto_f

    .line 362
    .line 363
    :cond_14
    if-eqz v18, :cond_15

    .line 364
    .line 365
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 366
    const/4 v5, 0x0

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson2/JSONWriter;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    .line 370
    .line 371
    .line 372
    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    move-result-object v4

    .line 374
    .line 375
    move-object/from16 v5, v25

    .line 376
    .line 377
    .line 378
    invoke-virtual {v5, v4, v4, v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 379
    move-result-object v4

    .line 380
    const/4 v5, 0x0

    .line 381
    .line 382
    const-wide/16 v6, 0x0

    .line 383
    .line 384
    move/from16 v16, v1

    .line 385
    move-object v1, v4

    .line 386
    const/4 v4, 0x0

    .line 387
    .line 388
    move-object/from16 p6, v12

    .line 389
    .line 390
    move-object/from16 v12, v25

    .line 391
    .line 392
    .line 393
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 394
    .line 395
    if-eqz v18, :cond_18

    .line 396
    .line 397
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 398
    const/4 v4, 0x1

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    .line 402
    goto :goto_f

    .line 403
    .line 404
    :goto_d
    if-eqz v16, :cond_16

    .line 405
    move-object v7, v3

    .line 406
    .line 407
    check-cast v7, Ljava/lang/String;

    .line 408
    goto :goto_e

    .line 409
    .line 410
    .line 411
    :cond_16
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 412
    move-result-object v7

    .line 413
    .line 414
    :goto_e
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 415
    .line 416
    if-eqz v1, :cond_17

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    .line 420
    .line 421
    instance-of v1, v15, Ljava/lang/String;

    .line 422
    .line 423
    if-eqz v1, :cond_18

    .line 424
    .line 425
    check-cast v15, Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson2/JSONWriter;->writeSymbol(Ljava/lang/String;)V

    .line 429
    goto :goto_c

    .line 430
    .line 431
    .line 432
    :cond_17
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 433
    .line 434
    :cond_18
    :goto_f
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->contentAs:Z

    .line 435
    .line 436
    if-eqz v1, :cond_19

    .line 437
    .line 438
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 439
    .line 440
    check-cast v1, Ljava/lang/Class;

    .line 441
    :goto_10
    move-object v5, v1

    .line 442
    goto :goto_11

    .line 443
    .line 444
    .line 445
    :cond_19
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    move-result-object v1

    .line 447
    goto :goto_10

    .line 448
    .line 449
    :goto_11
    const-class v1, Ljava/lang/String;

    .line 450
    .line 451
    if-ne v5, v1, :cond_1a

    .line 452
    .line 453
    check-cast v15, Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 457
    .line 458
    goto/16 :goto_c

    .line 459
    .line 460
    :cond_1a
    const-class v1, Ljava/lang/Integer;

    .line 461
    .line 462
    if-ne v5, v1, :cond_1b

    .line 463
    .line 464
    check-cast v15, Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(Ljava/lang/Integer;)V

    .line 468
    .line 469
    goto/16 :goto_c

    .line 470
    .line 471
    :cond_1b
    const-class v1, Ljava/lang/Long;

    .line 472
    .line 473
    if-ne v5, v1, :cond_1c

    .line 474
    .line 475
    check-cast v15, Ljava/lang/Long;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(Ljava/lang/Long;)V

    .line 479
    .line 480
    goto/16 :goto_c

    .line 481
    .line 482
    :cond_1c
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 483
    .line 484
    if-ne v5, v1, :cond_1e

    .line 485
    .line 486
    if-eqz v18, :cond_1d

    .line 487
    .line 488
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueTypeRefDetect:Z

    .line 489
    .line 490
    if-eqz v1, :cond_1d

    .line 491
    :goto_12
    const/4 v1, 0x1

    .line 492
    goto :goto_13

    .line 493
    :cond_1d
    const/4 v1, 0x0

    .line 494
    goto :goto_13

    .line 495
    .line 496
    :cond_1e
    if-eqz v18, :cond_1d

    .line 497
    .line 498
    .line 499
    invoke-static {v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    .line 500
    move-result v1

    .line 501
    .line 502
    if-nez v1, :cond_1d

    .line 503
    goto :goto_12

    .line 504
    .line 505
    :goto_13
    if-eqz v1, :cond_24

    .line 506
    .line 507
    if-ne v15, v8, :cond_1f

    .line 508
    .line 509
    const-string v1, ".."

    .line 510
    .line 511
    .line 512
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 513
    .line 514
    goto/16 :goto_c

    .line 515
    .line 516
    :cond_1f
    if-eqz v16, :cond_20

    .line 517
    move-object v7, v3

    .line 518
    .line 519
    check-cast v7, Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v7, v15}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 523
    move-result-object v4

    .line 524
    :goto_14
    move-object v7, v4

    .line 525
    .line 526
    move/from16 v6, v26

    .line 527
    const/4 v4, 0x0

    .line 528
    .line 529
    const/16 v22, 0x0

    .line 530
    goto :goto_15

    .line 531
    .line 532
    .line 533
    :cond_20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    move-result-object v4

    .line 535
    .line 536
    .line 537
    invoke-static {v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    .line 538
    move-result v4

    .line 539
    .line 540
    if-eqz v4, :cond_21

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 544
    move-result-object v4

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2, v4, v15}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 548
    move-result-object v4

    .line 549
    goto :goto_14

    .line 550
    .line 551
    .line 552
    :cond_21
    invoke-interface {v10}, Ljava/util/Map;->size()I

    .line 553
    move-result v4

    .line 554
    const/4 v6, 0x1

    .line 555
    .line 556
    if-eq v4, v6, :cond_22

    .line 557
    .line 558
    instance-of v4, v10, Ljava/util/SortedMap;

    .line 559
    .line 560
    if-nez v4, :cond_22

    .line 561
    .line 562
    instance-of v4, v10, Ljava/util/LinkedHashMap;

    .line 563
    .line 564
    if-nez v4, :cond_22

    .line 565
    .line 566
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 567
    const/4 v4, 0x0

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2, v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    .line 571
    move v1, v4

    .line 572
    .line 573
    move-object/from16 v7, v20

    .line 574
    .line 575
    move/from16 v6, v26

    .line 576
    .line 577
    const/16 v22, 0x1

    .line 578
    goto :goto_15

    .line 579
    :cond_22
    const/4 v4, 0x0

    .line 580
    .line 581
    move/from16 v6, v26

    .line 582
    .line 583
    .line 584
    invoke-virtual {v2, v6, v15}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    .line 585
    move-result-object v7

    .line 586
    .line 587
    move/from16 v22, v4

    .line 588
    .line 589
    :goto_15
    if-eqz v7, :cond_23

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 596
    .line 597
    :goto_16
    move-object/from16 v5, p6

    .line 598
    move v15, v4

    .line 599
    .line 600
    move/from16 v26, v6

    .line 601
    const/4 v4, 0x1

    .line 602
    .line 603
    goto/16 :goto_1c

    .line 604
    .line 605
    :cond_23
    :goto_17
    move/from16 v16, v1

    .line 606
    goto :goto_18

    .line 607
    .line 608
    :cond_24
    move/from16 v6, v26

    .line 609
    const/4 v4, 0x0

    .line 610
    .line 611
    move/from16 v22, v4

    .line 612
    goto :goto_17

    .line 613
    .line 614
    :goto_18
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 615
    .line 616
    if-ne v5, v1, :cond_26

    .line 617
    .line 618
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 619
    .line 620
    if-eqz v1, :cond_26

    .line 621
    .line 622
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 623
    .line 624
    :cond_25
    :goto_19
    move/from16 v26, v6

    .line 625
    goto :goto_1b

    .line 626
    .line 627
    :cond_26
    if-ne v11, v5, :cond_27

    .line 628
    .line 629
    move/from16 v26, v6

    .line 630
    .line 631
    move-object/from16 v1, v21

    .line 632
    goto :goto_1b

    .line 633
    .line 634
    :cond_27
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    .line 635
    .line 636
    if-ne v5, v1, :cond_28

    .line 637
    .line 638
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 639
    goto :goto_1a

    .line 640
    .line 641
    :cond_28
    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    .line 642
    .line 643
    if-ne v5, v1, :cond_29

    .line 644
    .line 645
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    .line 646
    goto :goto_1a

    .line 647
    .line 648
    .line 649
    :cond_29
    invoke-virtual {v12, v5, v5, v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 650
    move-result-object v1

    .line 651
    .line 652
    :goto_1a
    if-nez v21, :cond_2a

    .line 653
    .line 654
    move-object/from16 v21, v1

    .line 655
    move-object v11, v5

    .line 656
    .line 657
    :cond_2a
    iget-object v7, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 658
    .line 659
    if-ne v5, v7, :cond_25

    .line 660
    .line 661
    iput-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 662
    goto :goto_19

    .line 663
    .line 664
    :goto_1b
    iget-wide v6, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    .line 665
    move v5, v4

    .line 666
    move-object v4, v3

    .line 667
    move-object v3, v15

    .line 668
    move v15, v5

    .line 669
    .line 670
    move-object/from16 v5, p6

    .line 671
    .line 672
    .line 673
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 674
    .line 675
    if-eqz v22, :cond_2b

    .line 676
    .line 677
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 678
    const/4 v4, 0x1

    .line 679
    .line 680
    .line 681
    invoke-virtual {v2, v1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    .line 682
    goto :goto_1c

    .line 683
    :cond_2b
    const/4 v4, 0x1

    .line 684
    .line 685
    if-eqz v16, :cond_2c

    .line 686
    .line 687
    .line 688
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 689
    .line 690
    :cond_2c
    :goto_1c
    add-int/lit8 v1, v26, 0x1

    .line 691
    .line 692
    move-wide/from16 v15, p3

    .line 693
    move-object v3, v12

    .line 694
    move-object v12, v5

    .line 695
    move-object v5, v11

    .line 696
    move v11, v4

    .line 697
    move v4, v1

    .line 698
    move v1, v9

    .line 699
    .line 700
    goto/16 :goto_7

    .line 701
    .line 702
    .line 703
    :cond_2d
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 704
    return-void
.end method

.method public writeMapKey(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter;J)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "null"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 19
    return-object p1

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p1, p3, p4}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->isWriteAsString(Ljava/lang/Object;J)Z

    .line 23
    move-result p3

    .line 24
    .line 25
    if-eqz p3, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_2
    instance-of p3, p1, Ljava/lang/Integer;

    .line 36
    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(I)V

    .line 47
    return-object v0

    .line 48
    .line 49
    :cond_3
    instance-of p3, p1, Ljava/lang/Long;

    .line 50
    .line 51
    if-eqz p3, :cond_4

    .line 52
    .line 53
    check-cast p1, Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 57
    move-result-wide p3

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(J)V

    .line 61
    return-object v0

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameAny(Ljava/lang/Object;)V

    .line 65
    return-object v0
.end method

.method public writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeInfoUTF8:[B

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([B)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->typeInfoUTF16:[C

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNameRaw([C)V

    .line 16
    :goto_0
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 19

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v3, p1

    .line 5
    .line 6
    move-object/from16 v0, p2

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 16
    move-object v2, v0

    .line 17
    .line 18
    check-cast v2, Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    .line 22
    move-result-wide v4

    .line 23
    .line 24
    or-long v9, p5, v4

    .line 25
    .line 26
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->MapSortField:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 27
    .line 28
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 29
    .line 30
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->SortMapEntriesByKeys:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 31
    .line 32
    iget-wide v7, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 33
    or-long/2addr v4, v7

    .line 34
    and-long/2addr v4, v9

    .line 35
    .line 36
    const-wide/16 v11, 0x0

    .line 37
    .line 38
    cmp-long v4, v4, v11

    .line 39
    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    instance-of v4, v2, Ljava/util/SortedMap;

    .line 43
    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    const-class v5, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    if-ne v4, v5, :cond_1

    .line 53
    .line 54
    iget-wide v4, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 55
    and-long/2addr v4, v9

    .line 56
    .line 57
    cmp-long v4, v4, v11

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    :cond_1
    new-instance v4, Ljava/util/TreeMap;

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 65
    move-object v2, v4

    .line 66
    .line 67
    :cond_2
    iget-object v4, v3, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getBeforeFilter()Lcom/alibaba/fastjson2/filter/BeforeFilter;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v3, v0}, Lcom/alibaba/fastjson2/filter/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyPreFilter()Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    .line 80
    move-result-object v13

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getNameFilter()Lcom/alibaba/fastjson2/filter/NameFilter;

    .line 84
    move-result-object v14

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getValueFilter()Lcom/alibaba/fastjson2/filter/ValueFilter;

    .line 88
    move-result-object v15

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getPropertyFilter()Lcom/alibaba/fastjson2/filter/PropertyFilter;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getAfterFilter()Lcom/alibaba/fastjson2/filter/AfterFilter;

    .line 96
    move-result-object v6

    .line 97
    .line 98
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 99
    .line 100
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isEnabled(J)Z

    .line 104
    move-result v16

    .line 105
    .line 106
    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 107
    .line 108
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v7, v8}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isEnabled(J)Z

    .line 112
    move-result v17

    .line 113
    .line 114
    .line 115
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 116
    move-result-object v2

    .line 117
    .line 118
    .line 119
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v18

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v2

    .line 125
    .line 126
    if-eqz v2, :cond_12

    .line 127
    .line 128
    .line 129
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    check-cast v2, Ljava/util/Map$Entry;

    .line 133
    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 136
    move-result-object v4

    .line 137
    .line 138
    if-nez v4, :cond_5

    .line 139
    .line 140
    if-nez v16, :cond_5

    .line 141
    goto :goto_0

    .line 142
    .line 143
    .line 144
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 145
    move-result-object v2

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v2, v3, v9, v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->mapKeyToString(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter;J)Ljava/lang/String;

    .line 149
    move-result-object v2

    .line 150
    .line 151
    if-eqz v17, :cond_6

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v2, v4}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    move-result-object v7

    .line 156
    .line 157
    if-eqz v7, :cond_6

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 170
    goto :goto_0

    .line 171
    .line 172
    :cond_6
    if-eqz v13, :cond_7

    .line 173
    .line 174
    .line 175
    :try_start_0
    invoke-interface {v13, v3, v0, v2}, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;->process(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/String;)Z

    .line 176
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .line 178
    if-nez v7, :cond_7

    .line 179
    .line 180
    if-eqz v17, :cond_4

    .line 181
    .line 182
    .line 183
    :goto_1
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 184
    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    .line 186
    .line 187
    goto/16 :goto_5

    .line 188
    .line 189
    :cond_7
    if-eqz v14, :cond_8

    .line 190
    .line 191
    .line 192
    :try_start_1
    invoke-interface {v14, v0, v2, v4}, Lcom/alibaba/fastjson2/filter/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    :cond_8
    if-eqz v5, :cond_9

    .line 196
    .line 197
    .line 198
    invoke-interface {v5, v0, v2, v4}, Lcom/alibaba/fastjson2/filter/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 199
    move-result v7

    .line 200
    .line 201
    if-nez v7, :cond_9

    .line 202
    .line 203
    if-eqz v17, :cond_4

    .line 204
    goto :goto_1

    .line 205
    .line 206
    :cond_9
    if-eqz v15, :cond_a

    .line 207
    .line 208
    .line 209
    invoke-interface {v15, v0, v2, v4}, Lcom/alibaba/fastjson2/filter/ValueFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-result-object v4

    .line 211
    .line 212
    :cond_a
    if-nez v4, :cond_c

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v9, v10}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 216
    move-result-wide v7

    .line 217
    .line 218
    move-wide/from16 p5, v11

    .line 219
    .line 220
    sget-object v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 221
    .line 222
    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    and-long/2addr v7, v11

    .line 224
    .line 225
    cmp-long v7, v7, p5

    .line 226
    .line 227
    if-nez v7, :cond_d

    .line 228
    .line 229
    if-eqz v17, :cond_b

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 233
    .line 234
    :cond_b
    :goto_2
    move-wide/from16 v11, p5

    .line 235
    goto :goto_0

    .line 236
    .line 237
    :cond_c
    move-wide/from16 p5, v11

    .line 238
    .line 239
    .line 240
    :cond_d
    :try_start_2
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 244
    .line 245
    if-nez v4, :cond_e

    .line 246
    .line 247
    .line 248
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 249
    move-object v11, v5

    .line 250
    move-object v12, v6

    .line 251
    goto :goto_4

    .line 252
    .line 253
    :cond_e
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->contentAs:Z

    .line 254
    .line 255
    if-eqz v2, :cond_f

    .line 256
    .line 257
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    .line 258
    .line 259
    check-cast v2, Ljava/lang/Class;

    .line 260
    goto :goto_3

    .line 261
    .line 262
    .line 263
    :cond_f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    move-result-object v2

    .line 265
    .line 266
    .line 267
    :goto_3
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 268
    move-result-object v2

    .line 269
    .line 270
    iget-wide v7, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->features:J

    .line 271
    move-object v11, v5

    .line 272
    move-object v12, v6

    .line 273
    .line 274
    move-object/from16 v5, p3

    .line 275
    .line 276
    move-object/from16 v6, p4

    .line 277
    .line 278
    .line 279
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    .line 281
    :goto_4
    if-eqz v17, :cond_10

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 285
    :cond_10
    move-object v5, v11

    .line 286
    move-object v6, v12

    .line 287
    goto :goto_2

    .line 288
    .line 289
    :goto_5
    if-eqz v17, :cond_11

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    .line 293
    :cond_11
    throw v0

    .line 294
    :cond_12
    move-object v12, v6

    .line 295
    .line 296
    if-eqz v12, :cond_13

    .line 297
    .line 298
    .line 299
    invoke-virtual {v12, v3, v0}, Lcom/alibaba/fastjson2/filter/AfterFilter;->writeAfter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_13
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 303
    return-void
.end method
