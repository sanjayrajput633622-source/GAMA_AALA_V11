.class public Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.super Lcom/alibaba/fastjson2/reader/FieldReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReader<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final function:Lcom/alibaba/fastjson2/function/BiConsumer;

.field protected initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p11}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 4
    move-object p1, p0

    .line 5
    .line 6
    iput-object p12, p1, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    .line 7
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/alibaba/fastjson2/PropertyNamingStrategy;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;Lcom/alibaba/fastjson2/function/BiConsumer;Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    instance-of v0, p5, Ljava/util/Map;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v1, p5

    .line 6
    .line 7
    check-cast v1, Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    if-eqz p5, :cond_7

    .line 15
    .line 16
    .line 17
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson2/JSONFactory;->getObjectWriter(Ljava/lang/reflect/Type;J)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, p5, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    instance-of v1, p0, Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    check-cast p0, Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->fieldName(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 48
    move-result p1

    .line 49
    const/4 v1, 0x1

    .line 50
    const/4 v2, 0x0

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_2
    if-eqz v0, :cond_6

    .line 56
    .line 57
    check-cast p5, Ljava/util/Map;

    .line 58
    .line 59
    new-array p1, v2, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, p5, p1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    .line 63
    move-result-object p5

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-static {p3, p0, p5}, Lcom/alibaba/fastjson2/reader/b;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    move p1, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move p1, v2

    .line 73
    .line 74
    :goto_2
    if-eqz p4, :cond_4

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    move v1, v2

    .line 77
    :goto_3
    and-int/2addr p1, v1

    .line 78
    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    .line 82
    invoke-interface {p4, p0, p5}, Lcom/alibaba/fastjson2/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    :cond_5
    return-void

    .line 84
    .line 85
    :cond_6
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string p2, "can not accept "

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    new-array p2, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 98
    .line 99
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 100
    .line 101
    aput-object p3, p2, v2

    .line 102
    .line 103
    .line 104
    invoke-static {p5, p2}, Lcom/alibaba/fastjson2/a;->G1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p0

    .line 117
    .line 118
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 119
    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    const-string p3, "key not found "

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p0

    .line 136
    .line 137
    .line 138
    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 139
    throw p1
.end method

.method public static arrayToMap(Ljava/util/Map;Ljava/util/Collection;Ljava/lang/String;Lcom/alibaba/fastjson2/PropertyNamingStrategy;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/function/BiConsumer;)V
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/c;

    .line 3
    move-object v4, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move-object v5, p5

    .line 8
    .line 9
    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/PropertyNamingStrategy;Lcom/alibaba/fastjson2/reader/ObjectReader;Ljava/util/Map;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/reader/a;->a(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 14
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;B)V"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;C)V"
        }
    .end annotation

    .line 8
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 6
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 9
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 11
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 12
    check-cast p2, Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 14
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 16
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    if-eqz v0, :cond_4

    .line 19
    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson2/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 23
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->function:Lcom/alibaba/fastjson2/function/BiConsumer;

    if-eqz v1, :cond_6

    invoke-super {p0}, Lcom/alibaba/fastjson2/reader/FieldReader;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public accept(Ljava/lang/Object;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;S)V"
        }
    .end annotation

    .line 3
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getInitReader()Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 3
    return-object v0
.end method

.method public getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v0, :cond_0

    .line 14
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->format:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->locale:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/FieldReader;->createFormattedObjectReader(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object v0

    .line 17
    :cond_1
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 19
    :cond_2
    const-class v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 21
    :cond_3
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->format:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->locale:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/FieldReader;->createFormattedObjectReader(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    if-eqz v0, :cond_3

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    if-eqz v0, :cond_4

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1

    .line 10
    :cond_4
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public processExtra(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 13
    .line 14
    instance-of v0, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 43
    .line 44
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 59
    .line 60
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 61
    .line 62
    const-string v0, "read unwrapped field error"

    .line 63
    .line 64
    .line 65
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    throw p2

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 70
    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 36
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_1

    .line 37
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-interface {v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Lcom/alibaba/fastjson2/function/Function;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClassSerializable:Z

    if-nez v1, :cond_2

    .line 2
    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 3
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    return-void

    .line 5
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v1, v3, v7

    if-nez v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "not support none-Serializable"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->format:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->locale:Ljava/util/Locale;

    invoke-static {v1, v3, v4, v5}, Lcom/alibaba/fastjson2/reader/FieldReader;->createFormattedObjectReader(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    goto :goto_1

    .line 10
    :cond_4
    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 11
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v1

    .line 13
    const-string v3, ".."

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {p0, p2, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->addResolveTask(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_6
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v3

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 18
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->defaultValue:Ljava/lang/Object;

    if-nez v1, :cond_c

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    const-string v1, ""

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    .line 20
    :cond_8
    iget-boolean v3, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v3, :cond_b

    .line 21
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_a

    .line 22
    const-class v2, Ljava/lang/Object;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    const-wide/16 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 23
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    move-object v1, v2

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 24
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 25
    :cond_a
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 26
    :cond_b
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 27
    :cond_c
    :goto_2
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->noneStaticMemberClass:Z

    if-eqz v3, :cond_d

    .line 29
    invoke-static {v1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->setNoneStaticMemberClassParent(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    return-void

    .line 30
    :goto_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->method:Ljava/lang/reflect/Method;

    :goto_4
    if-eqz v1, :cond_f

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read field \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 32
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read field "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    :goto_5
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    .line 6
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClassSerializable:Z

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    if-nez v3, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 14
    move-result v3

    .line 15
    .line 16
    const/16 v6, -0x6e

    .line 17
    .line 18
    if-eq v3, v6, :cond_2

    .line 19
    .line 20
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 21
    .line 22
    iget-wide v7, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 23
    and-long/2addr v7, v1

    .line 24
    .line 25
    cmp-long v3, v7, v4

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 31
    return-void

    .line 32
    .line 33
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 34
    .line 35
    iget-wide v7, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 36
    and-long/2addr v7, v1

    .line 37
    .line 38
    cmp-long v3, v7, v4

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 43
    .line 44
    const-class v7, Ljava/lang/Object;

    .line 45
    .line 46
    if-ne v3, v7, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    .line 50
    move-result v3

    .line 51
    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getType()B

    .line 56
    move-result v3

    .line 57
    .line 58
    if-eq v3, v6, :cond_1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 62
    .line 63
    const-string p2, "not support none-Serializable"

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    .line 69
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 70
    .line 71
    if-nez v3, :cond_4

    .line 72
    .line 73
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 74
    .line 75
    iget-wide v6, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 76
    and-long/2addr v1, v6

    .line 77
    .line 78
    cmp-long v1, v1, v4

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    const/4 v1, 0x1

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v1, 0x0

    .line 84
    .line 85
    :goto_1
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    const-string v1, ".."

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result v1

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p2, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    return-void

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/reader/FieldReader;->addResolveTask(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    return-void

    .line 120
    .line 121
    :cond_6
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->initReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 124
    .line 125
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 126
    .line 127
    iget-wide v6, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 128
    move-object v3, p1

    .line 129
    .line 130
    .line 131
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    return-void
.end method
