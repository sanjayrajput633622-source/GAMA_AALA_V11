.class abstract Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;
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
.field final dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final formatMillis:Z

.field final formatUnixTime:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/reader/ObjectReader;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p11}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 4
    move-object p1, p0

    .line 5
    .line 6
    iput-object p12, p1, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    const-string p3, "millis"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p3

    .line 16
    const/4 p4, 0x1

    .line 17
    .line 18
    if-nez p3, :cond_2

    .line 19
    .line 20
    const-string p3, "unixtime"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p3

    .line 25
    .line 26
    if-nez p3, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, p4

    .line 29
    move p4, p2

    .line 30
    move p2, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move p4, p2

    .line 33
    .line 34
    :cond_2
    :goto_1
    iput-boolean p2, p1, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatUnixTime:Z

    .line 35
    .line 36
    iput-boolean p4, p1, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatMillis:Z

    .line 37
    return-void
.end method


# virtual methods
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

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->acceptNull(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->format:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatUnixTime:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatMillis:Z

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 7
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->formatUnixTime:Z

    if-eqz p2, :cond_3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 8
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;J)V

    return-void

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->format:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson2/time/ZoneId;->DEFAULT_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-static {p2, v0, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseDate(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->acceptNull(Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_6
    :goto_1
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_7

    .line 12
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->accept(Ljava/lang/Object;Ljava/util/Date;)V

    return-void

    .line 13
    :cond_7
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 14
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;J)V

    return-void

    .line 15
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract accept(Ljava/lang/Object;Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation
.end method

.method public abstract acceptNull(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract apply(J)Ljava/lang/Object;
.end method

.method public abstract apply(Ljava/util/Date;)Ljava/lang/Object;
.end method

.method public final getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public final getObjectReader(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-object p1
.end method

.method public final readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderDateTimeCodec;->dateReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 7
    .line 8
    iget-wide v4, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->features:J

    .line 9
    move-object v1, p1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public supportAcceptType(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/util/Date;

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const-class v0, Ljava/lang/String;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    return p1
.end method
