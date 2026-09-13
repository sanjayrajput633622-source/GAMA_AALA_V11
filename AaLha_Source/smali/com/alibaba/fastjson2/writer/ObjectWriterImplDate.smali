.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

.field static final PREFIX_BYTES:[B

.field static final PREFIX_BYTES_SQL:[B

.field static final PREFIX_CHARS:[C

.field static final PREFIX_CHARS_SQL:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    .line 9
    .line 10
    const-string v0, "new Date("

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 14
    move-result-object v1

    .line 15
    .line 16
    sput-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->PREFIX_CHARS:[C

    .line 17
    .line 18
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->PREFIX_BYTES:[B

    .line 25
    .line 26
    const-string v0, "{\"@type\":\"java.sql.Date\",\"val\":"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 30
    move-result-object v2

    .line 31
    .line 32
    sput-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->PREFIX_CHARS_SQL:[C

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->PREFIX_BYTES_SQL:[B

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

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
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 3
    :cond_0
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 4
    move-object v4, v2

    check-cast v4, Ljava/util/Date;

    .line 5
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v7, p4

    .line 6
    invoke-virtual {v1, v2, v7}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result v2

    const/4 v7, 0x0

    const-string v8, "java.sql.Date"

    if-eqz v2, :cond_4

    .line 7
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    const/16 v3, 0x7d

    const/16 v9, 0x29

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->PREFIX_CHARS_SQL:[C

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->PREFIX_CHARS:[C

    move v3, v9

    .line 11
    :goto_0
    array-length v4, v2

    invoke-virtual {v1, v2, v7, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([CII)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->PREFIX_BYTES_SQL:[B

    goto :goto_1

    .line 14
    :cond_3
    sget-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->PREFIX_BYTES:[B

    move v3, v9

    .line 15
    :goto_1
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    .line 16
    :goto_2
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 17
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    return-void

    .line 18
    :cond_4
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatMillis:Z

    if-nez v2, :cond_19

    iget-object v2, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    move-result v2

    if-nez v2, :cond_19

    :cond_5
    move-wide/from16 v9, p5

    .line 19
    invoke-virtual {v1, v9, v10}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide v9

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriterUtilDateAsMillis:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v11, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_6

    goto/16 :goto_b

    .line 20
    :cond_6
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatUnixTime:Z

    const-wide/16 v9, 0x3e8

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatUnixTime()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move-wide v11, v9

    goto/16 :goto_a

    .line 21
    :cond_8
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    move-result-object v2

    .line 22
    sget-object v13, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 23
    invoke-static {v5, v6, v9, v10}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v14

    .line 24
    invoke-static {v14, v15}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v14

    goto :goto_4

    .line 25
    :cond_9
    sget-object v14, Lcom/alibaba/fastjson2/time/ZoneId;->UTC:Lcom/alibaba/fastjson2/time/ZoneId;

    if-eq v2, v14, :cond_b

    const-string v14, "UTC"

    iget-object v15, v2, Lcom/alibaba/fastjson2/time/ZoneId;->id:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_3

    .line 26
    :cond_a
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v14

    invoke-static {v14, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    move-result-object v14

    .line 27
    iget v14, v14, Lcom/alibaba/fastjson2/time/ZonedDateTime;->offsetSeconds:I

    goto :goto_4

    :cond_b
    :goto_3
    move v14, v7

    .line 28
    :goto_4
    iget-boolean v15, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->formatISO8601:Z

    const/16 v16, 0x1

    if-nez v15, :cond_c

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatISO8601()Z

    move-result v15

    if-eqz v15, :cond_d

    :cond_c
    move/from16 v7, v16

    :cond_d
    if-eqz v7, :cond_e

    const/4 v15, 0x0

    goto :goto_5

    .line 29
    :cond_e
    iget-object v15, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-nez v15, :cond_f

    .line 30
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    move-result-object v15

    :cond_f
    :goto_5
    if-nez v15, :cond_16

    .line 31
    invoke-static {v5, v6, v9, v10}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v17

    .line 32
    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 33
    invoke-static/range {v17 .. v18}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    move-result v2

    :goto_6
    move-wide/from16 p2, v11

    goto :goto_7

    .line 34
    :cond_10
    invoke-static {v5, v6}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    move-result-object v13

    .line 35
    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    move-result v2

    goto :goto_6

    :goto_7
    int-to-long v11, v2

    add-long v11, v17, v11

    const-wide/32 v9, 0x15180

    .line 36
    invoke-static {v11, v12, v9, v10}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    move-result-wide v17

    .line 37
    invoke-static {v11, v12, v9, v10}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    move-result-wide v9

    long-to-int v2, v9

    const-wide/32 v9, 0xafa6c

    add-long v9, v17, v9

    cmp-long v11, v9, p2

    const-wide/32 v19, 0x23ab1

    const-wide/16 v21, 0x190

    if-gez v11, :cond_11

    const-wide/32 v23, 0xafa6d

    add-long v17, v17, v23

    .line 38
    div-long v17, v17, v19

    const-wide/16 v23, 0x1

    sub-long v12, v17, v23

    mul-long v17, v12, v21

    neg-long v11, v12

    mul-long v11, v11, v19

    add-long/2addr v9, v11

    goto :goto_8

    :cond_11
    const-wide/16 v23, 0x1

    move-wide/from16 v17, p2

    :goto_8
    mul-long v11, v9, v21

    const-wide/16 v25, 0x24f

    add-long v11, v11, v25

    .line 39
    div-long v11, v11, v19

    const-wide/16 v19, 0x16d

    mul-long v25, v11, v19

    const-wide/16 v27, 0x4

    .line 40
    div-long v29, v11, v27

    add-long v25, v25, v29

    const-wide/16 v29, 0x64

    div-long v31, v11, v29

    sub-long v25, v25, v31

    div-long v31, v11, v21

    add-long v25, v25, v31

    sub-long v25, v9, v25

    cmp-long v13, v25, p2

    if-gez v13, :cond_12

    sub-long v11, v11, v23

    mul-long v19, v19, v11

    .line 41
    div-long v23, v11, v27

    add-long v19, v19, v23

    div-long v23, v11, v29

    sub-long v19, v19, v23

    div-long v21, v11, v21

    add-long v19, v19, v21

    sub-long v25, v9, v19

    :cond_12
    move-wide/from16 v9, v25

    add-long v11, v11, v17

    long-to-int v9, v9

    mul-int/lit8 v10, v9, 0x5

    add-int/lit8 v10, v10, 0x2

    .line 42
    div-int/lit16 v10, v10, 0x99

    add-int/lit8 v13, v10, 0x2

    .line 43
    rem-int/lit8 v13, v13, 0xc

    add-int/lit8 v13, v13, 0x1

    mul-int/lit16 v15, v10, 0x132

    add-int/lit8 v15, v15, 0x5

    .line 44
    div-int/lit8 v15, v15, 0xa

    sub-int/2addr v9, v15

    add-int/lit8 v9, v9, 0x1

    .line 45
    div-int/lit8 v10, v10, 0xa

    move-wide v15, v11

    int-to-long v10, v10

    add-long/2addr v10, v15

    .line 46
    invoke-static {v10, v11}, Lcom/alibaba/fastjson2/time/LocalDateTime;->checkYear(J)I

    move-result v10

    int-to-long v11, v2

    cmp-long v2, v11, p2

    if-ltz v2, :cond_15

    const-wide/32 v15, 0x1517f

    cmp-long v2, v11, v15

    if-gtz v2, :cond_15

    const-wide/16 v15, 0xe10

    move-object/from16 v17, v3

    .line 47
    div-long v2, v11, v15

    long-to-int v2, v2

    mul-int/lit16 v3, v2, 0xe10

    move v15, v2

    int-to-long v2, v3

    sub-long/2addr v11, v2

    const-wide/16 v2, 0x3c

    .line 48
    div-long v2, v11, v2

    long-to-int v2, v2

    mul-int/lit8 v3, v2, 0x3c

    move/from16 v16, v2

    int-to-long v2, v3

    sub-long/2addr v11, v2

    long-to-int v2, v11

    if-ltz v10, :cond_17

    const/16 v3, 0x270f

    if-gt v10, v3, :cond_17

    const-wide/16 v11, 0x3e8

    .line 49
    invoke-static {v5, v6, v11, v12}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    if-nez v3, :cond_14

    if-nez v7, :cond_14

    if-nez v15, :cond_13

    if-nez v16, :cond_13

    if-nez v2, :cond_13

    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 51
    invoke-virtual {v1, v10, v13, v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD10(III)V

    return-void

    :cond_13
    move v7, v2

    move v4, v9

    move v2, v10

    move v3, v13

    move v5, v15

    move/from16 v6, v16

    .line 52
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    return-void

    :cond_14
    move/from16 v33, v7

    move v7, v2

    move v2, v10

    move/from16 v10, v33

    move-object/from16 v1, p1

    move v8, v3

    move v4, v9

    move v3, v13

    move v9, v14

    move v5, v15

    move/from16 v6, v16

    .line 53
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    return-void

    .line 54
    :cond_15
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid secondOfDay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    move-object/from16 v17, v3

    .line 55
    :cond_17
    iget-object v2, v0, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->format:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 56
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object v2

    goto :goto_9

    .line 57
    :cond_18
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    move-result-object v2

    .line 58
    :goto_9
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 60
    :goto_a
    div-long/2addr v5, v11

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void

    .line 61
    :cond_19
    :goto_b
    invoke-virtual {v1, v5, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

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
    check-cast p2, Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 12
    move-result-wide p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeMillis(J)V

    .line 16
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
