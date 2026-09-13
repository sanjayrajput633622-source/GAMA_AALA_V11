.class Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;
.super Lcom/alibaba/fastjson2/reader/FieldReaderObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderObject<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 14

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    move-object v3, v0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    move-object/from16 v3, p2

    .line 11
    :goto_0
    const/4 v11, 0x0

    .line 12
    const/4 v13, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    move/from16 v5, p4

    .line 20
    .line 21
    move-wide/from16 v6, p5

    .line 22
    .line 23
    move-object/from16 v8, p7

    .line 24
    .line 25
    move-object/from16 v10, p8

    .line 26
    .line 27
    move-object/from16 v12, p9

    .line 28
    .line 29
    .line 30
    invoke-direct/range {v1 .. v13}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 31
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;B)V"
        }
    .end annotation

    .line 5
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public accept(Ljava/lang/Object;C)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;C)V"
        }
    .end annotation

    .line 29
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 30
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    return-void

    .line 31
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 32
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public accept(Ljava/lang/Object;D)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    .line 25
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 26
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void

    :cond_0
    move-object v1, p1

    move-wide v4, p2

    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v1, v4, v5}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 28
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public accept(Ljava/lang/Object;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 21
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 22
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void

    .line 23
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public accept(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 13
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 14
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void

    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public accept(Ljava/lang/Object;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 17
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 18
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void

    :cond_0
    move-object v1, p1

    move-wide v4, p2

    .line 19
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v1, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 20
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    .line 33
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-eqz v0, :cond_6

    return-void

    .line 34
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 35
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->acceptPrimitive(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 37
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    if-eq v3, v2, :cond_2

    .line 38
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, p2, Ljava/util/Map;

    if-eqz v4, :cond_2

    if-eq v2, v3, :cond_2

    .line 39
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 40
    check-cast p2, Ljava/util/Map;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-interface {v0, p2, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_6

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 42
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 43
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    .line 44
    const-class v4, Ljava/util/Date;

    if-ne v2, v4, :cond_5

    .line 45
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->format:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 46
    sget-object v0, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {v3, p2, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseDate(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;

    move-result-object p2

    goto :goto_0

    .line 47
    :cond_3
    sget-object p2, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {v3, p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    move-result-wide v3

    cmp-long p2, v3, v0

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    .line 48
    :cond_4
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 49
    :cond_5
    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 51
    :cond_6
    :goto_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    .line 52
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 53
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 54
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public accept(Ljava/lang/Object;S)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;S)V"
        }
    .end annotation

    .line 9
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 10
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public accept(Ljava/lang/Object;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldOffset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 2
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final acceptPrimitive(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 3
    .line 4
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    instance-of v0, p2, Ljava/lang/Number;

    .line 9
    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Number;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 16
    move-result p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;I)V

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    instance-of v0, p2, Ljava/lang/Number;

    .line 27
    .line 28
    if-eqz v0, :cond_7

    .line 29
    .line 30
    check-cast p2, Ljava/lang/Number;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 34
    move-result-wide v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;J)V

    .line 38
    return-void

    .line 39
    .line 40
    :cond_1
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    instance-of v0, p2, Ljava/lang/Number;

    .line 45
    .line 46
    if-eqz v0, :cond_7

    .line 47
    .line 48
    check-cast p2, Ljava/lang/Number;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 52
    move-result p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;F)V

    .line 56
    return-void

    .line 57
    .line 58
    :cond_2
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    if-ne v0, v1, :cond_3

    .line 61
    .line 62
    instance-of v0, p2, Ljava/lang/Number;

    .line 63
    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    check-cast p2, Ljava/lang/Number;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 70
    move-result-wide v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;D)V

    .line 74
    return-void

    .line 75
    .line 76
    :cond_3
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 77
    .line 78
    if-ne v0, v1, :cond_4

    .line 79
    .line 80
    instance-of v0, p2, Ljava/lang/Number;

    .line 81
    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    check-cast p2, Ljava/lang/Number;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    .line 88
    move-result p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;S)V

    .line 92
    return-void

    .line 93
    .line 94
    :cond_4
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 95
    .line 96
    if-ne v0, v1, :cond_5

    .line 97
    .line 98
    instance-of v0, p2, Ljava/lang/Number;

    .line 99
    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    check-cast p2, Ljava/lang/Number;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    .line 106
    move-result p2

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;B)V

    .line 110
    return-void

    .line 111
    .line 112
    :cond_5
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 113
    .line 114
    if-ne v0, v1, :cond_6

    .line 115
    .line 116
    instance-of v0, p2, Ljava/lang/Character;

    .line 117
    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    check-cast p2, Ljava/lang/Character;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 124
    move-result p2

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;C)V

    .line 128
    return-void

    .line 129
    .line 130
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 131
    .line 132
    if-ne v0, v1, :cond_7

    .line 133
    .line 134
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 135
    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    check-cast p2, Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 142
    move-result p2

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderObjectField;->accept(Ljava/lang/Object;Z)V

    .line 146
    return-void

    .line 147
    .line 148
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 149
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    const-string v1, "set "

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v1, " error, type not support "

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    move-result-object p2

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object p2

    .line 180
    .line 181
    .line 182
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 183
    throw p1
.end method
