.class public final synthetic Lcom/alibaba/fastjson2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs A(Ljava/lang/String;II[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 9

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    goto :goto_3

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 21
    .line 22
    const-class p3, Ljava/lang/Object;

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1, p2, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 31
    move-result-object v4

    .line 32
    const/4 v6, 0x0

    .line 33
    .line 34
    const-wide/16 v7, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    .line 41
    iget-char p1, v4, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 42
    .line 43
    const/16 p2, 0x1a

    .line 44
    .line 45
    if-eq p1, p2, :cond_2

    .line 46
    .line 47
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 48
    .line 49
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 50
    .line 51
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 52
    and-long/2addr p1, v0

    .line 53
    .line 54
    const-wide/16 v0, 0x0

    .line 55
    .line 56
    cmp-long p1, p1, v0

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 62
    .line 63
    const-string p1, "input not end"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-object p0, v0

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 78
    return-object p0

    .line 79
    .line 80
    :goto_1
    if-eqz v4, :cond_3

    .line 81
    .line 82
    .line 83
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    goto :goto_2

    .line 85
    :catchall_1
    move-exception v0

    .line 86
    move-object p1, v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 90
    :cond_3
    :goto_2
    throw p0

    .line 91
    :cond_4
    :goto_3
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

.method public static A0(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_5

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 12
    .line 13
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 14
    .line 15
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 16
    and-long/2addr v0, v2

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    .line 28
    :goto_0
    iget-object v4, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-direct {v6, p2, p0, v1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 42
    const/4 v8, 0x0

    .line 43
    .line 44
    const-wide/16 v9, 0x0

    .line 45
    move-object v7, p1

    .line 46
    .line 47
    .line 48
    :try_start_0
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    .line 51
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    move-object p0, v0

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_2
    :goto_1
    iget-char p1, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 63
    .line 64
    const/16 v0, 0x1a

    .line 65
    .line 66
    if-eq p1, v0, :cond_4

    .line 67
    .line 68
    iget-wide p1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 69
    .line 70
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 71
    .line 72
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 73
    and-long/2addr p1, v0

    .line 74
    .line 75
    cmp-long p1, p1, v2

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    goto :goto_2

    .line 79
    .line 80
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 81
    .line 82
    const-string p1, "input not end"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 94
    return-object p0

    .line 95
    .line 96
    .line 97
    :goto_3
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    goto :goto_4

    .line 99
    :catchall_1
    move-exception v0

    .line 100
    move-object p1, v0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 104
    :goto_4
    throw p0

    .line 105
    :cond_5
    :goto_5
    const/4 p0, 0x0

    .line 106
    return-object p0
.end method

.method public static varargs A1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 11
    .line 12
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 13
    .line 14
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr p1, v2

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long p1, p1, v2

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    .line 28
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    .line 32
    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p0, v0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_1
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 43
    .line 44
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 45
    .line 46
    iput-object p2, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 54
    move-result-object v2

    .line 55
    const/4 v6, 0x0

    .line 56
    .line 57
    const-wide/16 v7, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    move-object v4, p0

    .line 60
    .line 61
    .line 62
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->getBytes()[B

    .line 66
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V

    .line 70
    return-object p0

    .line 71
    .line 72
    .line 73
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    goto :goto_3

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    move-object p1, v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    :goto_3
    throw p0
.end method

.method public static B(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_3

    .line 10
    .line 11
    :cond_0
    const-class v0, Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, p1, p0, v0, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    const-wide/16 v5, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    iget-char v0, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 36
    .line 37
    const/16 v1, 0x1a

    .line 38
    .line 39
    if-eq v0, v1, :cond_2

    .line 40
    .line 41
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 42
    .line 43
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 44
    .line 45
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 46
    and-long/2addr v0, v3

    .line 47
    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .line 50
    cmp-long p1, v0, v3

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 56
    .line 57
    const-string p1, "input not end"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object p0, v0

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 72
    return-object p0

    .line 73
    .line 74
    .line 75
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    goto :goto_2

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    move-object p1, v0

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    :goto_2
    throw p0

    .line 83
    :cond_3
    :goto_3
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method public static varargs B0(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 18
    .line 19
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 20
    .line 21
    iget-wide v3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 22
    and-long/2addr v1, v3

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    cmp-long p3, v1, v3

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    const/4 p3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move p3, v1

    .line 33
    .line 34
    :goto_0
    iget-object v2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    move-result p3

    .line 45
    .line 46
    .line 47
    invoke-direct {v6, p2, p0, v1, p3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 51
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 57
    return-object v0

    .line 58
    :cond_2
    const/4 v8, 0x0

    .line 59
    .line 60
    const-wide/16 v9, 0x0

    .line 61
    move-object v7, p1

    .line 62
    .line 63
    .line 64
    :try_start_1
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    move-object p0, v0

    .line 76
    goto :goto_3

    .line 77
    .line 78
    :cond_3
    :goto_1
    iget-char p1, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 79
    .line 80
    const/16 p3, 0x1a

    .line 81
    .line 82
    if-eq p1, p3, :cond_5

    .line 83
    .line 84
    iget-wide p1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 85
    .line 86
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 87
    .line 88
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 89
    and-long/2addr p1, v0

    .line 90
    .line 91
    cmp-long p1, p1, v3

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    goto :goto_2

    .line 95
    .line 96
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 97
    .line 98
    const-string p1, "input not end"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 110
    return-object p0

    .line 111
    .line 112
    .line 113
    :goto_3
    :try_start_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    goto :goto_4

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    move-object p1, v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 120
    :goto_4
    throw p0

    .line 121
    :cond_6
    :goto_5
    return-object v0
.end method

.method public static B1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 13

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 8
    .line 9
    sget-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 10
    .line 11
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->OptimizedForAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 12
    .line 13
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 14
    and-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    .line 26
    :goto_0
    move-object v7, v2

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception v0

    .line 29
    :goto_1
    move-object v8, p0

    .line 30
    .line 31
    goto/16 :goto_9

    .line 32
    :catch_1
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriterUTF16;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF16;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :goto_2
    if-nez p0, :cond_1

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 45
    :goto_3
    move-object v8, p0

    .line 46
    goto :goto_6

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    move-object v8, p0

    .line 49
    :goto_4
    move-object p0, v0

    .line 50
    goto :goto_7

    .line 51
    .line 52
    :cond_1
    iput-object p0, v7, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 53
    .line 54
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 55
    .line 56
    iput-object v2, v7, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    .line 63
    .line 64
    if-ne v2, v3, :cond_2

    .line 65
    .line 66
    iget-wide v8, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 67
    .line 68
    cmp-long v3, v8, v4

    .line 69
    .line 70
    if-nez v3, :cond_2

    .line 71
    move-object v0, p0

    .line 72
    .line 73
    check-cast v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/JSONWriter;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_2
    iget-wide v8, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 80
    .line 81
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 82
    .line 83
    iget-wide v10, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 84
    and-long/2addr v8, v10

    .line 85
    .line 86
    cmp-long v1, v8, v4

    .line 87
    .line 88
    if-eqz v1, :cond_3

    .line 89
    const/4 v1, 0x1

    .line 90
    goto :goto_5

    .line 91
    :cond_3
    const/4 v1, 0x0

    .line 92
    .line 93
    .line 94
    :goto_5
    invoke-virtual {v0, v2, v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 95
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    const/4 v10, 0x0

    .line 97
    .line 98
    const-wide/16 v11, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    move-object v8, p0

    .line 101
    .line 102
    .line 103
    :try_start_2
    invoke-interface/range {v6 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 104
    .line 105
    .line 106
    :goto_6
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    .line 109
    .line 110
    :try_start_3
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 111
    return-object p0

    .line 112
    :catch_2
    move-exception v0

    .line 113
    goto :goto_9

    .line 114
    :catch_3
    move-exception v0

    .line 115
    goto :goto_9

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    goto :goto_4

    .line 118
    .line 119
    .line 120
    :goto_7
    :try_start_4
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 121
    goto :goto_8

    .line 122
    :catchall_2
    move-exception v0

    .line 123
    .line 124
    .line 125
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 126
    :goto_8
    throw p0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    .line 127
    .line 128
    :goto_9
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    const-string v2, "JSON#toJSONString cannot serialize \'"

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "\'"

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    throw p0
.end method

.method public static varargs C(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 9

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_3

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 19
    .line 20
    const-class p1, Ljava/lang/Object;

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    new-instance v4, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    move-result p1

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v1, p0, v2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 35
    const/4 v6, 0x0

    .line 36
    .line 37
    const-wide/16 v7, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    iget-char p1, v4, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 45
    .line 46
    const/16 v0, 0x1a

    .line 47
    .line 48
    if-eq p1, v0, :cond_2

    .line 49
    .line 50
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 51
    .line 52
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 53
    .line 54
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 55
    and-long/2addr v0, v2

    .line 56
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    cmp-long p1, v0, v2

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 65
    .line 66
    const-string p1, "input not end"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 81
    return-object p0

    .line 82
    .line 83
    .line 84
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    goto :goto_2

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object p1, v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 91
    :goto_2
    throw p0

    .line 92
    :cond_3
    :goto_3
    const/4 p0, 0x0

    .line 93
    return-object p0
.end method

.method public static varargs C0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    .line 14
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 23
    move-result p3

    .line 24
    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 29
    .line 30
    :cond_1
    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 31
    .line 32
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 33
    .line 34
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 35
    and-long/2addr p2, v2

    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    cmp-long p2, p2, v2

    .line 40
    const/4 p3, 0x0

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    const/4 p2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move p2, p3

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    new-instance v5, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    move-result p2

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v1, p0, p3, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 59
    const/4 v7, 0x0

    .line 60
    .line 61
    const-wide/16 v8, 0x0

    .line 62
    move-object v6, p1

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    iget-object p1, v5, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_3
    :goto_1
    iget-char p1, v5, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 80
    .line 81
    const/16 p2, 0x1a

    .line 82
    .line 83
    if-eq p1, p2, :cond_5

    .line 84
    .line 85
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 86
    .line 87
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 88
    .line 89
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 90
    and-long/2addr p1, v0

    .line 91
    .line 92
    cmp-long p1, p1, v2

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 98
    .line 99
    const-string p1, "input not end"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 111
    return-object p0

    .line 112
    .line 113
    .line 114
    :goto_3
    :try_start_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    goto :goto_4

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    move-object p1, v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 121
    :goto_4
    throw p0

    .line 122
    :cond_6
    :goto_5
    const/4 p0, 0x0

    .line 123
    return-object p0
.end method

.method public static C1(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter$Context;)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 4
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    move-object v2, p0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    move-object p1, v0

    .line 14
    move-object v2, p0

    .line 15
    goto :goto_3

    .line 16
    .line 17
    :cond_0
    :try_start_2
    iput-object p0, v1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 18
    .line 19
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 20
    .line 21
    iput-object p1, v1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1, p1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 29
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 30
    const/4 v4, 0x0

    .line 31
    .line 32
    const-wide/16 v5, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    move-object v2, p0

    .line 35
    .line 36
    .line 37
    :try_start_3
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    :try_start_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    return-object p0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :goto_1
    move-object p0, v0

    .line 48
    goto :goto_6

    .line 49
    :catch_1
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    :goto_2
    move-object p1, v0

    .line 53
    goto :goto_3

    .line 54
    :catchall_2
    move-exception v0

    .line 55
    move-object v2, p0

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :goto_3
    if-eqz v1, :cond_1

    .line 59
    .line 60
    .line 61
    :try_start_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 62
    goto :goto_4

    .line 63
    :catchall_3
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    .line 66
    .line 67
    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 68
    :cond_1
    :goto_4
    throw p1
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    .line 69
    :catch_2
    move-exception v0

    .line 70
    :goto_5
    move-object v2, p0

    .line 71
    goto :goto_1

    .line 72
    :catch_3
    move-exception v0

    .line 73
    goto :goto_5

    .line 74
    .line 75
    :goto_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    const-string v1, "JSON#toJSONString cannot serialize \'"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "\'"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    throw p1
.end method

.method public static D([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_3

    .line 7
    .line 8
    :cond_0
    const-class v0, Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 16
    move-result-object v2

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    iget-char p1, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 27
    .line 28
    const/16 p2, 0x1a

    .line 29
    .line 30
    if-eq p1, p2, :cond_2

    .line 31
    .line 32
    iget-wide p1, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 33
    .line 34
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 35
    .line 36
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 37
    and-long/2addr p1, p3

    .line 38
    .line 39
    const-wide/16 p3, 0x0

    .line 40
    .line 41
    cmp-long p1, p1, p3

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string p1, "input not end"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move-object p0, v0

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 63
    return-object p0

    .line 64
    .line 65
    :goto_1
    if-eqz v2, :cond_3

    .line 66
    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    goto :goto_2

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    move-object p1, v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    :cond_3
    :goto_2
    throw p0

    .line 76
    :cond_4
    :goto_3
    const/4 p0, 0x0

    .line 77
    return-object p0
.end method

.method public static varargs D0(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_5

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 17
    .line 18
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 19
    .line 20
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 21
    .line 22
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 23
    and-long/2addr v2, v4

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long p2, v2, v4

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    const/4 p2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move p2, v2

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    new-instance v7, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 43
    move-result p2

    .line 44
    .line 45
    .line 46
    invoke-direct {v7, v1, p0, v2, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 47
    const/4 v9, 0x0

    .line 48
    .line 49
    const-wide/16 v10, 0x0

    .line 50
    move-object v8, p1

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_2
    :goto_1
    iget-char p1, v7, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    const/16 p2, 0x1a

    .line 70
    .line 71
    if-eq p1, p2, :cond_4

    .line 72
    .line 73
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr p1, v0

    .line 79
    .line 80
    cmp-long p1, p1, v4

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string p1, "input not end"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 99
    return-object p0

    .line 100
    .line 101
    .line 102
    :goto_3
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    goto :goto_4

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    move-object p1, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    :goto_4
    throw p0

    .line 110
    :cond_5
    :goto_5
    const/4 p0, 0x0

    .line 111
    return-object p0
.end method

.method public static varargs D1(Ljava/lang/Object;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v0, v2, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 9
    .line 10
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    and-long/2addr p1, v2

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long p1, p1, v2

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    goto :goto_2

    .line 38
    .line 39
    :cond_1
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 40
    .line 41
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 42
    .line 43
    iput-object p2, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 51
    move-result-object v2

    .line 52
    const/4 v6, 0x0

    .line 53
    .line 54
    const-wide/16 v7, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    move-object v4, p0

    .line 57
    .line 58
    .line 59
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 67
    return-object p0

    .line 68
    .line 69
    :goto_2
    if-eqz v3, :cond_2

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    goto :goto_3

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    move-object p1, v0

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    :cond_2
    :goto_3
    throw p0
.end method

.method public static E([BLcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 8

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_3

    .line 7
    .line 8
    :cond_0
    const-class v0, Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 15
    const/4 v6, 0x0

    .line 16
    array-length v7, p0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v5, p0

    .line 19
    move-object v3, p1

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 23
    move-object p0, v3

    .line 24
    const/4 v4, 0x0

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-char v0, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 34
    .line 35
    const/16 v1, 0x1a

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 40
    .line 41
    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 42
    .line 43
    iget-wide v3, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 44
    and-long/2addr v0, v3

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    cmp-long p0, v0, v3

    .line 49
    .line 50
    if-eqz p0, :cond_1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 54
    .line 55
    const-string p1, "input not end"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 70
    return-object p1

    .line 71
    .line 72
    .line 73
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    goto :goto_2

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    move-object p1, v0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    :goto_2
    throw p0

    .line 81
    :cond_3
    :goto_3
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method

.method public static E0(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 17
    .line 18
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    move-result v2

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v1, p0, v4, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 27
    .line 28
    :try_start_0
    sget-wide v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 29
    .line 30
    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 31
    .line 32
    iget-wide v7, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 33
    and-long/2addr v5, v7

    .line 34
    .line 35
    const-wide/16 v8, 0x0

    .line 36
    .line 37
    cmp-long p0, v5, v8

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    const/4 v4, 0x1

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0, p1, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 44
    move-result-object v2

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    const-wide/16 v6, 0x0

    .line 48
    move-object v4, p1

    .line 49
    .line 50
    .line 51
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    move-object p0, v0

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_2
    :goto_0
    iget-char p1, v3, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 66
    .line 67
    const/16 v0, 0x1a

    .line 68
    .line 69
    if-eq p1, v0, :cond_4

    .line 70
    .line 71
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 72
    .line 73
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 74
    .line 75
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 76
    and-long/2addr v0, v4

    .line 77
    .line 78
    cmp-long p1, v0, v8

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 84
    .line 85
    const-string p1, "input not end"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 97
    return-object p0

    .line 98
    .line 99
    .line 100
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    goto :goto_3

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    move-object p1, v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 107
    :goto_3
    throw p0

    .line 108
    :cond_5
    :goto_4
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method

.method public static varargs E1(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    .line 19
    .line 20
    :cond_0
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 21
    .line 22
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 23
    .line 24
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 25
    and-long/2addr p1, v2

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long p1, p1, v2

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    .line 43
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    move-object p0, v0

    .line 47
    goto :goto_2

    .line 48
    .line 49
    :cond_2
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 50
    .line 51
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 52
    .line 53
    iput-object p2, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    move-result-object p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 61
    move-result-object v2

    .line 62
    const/4 v6, 0x0

    .line 63
    .line 64
    const-wide/16 v7, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    move-object v4, p0

    .line 67
    .line 68
    .line 69
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 70
    .line 71
    .line 72
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 77
    return-object p0

    .line 78
    .line 79
    :goto_2
    if-eqz v3, :cond_3

    .line 80
    .line 81
    .line 82
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    goto :goto_3

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    move-object p1, v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    :cond_3
    :goto_3
    throw p0
.end method

.method public static varargs F([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 9

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_4

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 16
    .line 17
    const-class p1, Ljava/lang/Object;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 25
    const/4 v5, 0x0

    .line 26
    array-length v6, p0

    .line 27
    const/4 v3, 0x0

    .line 28
    move-object v4, p0

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 32
    const/4 v6, 0x0

    .line 33
    .line 34
    const-wide/16 v7, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v3, p1

    .line 37
    move-object v4, v1

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 41
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    :try_start_1
    iget-char p1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 44
    .line 45
    const/16 v0, 0x1a

    .line 46
    .line 47
    if-eq p1, v0, :cond_2

    .line 48
    .line 49
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 50
    .line 51
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 52
    .line 53
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 54
    and-long/2addr v2, v4

    .line 55
    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    cmp-long p1, v2, v4

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 64
    .line 65
    const-string p1, "input not end"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    :goto_0
    move-object p0, v0

    .line 76
    goto :goto_2

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 80
    return-object p0

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    move-object v1, v4

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    goto :goto_3

    .line 88
    :catchall_2
    move-exception v0

    .line 89
    move-object p1, v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 93
    :goto_3
    throw p0

    .line 94
    :cond_3
    :goto_4
    const/4 p0, 0x0

    .line 95
    return-object p0
.end method

.method public static F0(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 17
    move-result-object v2

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    const-wide/16 v5, 0x0

    .line 21
    move-object v3, p1

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    iget-object p1, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-char p1, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 39
    .line 40
    const/16 v0, 0x1a

    .line 41
    .line 42
    if-eq p1, v0, :cond_3

    .line 43
    .line 44
    iget-wide p1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 45
    .line 46
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 47
    .line 48
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 49
    and-long/2addr p1, v0

    .line 50
    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    cmp-long p1, p1, v0

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 59
    .line 60
    const-string p1, "input not end"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 72
    return-object p0

    .line 73
    .line 74
    :goto_2
    if-eqz v2, :cond_4

    .line 75
    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    goto :goto_3

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    move-object p1, v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    :cond_4
    :goto_3
    throw p0

    .line 85
    :cond_5
    :goto_4
    const/4 p0, 0x0

    .line 86
    return-object p0
.end method

.method public static varargs F1(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    .line 22
    .line 23
    :cond_0
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 24
    .line 25
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 26
    .line 27
    iget-wide v2, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 28
    and-long/2addr p1, v2

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long p1, p1, v2

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object p0, v0

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_2
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 53
    .line 54
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 55
    .line 56
    iput-object p2, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 64
    move-result-object v2

    .line 65
    const/4 v6, 0x0

    .line 66
    .line 67
    const-wide/16 v7, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    move-object v4, p0

    .line 70
    .line 71
    .line 72
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 80
    return-object p0

    .line 81
    .line 82
    :goto_2
    if-eqz v3, :cond_3

    .line 83
    .line 84
    .line 85
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    goto :goto_3

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    move-object p1, v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 92
    :cond_3
    :goto_3
    throw p0
.end method

.method public static G([CLcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_3

    .line 7
    .line 8
    :cond_0
    const-class v0, Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 16
    move-result-object v2

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    iget-char v0, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 27
    .line 28
    const/16 v1, 0x1a

    .line 29
    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 33
    .line 34
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 35
    .line 36
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 37
    and-long/2addr v0, v3

    .line 38
    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    cmp-long p1, v0, v3

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 47
    .line 48
    const-string p1, "input not end"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move-object p0, v0

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 63
    return-object p0

    .line 64
    .line 65
    :goto_1
    if-eqz v2, :cond_3

    .line 66
    .line 67
    .line 68
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    goto :goto_2

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    move-object p1, v0

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    :cond_3
    :goto_2
    throw p0

    .line 76
    :cond_4
    :goto_3
    const/4 p0, 0x0

    .line 77
    return-object p0
.end method

.method public static varargs G0(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_5

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    .line 14
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v1, v0, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 18
    .line 19
    iget-wide p2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 20
    .line 21
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 22
    .line 23
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 24
    and-long/2addr p2, v3

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    cmp-long p2, p2, v3

    .line 29
    const/4 p3, 0x0

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    const/4 p2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move p2, p3

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 38
    move-result-object v5

    .line 39
    .line 40
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 44
    move-result p2

    .line 45
    .line 46
    .line 47
    invoke-direct {v6, v2, p0, p3, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 48
    const/4 v8, 0x0

    .line 49
    .line 50
    const-wide/16 v9, 0x0

    .line 51
    move-object v7, p1

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_2
    :goto_1
    iget-char p1, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 69
    .line 70
    const/16 p2, 0x1a

    .line 71
    .line 72
    if-eq p1, p2, :cond_4

    .line 73
    .line 74
    iget-wide p1, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 75
    .line 76
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 77
    .line 78
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 79
    and-long/2addr p1, v0

    .line 80
    .line 81
    cmp-long p1, p1, v3

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 87
    .line 88
    const-string p1, "input not end"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 100
    return-object p0

    .line 101
    .line 102
    .line 103
    :goto_3
    :try_start_1
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    goto :goto_4

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    move-object p1, v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    :goto_4
    throw p0

    .line 111
    :cond_5
    :goto_5
    return-object v0
.end method

.method public static varargs G1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 10
    .line 11
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 12
    .line 13
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 14
    and-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long p1, v2, v4

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 39
    .line 40
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 41
    .line 42
    iput-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v1, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 50
    move-result-object v2

    .line 51
    const/4 v6, 0x0

    .line 52
    .line 53
    const-wide/16 v7, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    move-object v4, p0

    .line 56
    .line 57
    .line 58
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 66
    return-object p0

    .line 67
    .line 68
    :goto_2
    if-eqz v3, :cond_2

    .line 69
    .line 70
    .line 71
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    goto :goto_3

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    move-object p1, v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    :cond_2
    :goto_3
    throw p0
.end method

.method public static varargs H([C[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 9

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_4

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 16
    .line 17
    const-class p1, Ljava/lang/Object;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 25
    const/4 v5, 0x0

    .line 26
    array-length v6, p0

    .line 27
    const/4 v3, 0x0

    .line 28
    move-object v4, p0

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    .line 32
    const/4 v6, 0x0

    .line 33
    .line 34
    const-wide/16 v7, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v3, p1

    .line 37
    move-object v4, v1

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 41
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    :try_start_1
    iget-char p1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 44
    .line 45
    const/16 v0, 0x1a

    .line 46
    .line 47
    if-eq p1, v0, :cond_2

    .line 48
    .line 49
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 50
    .line 51
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 52
    .line 53
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 54
    and-long/2addr v2, v4

    .line 55
    .line 56
    const-wide/16 v4, 0x0

    .line 57
    .line 58
    cmp-long p1, v2, v4

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 64
    .line 65
    const-string p1, "input not end"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 73
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    :goto_0
    move-object p0, v0

    .line 76
    goto :goto_2

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 80
    return-object p0

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    move-object v1, v4

    .line 83
    goto :goto_0

    .line 84
    .line 85
    .line 86
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 87
    goto :goto_3

    .line 88
    :catchall_2
    move-exception v0

    .line 89
    move-object p1, v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 93
    :goto_3
    throw p0

    .line 94
    :cond_3
    :goto_4
    const/4 p0, 0x0

    .line 95
    return-object p0
.end method

.method public static varargs H0(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    .line 14
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 23
    move-result p3

    .line 24
    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 29
    .line 30
    :cond_1
    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 31
    .line 32
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 33
    .line 34
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 35
    and-long/2addr p2, v2

    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    cmp-long p2, p2, v2

    .line 40
    const/4 p3, 0x0

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    const/4 p2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move p2, p3

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    new-instance v5, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    move-result p2

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v1, p0, p3, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 59
    const/4 v7, 0x0

    .line 60
    .line 61
    const-wide/16 v8, 0x0

    .line 62
    move-object v6, p1

    .line 63
    .line 64
    .line 65
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    .line 68
    iget-object p1, v5, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object p0, v0

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_3
    :goto_1
    iget-char p1, v5, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 80
    .line 81
    const/16 p2, 0x1a

    .line 82
    .line 83
    if-eq p1, p2, :cond_5

    .line 84
    .line 85
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 86
    .line 87
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 88
    .line 89
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 90
    and-long/2addr p1, v0

    .line 91
    .line 92
    cmp-long p1, p1, v2

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 98
    .line 99
    const-string p1, "input not end"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 111
    return-object p0

    .line 112
    .line 113
    .line 114
    :goto_3
    :try_start_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    goto :goto_4

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    move-object p1, v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 121
    :goto_4
    throw p0

    .line 122
    :cond_6
    :goto_5
    const/4 p0, 0x0

    .line 123
    return-object p0
.end method

.method public static varargs H1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 11
    .line 12
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 13
    .line 14
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr p1, v2

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long p1, p1, v2

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    const/4 p1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    move-object p0, v0

    .line 39
    goto :goto_2

    .line 40
    .line 41
    :cond_1
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 42
    .line 43
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 44
    .line 45
    iput-object p2, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 53
    move-result-object v2

    .line 54
    const/4 v6, 0x0

    .line 55
    .line 56
    const-wide/16 v7, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    move-object v4, p0

    .line 59
    .line 60
    .line 61
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 69
    return-object p0

    .line 70
    .line 71
    :goto_2
    if-eqz v3, :cond_2

    .line 72
    .line 73
    .line 74
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    goto :goto_3

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    move-object p1, v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 81
    :cond_2
    :goto_3
    throw p0
.end method

.method public static I(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 12
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_1
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 39
    .line 40
    const/16 v1, 0x1a

    .line 41
    .line 42
    if-eq v0, v1, :cond_4

    .line 43
    .line 44
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 45
    .line 46
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 47
    .line 48
    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 49
    and-long/2addr v0, v2

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    cmp-long p2, v0, v2

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 59
    .line 60
    const-string p2, "input not end"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 72
    return-object p1

    .line 73
    .line 74
    :goto_2
    if-eqz p0, :cond_5

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    goto :goto_3

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    :cond_5
    :goto_3
    throw p1
.end method

.method public static varargs I0(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p3, p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 19
    .line 20
    iget-wide v1, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 21
    .line 22
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 23
    .line 24
    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 25
    and-long/2addr v1, v3

    .line 26
    .line 27
    const-wide/16 v3, 0x0

    .line 28
    .line 29
    cmp-long p2, v1, v3

    .line 30
    const/4 p4, 0x0

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    const/4 p2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move p2, p4

    .line 36
    .line 37
    :goto_0
    iget-object v1, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    new-instance v6, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    move-result p2

    .line 48
    .line 49
    .line 50
    invoke-direct {v6, p3, p0, p4, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 54
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 60
    return-object v0

    .line 61
    :cond_2
    const/4 v8, 0x0

    .line 62
    .line 63
    const-wide/16 v9, 0x0

    .line 64
    move-object v7, p1

    .line 65
    .line 66
    .line 67
    :try_start_1
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object p0, v0

    .line 79
    goto :goto_3

    .line 80
    .line 81
    :cond_3
    :goto_1
    iget-char p1, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 82
    .line 83
    const/16 p2, 0x1a

    .line 84
    .line 85
    if-eq p1, p2, :cond_5

    .line 86
    .line 87
    iget-wide p1, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 88
    .line 89
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 90
    .line 91
    iget-wide p3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 92
    and-long/2addr p1, p3

    .line 93
    .line 94
    cmp-long p1, p1, v3

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 100
    .line 101
    const-string p1, "input not end"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 113
    return-object p0

    .line 114
    .line 115
    .line 116
    :goto_3
    :try_start_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    goto :goto_4

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    move-object p1, v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 123
    :goto_4
    throw p0

    .line 124
    :cond_6
    :goto_5
    return-object v0
.end method

.method public static I1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/a;->q1(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static varargs J(Ljava/io/InputStream;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    .line 8
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 12
    .line 13
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 21
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_1
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    .line 47
    :cond_2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 48
    .line 49
    const/16 v1, 0x1a

    .line 50
    .line 51
    if-eq v0, v1, :cond_4

    .line 52
    .line 53
    iget-wide v0, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 54
    .line 55
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 56
    .line 57
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 58
    and-long/2addr v0, v2

    .line 59
    .line 60
    const-wide/16 v2, 0x0

    .line 61
    .line 62
    cmp-long v0, v0, v2

    .line 63
    .line 64
    if-eqz v0, :cond_3

    .line 65
    goto :goto_1

    .line 66
    .line 67
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 68
    .line 69
    const-string v0, "input not end"

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 81
    return-object p1

    .line 82
    .line 83
    :goto_2
    if-eqz p0, :cond_5

    .line 84
    .line 85
    .line 86
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    goto :goto_3

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 92
    :cond_5
    :goto_3
    throw p1
.end method

.method public static varargs J0(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_5

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 17
    .line 18
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 19
    .line 20
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 21
    .line 22
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 23
    and-long/2addr v2, v4

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long p2, v2, v4

    .line 28
    const/4 v2, 0x0

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    const/4 p2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move p2, v2

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    new-instance v7, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 43
    move-result p2

    .line 44
    .line 45
    .line 46
    invoke-direct {v7, v1, p0, v2, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 47
    const/4 v9, 0x0

    .line 48
    .line 49
    const-wide/16 v10, 0x0

    .line 50
    move-object v8, p1

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_2
    :goto_1
    iget-char p1, v7, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    const/16 p2, 0x1a

    .line 70
    .line 71
    if-eq p1, p2, :cond_4

    .line 72
    .line 73
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr p1, v0

    .line 79
    .line 80
    cmp-long p1, p1, v4

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string p1, "input not end"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 99
    return-object p0

    .line 100
    .line 101
    .line 102
    :goto_3
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    goto :goto_4

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    move-object p1, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    :goto_4
    throw p0

    .line 110
    :cond_5
    :goto_5
    const/4 p0, 0x0

    .line 111
    return-object p0
.end method

.method public static J1(Ljava/io/OutputStream;Ljava/lang/Object;)I
    .locals 10

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 8
    .line 9
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 10
    .line 11
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 12
    .line 13
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 14
    and-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 27
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    iput-object p1, v4, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 39
    .line 40
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 41
    .line 42
    iput-object v1, v4, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 50
    move-result-object v3

    .line 51
    const/4 v7, 0x0

    .line 52
    .line 53
    const-wide/16 v8, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object v5, p1

    .line 56
    .line 57
    .line 58
    invoke-interface/range {v3 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/OutputStream;)I

    .line 62
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    return p0

    .line 67
    .line 68
    :goto_2
    if-eqz v4, :cond_2

    .line 69
    .line 70
    .line 71
    :try_start_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    goto :goto_3

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    move-object p1, v0

    .line 75
    .line 76
    .line 77
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    :cond_2
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    move-object p0, v0

    .line 81
    .line 82
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    throw p1
.end method

.method public static K(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_4

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    .line 14
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 18
    .line 19
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    move-result v4

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, p0, v3, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 37
    return-object v0

    .line 38
    .line 39
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 46
    .line 47
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_2
    :goto_0
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 58
    .line 59
    const/16 v3, 0x1a

    .line 60
    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 64
    .line 65
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 66
    .line 67
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 68
    and-long/2addr v2, v4

    .line 69
    .line 70
    const-wide/16 v4, 0x0

    .line 71
    .line 72
    cmp-long v0, v2, v4

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 78
    .line 79
    const-string v0, "input not end"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 91
    return-object p0

    .line 92
    .line 93
    .line 94
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    goto :goto_3

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    :goto_3
    throw p0

    .line 101
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static varargs K0(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/MultiType;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/util/MultiType;-><init>([Ljava/lang/reflect/Type;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/a;->E0(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static K1(Ljava/io/OutputStream;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter$Context;)I
    .locals 7

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 4
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    move-object p0, v0

    .line 13
    goto :goto_1

    .line 14
    .line 15
    :cond_0
    iput-object p1, v1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 16
    .line 17
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 18
    .line 19
    iput-object v0, v1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 27
    move-result-object v0

    .line 28
    const/4 v4, 0x0

    .line 29
    .line 30
    const-wide/16 v5, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    move-object v2, p1

    .line 33
    .line 34
    .line 35
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/OutputStream;)I

    .line 39
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    return p0

    .line 44
    .line 45
    :goto_1
    if-eqz v1, :cond_1

    .line 46
    .line 47
    .line 48
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    goto :goto_2

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    .line 53
    .line 54
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    :cond_1
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    move-object p0, v0

    .line 58
    .line 59
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    .line 66
    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw p1
.end method

.method public static varargs L(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_4

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    .line 14
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 18
    .line 19
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v2, p0, v1, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 37
    return-object v0

    .line 38
    .line 39
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 46
    .line 47
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_2
    :goto_0
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 58
    .line 59
    const/16 v1, 0x1a

    .line 60
    .line 61
    if-eq v0, v1, :cond_4

    .line 62
    .line 63
    iget-wide v0, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 64
    .line 65
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 66
    .line 67
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 68
    and-long/2addr v0, v2

    .line 69
    .line 70
    const-wide/16 v2, 0x0

    .line 71
    .line 72
    cmp-long v0, v0, v2

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 78
    .line 79
    const-string v0, "input not end"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 91
    return-object p0

    .line 92
    .line 93
    .line 94
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    goto :goto_3

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    :goto_3
    throw p0

    .line 101
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static varargs L0(Ljava/net/URL;Lcom/alibaba/fastjson2/function/Function;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 8
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-static {v1, p2}, Lcom/alibaba/fastjson2/a;->c0(Ljava/io/InputStream;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;

    .line 12
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    if-nez p2, :cond_2

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    return-object v0

    .line 24
    .line 25
    .line 26
    :cond_2
    :try_start_3
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    .line 32
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 33
    :cond_3
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    .line 39
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p2

    .line 42
    .line 43
    .line 44
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    :cond_4
    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 46
    .line 47
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    const-string v1, "JSON#parseObject cannot parse \'"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string p0, "\'"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    throw p2
.end method

.method public static varargs L1(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)I
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p4}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 11
    .line 12
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 13
    .line 14
    sget-object p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide v4, p4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr v2, v4

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long p4, v2, v4

    .line 22
    .line 23
    if-eqz p4, :cond_0

    .line 24
    const/4 p4, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p4, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 30
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    move-object v4, p1

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p0, v0

    .line 40
    move-object v4, p1

    .line 41
    goto :goto_4

    .line 42
    .line 43
    :cond_1
    :try_start_2
    iput-object p1, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 44
    .line 45
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 46
    .line 47
    iput-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    .line 52
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    .line 61
    .line 62
    :cond_2
    if-eqz p3, :cond_3

    .line 63
    array-length p2, p3

    .line 64
    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    iget-object p2, v3, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    .line 72
    .line 73
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2, p2, p4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 78
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 79
    const/4 v6, 0x0

    .line 80
    .line 81
    const-wide/16 v7, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    move-object v4, p1

    .line 84
    .line 85
    .line 86
    :try_start_5
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/OutputStream;)I

    .line 90
    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 91
    .line 92
    .line 93
    :try_start_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 94
    return p0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :goto_2
    move-object p0, v0

    .line 97
    goto :goto_6

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    :goto_3
    move-object p0, v0

    .line 100
    goto :goto_4

    .line 101
    :catchall_2
    move-exception v0

    .line 102
    move-object v4, p1

    .line 103
    goto :goto_3

    .line 104
    .line 105
    :goto_4
    if-eqz v3, :cond_4

    .line 106
    .line 107
    .line 108
    :try_start_7
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 109
    goto :goto_5

    .line 110
    :catchall_3
    move-exception v0

    .line 111
    move-object p1, v0

    .line 112
    .line 113
    .line 114
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 115
    :cond_4
    :goto_5
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    move-object v4, p1

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :goto_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 121
    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    const-string p3, "JSON#writeTo cannot serialize \'"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string p3, "\' to \'OutputStream\'"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    .line 144
    .line 145
    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    throw p1
.end method

.method public static varargs M(Ljava/net/URL;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 3

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/a;->J(Ljava/io/InputStream;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;

    .line 12
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception v0

    .line 30
    .line 31
    .line 32
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 33
    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 34
    .line 35
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "JSON#parseArray cannot parse \'"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p0, "\' to \'"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-class p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p0, "\'"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    throw v0
.end method

.method public static varargs M0(Ljava/net/URL;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson2/a;->r0(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    .line 12
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    return-object p2

    .line 19
    :catch_0
    move-exception p2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    return-object p2

    .line 22
    :catchall_0
    move-exception p2

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception v0

    .line 30
    .line 31
    .line 32
    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 33
    :cond_2
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 34
    .line 35
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v2, "JSON#parseObject cannot parse \'"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p0, "\' to \'"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p0, "\'"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, p0, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    throw v0
.end method

.method public static varargs M1(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)I
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 10
    .line 11
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 12
    .line 13
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 14
    and-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long p2, v2, v4

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    const/4 p2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 27
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :cond_1
    iput-object p1, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 39
    .line 40
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 41
    .line 42
    iput-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 50
    move-result-object v2

    .line 51
    const/4 v6, 0x0

    .line 52
    .line 53
    const-wide/16 v7, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    move-object v4, p1

    .line 56
    .line 57
    .line 58
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 59
    .line 60
    .line 61
    :goto_1
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/OutputStream;)I

    .line 62
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    return p0

    .line 67
    .line 68
    :goto_2
    if-eqz v3, :cond_2

    .line 69
    .line 70
    .line 71
    :try_start_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    goto :goto_3

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    move-object p1, v0

    .line 75
    .line 76
    .line 77
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    :cond_2
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    move-object p0, v0

    .line 81
    .line 82
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    .line 89
    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    throw p1
.end method

.method public static N([B)Lcom/alibaba/fastjson2/JSONArray;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_4

    .line 8
    .line 9
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    .line 11
    new-instance v3, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 15
    .line 16
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 17
    const/4 v6, 0x0

    .line 18
    array-length v7, p0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v5, p0

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfNull()Z

    .line 27
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 33
    return-object v0

    .line 34
    .line 35
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 42
    .line 43
    iget-object v0, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    move-object p0, v0

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_2
    :goto_0
    iget-char v0, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 55
    .line 56
    const/16 v1, 0x1a

    .line 57
    .line 58
    if-eq v0, v1, :cond_4

    .line 59
    .line 60
    iget-wide v0, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 61
    .line 62
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 63
    .line 64
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 65
    and-long/2addr v0, v3

    .line 66
    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .line 69
    cmp-long v0, v0, v3

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 75
    .line 76
    const-string v0, "input not end"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 88
    return-object p0

    .line 89
    .line 90
    .line 91
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    goto :goto_3

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    :goto_3
    throw p0

    .line 98
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static varargs N0(Ljava/net/URL;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/a;->r0(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    .line 12
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    .line 17
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    :cond_1
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    .line 24
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    goto :goto_0

    .line 26
    :catchall_1
    move-exception p0

    .line 27
    .line 28
    .line 29
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 30
    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    .line 33
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 34
    .line 35
    const-string p2, "parseObject error"

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    throw p1
.end method

.method public static varargs N1(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)I
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 11
    .line 12
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 13
    .line 14
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide v4, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr v2, v4

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long p3, v2, v4

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    const/4 p3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p3, 0x0

    .line 27
    .line 28
    .line 29
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 30
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    .line 35
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    move-object v4, p1

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p0, v0

    .line 40
    move-object v4, p1

    .line 41
    goto :goto_4

    .line 42
    .line 43
    :cond_1
    :try_start_2
    iput-object p1, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 44
    .line 45
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 46
    .line 47
    iput-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    :try_start_3
    array-length v1, p2

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .line 59
    .line 60
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p2, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 65
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 66
    const/4 v6, 0x0

    .line 67
    .line 68
    const-wide/16 v7, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    move-object v4, p1

    .line 71
    .line 72
    .line 73
    :try_start_5
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/OutputStream;)I

    .line 77
    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    .line 79
    .line 80
    :try_start_6
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 81
    return p0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :goto_2
    move-object p0, v0

    .line 84
    goto :goto_6

    .line 85
    :catchall_1
    move-exception v0

    .line 86
    :goto_3
    move-object p0, v0

    .line 87
    goto :goto_4

    .line 88
    :catchall_2
    move-exception v0

    .line 89
    move-object v4, p1

    .line 90
    goto :goto_3

    .line 91
    .line 92
    :goto_4
    if-eqz v3, :cond_3

    .line 93
    .line 94
    .line 95
    :try_start_7
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 96
    goto :goto_5

    .line 97
    :catchall_3
    move-exception v0

    .line 98
    move-object p1, v0

    .line 99
    .line 100
    .line 101
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102
    :cond_3
    :goto_5
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    move-object v4, p1

    .line 105
    goto :goto_2

    .line 106
    .line 107
    :goto_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    const-string p3, "JSON#writeTo cannot serialize \'"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string p3, "\' to \'OutputStream\'"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p2

    .line 130
    .line 131
    .line 132
    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    throw p1
.end method

.method public static O([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-eqz v1, :cond_6

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1, p2, p3, v2}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 24
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 39
    .line 40
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_2
    :goto_0
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 51
    .line 52
    const/16 p3, 0x1a

    .line 53
    .line 54
    if-eq p2, p3, :cond_4

    .line 55
    .line 56
    iget-wide p2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 57
    .line 58
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 59
    .line 60
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 61
    and-long/2addr p2, v0

    .line 62
    .line 63
    const-wide/16 v0, 0x0

    .line 64
    .line 65
    cmp-long p2, p2, v0

    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 71
    .line 72
    const-string p2, "input not end"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 84
    return-object p1

    .line 85
    .line 86
    :goto_2
    if-eqz p0, :cond_5

    .line 87
    .line 88
    .line 89
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    goto :goto_3

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    :cond_5
    :goto_3
    throw p1

    .line 96
    :cond_6
    :goto_4
    return-object v0
.end method

.method public static O0(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    .line 8
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 12
    .line 13
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 14
    .line 15
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 16
    .line 17
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 18
    and-long/2addr v3, v5

    .line 19
    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    cmp-long v3, v3, v5

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    const/4 v3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, p1, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 31
    move-result-object v7

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v2, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/nio/ByteBuffer;Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;

    .line 35
    move-result-object v8

    .line 36
    const/4 v10, 0x0

    .line 37
    .line 38
    const-wide/16 v11, 0x0

    .line 39
    move-object v9, p1

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-interface/range {v7 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    iget-object p1, v8, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object p0, v0

    .line 54
    goto :goto_3

    .line 55
    .line 56
    :cond_2
    :goto_1
    iget-char p1, v8, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 57
    .line 58
    const/16 v0, 0x1a

    .line 59
    .line 60
    if-eq p1, v0, :cond_4

    .line 61
    .line 62
    iget-wide v0, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 63
    .line 64
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 65
    .line 66
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 67
    and-long/2addr v0, v2

    .line 68
    .line 69
    cmp-long p1, v0, v5

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 75
    .line 76
    const-string p1, "input not end"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 88
    return-object p0

    .line 89
    .line 90
    :goto_3
    if-eqz v8, :cond_5

    .line 91
    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    goto :goto_4

    .line 95
    :catchall_1
    move-exception v0

    .line 96
    move-object p1, v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    :cond_5
    :goto_4
    throw p0
.end method

.method public static P([C)Lcom/alibaba/fastjson2/JSONArray;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_4

    .line 8
    .line 9
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    .line 11
    new-instance v3, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 15
    .line 16
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 17
    const/4 v6, 0x0

    .line 18
    array-length v7, p0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v5, p0

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 27
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 33
    return-object v0

    .line 34
    .line 35
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 42
    .line 43
    iget-object v0, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    move-object p0, v0

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :cond_2
    :goto_0
    iget-char v0, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 55
    .line 56
    const/16 v1, 0x1a

    .line 57
    .line 58
    if-eq v0, v1, :cond_4

    .line 59
    .line 60
    iget-wide v0, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 61
    .line 62
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 63
    .line 64
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 65
    and-long/2addr v0, v3

    .line 66
    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .line 69
    cmp-long v0, v0, v3

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 75
    .line 76
    const-string v0, "input not end"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 88
    return-object p0

    .line 89
    .line 90
    .line 91
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    goto :goto_3

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    :goto_3
    throw p0

    .line 98
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static varargs P0([BIILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    move-object/from16 v1, p4

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 19
    .line 20
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 21
    .line 22
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 23
    .line 24
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 25
    and-long/2addr v3, v5

    .line 26
    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    cmp-long v1, v3, v7

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    :goto_0
    move-object/from16 v11, p3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v0, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 41
    move-result-object v9

    .line 42
    .line 43
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 44
    const/4 v3, 0x0

    .line 45
    move-object v4, p0

    .line 46
    .line 47
    move/from16 v5, p1

    .line 48
    .line 49
    move/from16 v6, p2

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 53
    const/4 v12, 0x0

    .line 54
    .line 55
    const-wide/16 v13, 0x0

    .line 56
    move-object v10, v1

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .line 62
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 68
    goto :goto_3

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    :goto_2
    move-object p0, v0

    .line 71
    goto :goto_5

    .line 72
    .line 73
    :cond_2
    :goto_3
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 74
    .line 75
    const/16 v3, 0x1a

    .line 76
    .line 77
    if-eq v0, v3, :cond_4

    .line 78
    .line 79
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 80
    .line 81
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 82
    .line 83
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 84
    and-long/2addr v2, v4

    .line 85
    .line 86
    cmp-long v0, v2, v7

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    goto :goto_4

    .line 90
    .line 91
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 92
    .line 93
    const-string v0, "input not end"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 105
    return-object p0

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    move-object v1, v10

    .line 108
    goto :goto_2

    .line 109
    .line 110
    .line 111
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    goto :goto_6

    .line 113
    :catchall_2
    move-exception v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 117
    :goto_6
    throw p0

    .line 118
    :cond_5
    :goto_7
    const/4 p0, 0x0

    .line 119
    return-object p0
.end method

.method public static Q(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 17
    .line 18
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-char p1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x1a

    .line 45
    .line 46
    if-eq p1, v2, :cond_3

    .line 47
    .line 48
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 49
    .line 50
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 51
    .line 52
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 53
    and-long/2addr v1, v3

    .line 54
    .line 55
    const-wide/16 v3, 0x0

    .line 56
    .line 57
    cmp-long p1, v1, v3

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 63
    .line 64
    const-string p1, "input not end"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 76
    return-object p0

    .line 77
    .line 78
    .line 79
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    :goto_3
    throw p0

    .line 86
    :cond_4
    :goto_4
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method

.method public static varargs Q0([BIILjava/nio/charset/Charset;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_6

    .line 3
    array-length v1, p0

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    move-object/from16 v3, p5

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 19
    .line 20
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 21
    .line 22
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 23
    .line 24
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 25
    and-long/2addr v3, v5

    .line 26
    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    cmp-long v3, v3, v5

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    const/4 v3, 0x1

    .line 33
    .line 34
    :goto_0
    move-object/from16 v9, p4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v3, 0x0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v1, v9, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 41
    move-result-object v7

    .line 42
    .line 43
    move-object/from16 v1, p3

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p1, p2, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 47
    move-result-object v8

    .line 48
    const/4 v10, 0x0

    .line 49
    .line 50
    const-wide/16 v11, 0x0

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-interface/range {v7 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    iget-object p1, v8, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    goto :goto_4

    .line 66
    .line 67
    :cond_2
    :goto_2
    iget-char p1, v8, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    const/16 v0, 0x1a

    .line 70
    .line 71
    if-eq p1, v0, :cond_4

    .line 72
    .line 73
    iget-wide v0, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr v0, v2

    .line 79
    .line 80
    cmp-long p1, v0, v5

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    goto :goto_3

    .line 84
    .line 85
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string p1, "input not end"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 99
    return-object p0

    .line 100
    .line 101
    :goto_4
    if-eqz v8, :cond_5

    .line 102
    .line 103
    .line 104
    :try_start_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    goto :goto_5

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    move-object p1, v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    :cond_5
    :goto_5
    throw p0

    .line 112
    :cond_6
    :goto_6
    const/4 p0, 0x0

    .line 113
    return-object p0
.end method

.method public static varargs R(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 17
    .line 18
    new-instance p2, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v1, p0, v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-char p1, p2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v0, 0x1a

    .line 45
    .line 46
    if-eq p1, v0, :cond_3

    .line 47
    .line 48
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 49
    .line 50
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 51
    .line 52
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 53
    and-long/2addr v0, v2

    .line 54
    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    cmp-long p1, v0, v2

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 63
    .line 64
    const-string p1, "input not end"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 76
    return-object p0

    .line 77
    .line 78
    .line 79
    :goto_2
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    :goto_3
    throw p0

    .line 86
    :cond_4
    :goto_4
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method

.method public static R0([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_6

    .line 3
    array-length v1, p0

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    goto :goto_6

    .line 9
    .line 10
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 11
    .line 12
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 16
    .line 17
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 18
    .line 19
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 20
    .line 21
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 22
    and-long/2addr v3, v5

    .line 23
    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    cmp-long v3, v3, v5

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    const/4 v3, 0x1

    .line 30
    .line 31
    :goto_0
    move-object/from16 v9, p4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-virtual {v1, v9, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 38
    move-result-object v7

    .line 39
    .line 40
    move-object/from16 v1, p3

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1, p2, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 44
    move-result-object v8

    .line 45
    const/4 v10, 0x0

    .line 46
    .line 47
    const-wide/16 v11, 0x0

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-interface/range {v7 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    iget-object p1, v8, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 59
    goto :goto_2

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-object p0, v0

    .line 62
    goto :goto_4

    .line 63
    .line 64
    :cond_2
    :goto_2
    iget-char p1, v8, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 65
    .line 66
    const/16 v0, 0x1a

    .line 67
    .line 68
    if-eq p1, v0, :cond_4

    .line 69
    .line 70
    iget-wide v0, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 71
    .line 72
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 73
    .line 74
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 75
    and-long/2addr v0, v2

    .line 76
    .line 77
    cmp-long p1, v0, v5

    .line 78
    .line 79
    if-eqz p1, :cond_3

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 83
    .line 84
    const-string p1, "input not end"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 96
    return-object p0

    .line 97
    .line 98
    :goto_4
    if-eqz v8, :cond_5

    .line 99
    .line 100
    .line 101
    :try_start_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    goto :goto_5

    .line 103
    :catchall_1
    move-exception v0

    .line 104
    move-object p1, v0

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 108
    :cond_5
    :goto_5
    throw p0

    .line 109
    :cond_6
    :goto_6
    const/4 p0, 0x0

    .line 110
    return-object p0
.end method

.method public static S(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 17
    .line 18
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-char p1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x1a

    .line 45
    .line 46
    if-eq p1, v2, :cond_3

    .line 47
    .line 48
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 49
    .line 50
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 51
    .line 52
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 53
    and-long/2addr v1, v3

    .line 54
    .line 55
    const-wide/16 v3, 0x0

    .line 56
    .line 57
    cmp-long p1, v1, v3

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 63
    .line 64
    const-string p1, "input not end"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 76
    return-object p0

    .line 77
    .line 78
    .line 79
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    :goto_3
    throw p0

    .line 86
    :cond_4
    :goto_4
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method

.method public static S0([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_5

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 13
    const/4 v5, 0x0

    .line 14
    array-length v6, p0

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v4, p0

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 23
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v6, 0x0

    .line 25
    .line 26
    const-wide/16 v7, 0x0

    .line 27
    move-object v5, p1

    .line 28
    move-object v4, v1

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 32
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    :try_start_2
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :goto_0
    move-object p0, v0

    .line 43
    goto :goto_3

    .line 44
    .line 45
    :cond_1
    :goto_1
    iget-char p1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 46
    .line 47
    const/16 v0, 0x1a

    .line 48
    .line 49
    if-eq p1, v0, :cond_3

    .line 50
    .line 51
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 52
    .line 53
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 54
    .line 55
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 56
    and-long/2addr v2, v4

    .line 57
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    cmp-long p1, v2, v4

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    goto :goto_2

    .line 64
    .line 65
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 66
    .line 67
    const-string p1, "input not end"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 79
    return-object p0

    .line 80
    :catchall_1
    move-exception v0

    .line 81
    move-object v1, v4

    .line 82
    goto :goto_0

    .line 83
    .line 84
    .line 85
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 86
    goto :goto_4

    .line 87
    :catchall_2
    move-exception v0

    .line 88
    move-object p1, v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 92
    :goto_4
    throw p0

    .line 93
    :cond_4
    :goto_5
    const/4 p0, 0x0

    .line 94
    return-object p0
.end method

.method public static varargs T(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 17
    .line 18
    new-instance p2, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    move-result v2

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v1, p0, v0, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-char p1, p2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v0, 0x1a

    .line 45
    .line 46
    if-eq p1, v0, :cond_3

    .line 47
    .line 48
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 49
    .line 50
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 51
    .line 52
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 53
    and-long/2addr v0, v2

    .line 54
    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    cmp-long p1, v0, v2

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 63
    .line 64
    const-string p1, "input not end"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 76
    return-object p0

    .line 77
    .line 78
    .line 79
    :goto_2
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    :goto_3
    throw p0

    .line 86
    :cond_4
    :goto_4
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method

.method public static T0([BLjava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 10
    const/4 v5, 0x0

    .line 11
    array-length v6, p0

    .line 12
    const/4 v3, 0x0

    .line 13
    move-object v4, p0

    .line 14
    move-object v2, p2

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 18
    move-object p0, v2

    .line 19
    .line 20
    :try_start_0
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 21
    .line 22
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 23
    .line 24
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 25
    and-long/2addr v2, v4

    .line 26
    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    cmp-long p2, v2, v7

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    const/4 p2, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p2, 0x0

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 40
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const/4 v4, 0x0

    .line 42
    .line 43
    const-wide/16 v5, 0x0

    .line 44
    move-object v3, p1

    .line 45
    move-object v2, v1

    .line 46
    move-object v1, p2

    .line 47
    .line 48
    .line 49
    :try_start_1
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 50
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    move-object v1, v2

    .line 52
    .line 53
    :try_start_2
    iget-object p2, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 59
    goto :goto_2

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    :goto_1
    move-object p0, v0

    .line 62
    goto :goto_4

    .line 63
    .line 64
    :cond_2
    :goto_2
    iget-char p2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 65
    .line 66
    const/16 v0, 0x1a

    .line 67
    .line 68
    if-eq p2, v0, :cond_4

    .line 69
    .line 70
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 71
    .line 72
    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 73
    .line 74
    iget-wide v4, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 75
    and-long/2addr v2, v4

    .line 76
    .line 77
    cmp-long p0, v2, v7

    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 83
    .line 84
    const-string p1, "input not end"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 96
    return-object p1

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    move-object v1, v2

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :goto_4
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    goto :goto_5

    .line 104
    :catchall_2
    move-exception v0

    .line 105
    move-object p1, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    :goto_5
    throw p0

    .line 110
    :cond_5
    :goto_6
    const/4 p0, 0x0

    .line 111
    return-object p0
.end method

.method public static varargs U(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 17
    .line 18
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    move-result v3

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readList([Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-char p1, v0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 43
    .line 44
    const/16 v2, 0x1a

    .line 45
    .line 46
    if-eq p1, v2, :cond_3

    .line 47
    .line 48
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 49
    .line 50
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 51
    .line 52
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 53
    and-long/2addr v1, v3

    .line 54
    .line 55
    const-wide/16 v3, 0x0

    .line 56
    .line 57
    cmp-long p1, v1, v3

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 63
    .line 64
    const-string p1, "input not end"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 76
    return-object p0

    .line 77
    .line 78
    .line 79
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    goto :goto_3

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 85
    :goto_3
    throw p0

    .line 86
    :cond_4
    :goto_4
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method

.method public static varargs U0([BLjava/lang/Class;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 14
    const/4 v5, 0x0

    .line 15
    array-length v6, p0

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v4, p0

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v2, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->config(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 24
    .line 25
    iget-wide p2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 26
    .line 27
    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 28
    .line 29
    iget-wide v3, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 30
    and-long/2addr p2, v3

    .line 31
    .line 32
    const-wide/16 v9, 0x0

    .line 33
    .line 34
    cmp-long p0, p2, v9

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    const/4 p0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    .line 41
    :goto_0
    iget-object p2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 45
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const/4 v6, 0x0

    .line 47
    .line 48
    const-wide/16 v7, 0x0

    .line 49
    move-object v5, p1

    .line 50
    move-object v4, v1

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 54
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    :try_start_2
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 62
    goto :goto_2

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    :goto_1
    move-object p0, v0

    .line 65
    goto :goto_4

    .line 66
    .line 67
    :cond_2
    :goto_2
    iget-char p1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    const/16 p2, 0x1a

    .line 70
    .line 71
    if-eq p1, p2, :cond_4

    .line 72
    .line 73
    iget-wide p1, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v2, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr p1, v2

    .line 79
    .line 80
    cmp-long p1, p1, v9

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    goto :goto_3

    .line 84
    .line 85
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string p1, "input not end"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 99
    return-object p0

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    move-object v1, v4

    .line 102
    goto :goto_1

    .line 103
    .line 104
    .line 105
    :goto_4
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 106
    goto :goto_5

    .line 107
    :catchall_2
    move-exception v0

    .line 108
    move-object p1, v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    :goto_5
    throw p0

    .line 113
    :cond_5
    :goto_6
    const/4 p0, 0x0

    .line 114
    return-object p0
.end method

.method public static varargs V(Ljava/lang/String;[Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_4

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    .line 14
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 18
    .line 19
    new-instance p2, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    move-result v1

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-direct {p2, v2, p0, v3, v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 37
    return-object v0

    .line 38
    .line 39
    .line 40
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 41
    .line 42
    new-instance p0, Ljava/util/ArrayList;

    .line 43
    array-length v0, p1

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    :goto_0
    array-length v0, p1

    .line 48
    .line 49
    if-ge v3, v0, :cond_2

    .line 50
    .line 51
    aget-object v0, p1, v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader;->endArray()V

    .line 67
    .line 68
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 74
    .line 75
    :cond_3
    iget-char p1, p2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 76
    .line 77
    const/16 v0, 0x1a

    .line 78
    .line 79
    if-eq p1, v0, :cond_5

    .line 80
    .line 81
    iget-wide v0, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 82
    .line 83
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 84
    .line 85
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 86
    and-long/2addr v0, v2

    .line 87
    .line 88
    const-wide/16 v2, 0x0

    .line 89
    .line 90
    cmp-long p1, v0, v2

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    goto :goto_1

    .line 94
    .line 95
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 96
    .line 97
    const-string p1, "input not end"

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 109
    return-object p0

    .line 110
    .line 111
    .line 112
    :goto_2
    :try_start_2
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    goto :goto_3

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 118
    :goto_3
    throw p0

    .line 119
    :cond_6
    :goto_4
    return-object v0
.end method

.method public static varargs V0([BLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    .line 11
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    .line 13
    move-object/from16 v1, p2

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 17
    .line 18
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 19
    .line 20
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 21
    .line 22
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 23
    and-long/2addr v3, v5

    .line 24
    .line 25
    const-wide/16 v7, 0x0

    .line 26
    .line 27
    cmp-long v1, v3, v7

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    :goto_0
    move-object/from16 v11, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 39
    move-result-object v9

    .line 40
    .line 41
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 42
    const/4 v5, 0x0

    .line 43
    array-length v6, p0

    .line 44
    const/4 v3, 0x0

    .line 45
    move-object v4, p0

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 49
    const/4 v12, 0x0

    .line 50
    .line 51
    const-wide/16 v13, 0x0

    .line 52
    move-object v10, v1

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 56
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    .line 58
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 64
    goto :goto_3

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    :goto_2
    move-object p0, v0

    .line 67
    goto :goto_5

    .line 68
    .line 69
    :cond_2
    :goto_3
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 70
    .line 71
    const/16 v3, 0x1a

    .line 72
    .line 73
    if-eq v0, v3, :cond_4

    .line 74
    .line 75
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 76
    .line 77
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 78
    .line 79
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 80
    and-long/2addr v2, v4

    .line 81
    .line 82
    cmp-long v0, v2, v7

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 88
    .line 89
    const-string v0, "input not end"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 101
    return-object p0

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    move-object v1, v10

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 108
    goto :goto_6

    .line 109
    :catchall_2
    move-exception v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    :goto_6
    throw p0

    .line 114
    :cond_5
    :goto_7
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method

.method public static varargs W([BIILjava/nio/charset/Charset;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    goto :goto_4

    .line 9
    .line 10
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 11
    .line 12
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v0, p5}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 36
    .line 37
    const/16 p3, 0x1a

    .line 38
    .line 39
    if-eq p2, p3, :cond_3

    .line 40
    .line 41
    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 42
    .line 43
    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 44
    .line 45
    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 46
    and-long/2addr p2, p4

    .line 47
    .line 48
    const-wide/16 p4, 0x0

    .line 49
    .line 50
    cmp-long p2, p2, p4

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 56
    .line 57
    const-string p2, "input not end"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 69
    return-object p1

    .line 70
    .line 71
    :goto_2
    if-eqz p0, :cond_4

    .line 72
    .line 73
    .line 74
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    goto :goto_3

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    :cond_4
    :goto_3
    throw p1

    .line 81
    :cond_5
    :goto_4
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method

.method public static W0([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    .line 11
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 15
    .line 16
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 17
    .line 18
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 19
    .line 20
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 21
    and-long/2addr v3, v5

    .line 22
    .line 23
    const-wide/16 v7, 0x0

    .line 24
    .line 25
    cmp-long v1, v3, v7

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    :goto_0
    move-object/from16 v11, p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    move-result-object v9

    .line 38
    .line 39
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 40
    const/4 v5, 0x0

    .line 41
    array-length v6, p0

    .line 42
    const/4 v3, 0x0

    .line 43
    move-object v4, p0

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 47
    const/4 v12, 0x0

    .line 48
    .line 49
    const-wide/16 v13, 0x0

    .line 50
    move-object v10, v1

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 54
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 62
    goto :goto_3

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    :goto_2
    move-object p0, v0

    .line 65
    goto :goto_5

    .line 66
    .line 67
    :cond_2
    :goto_3
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    const/16 v3, 0x1a

    .line 70
    .line 71
    if-eq v0, v3, :cond_4

    .line 72
    .line 73
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr v2, v4

    .line 79
    .line 80
    cmp-long v0, v2, v7

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    goto :goto_4

    .line 84
    .line 85
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string v0, "input not end"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 99
    return-object p0

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    move-object v1, v10

    .line 102
    goto :goto_2

    .line 103
    .line 104
    .line 105
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    goto :goto_6

    .line 107
    :catchall_2
    move-exception v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    :goto_6
    throw p0

    .line 112
    :cond_5
    :goto_7
    const/4 p0, 0x0

    .line 113
    return-object p0
.end method

.method public static varargs X([BLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_4

    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 9
    .line 10
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 14
    .line 15
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 16
    const/4 v5, 0x0

    .line 17
    array-length v6, p0

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v4, p0

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    goto :goto_2

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-char p1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 40
    .line 41
    const/16 p2, 0x1a

    .line 42
    .line 43
    if-eq p1, p2, :cond_3

    .line 44
    .line 45
    iget-wide p1, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 46
    .line 47
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 48
    .line 49
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 50
    and-long/2addr p1, v2

    .line 51
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    cmp-long p1, p1, v2

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 60
    .line 61
    const-string p1, "input not end"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 73
    return-object p0

    .line 74
    .line 75
    .line 76
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    goto :goto_3

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    move-object p1, v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    :goto_3
    throw p0

    .line 84
    :cond_4
    :goto_4
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method

.method public static varargs X0([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_7

    .line 9
    .line 10
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 11
    .line 12
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    .line 14
    move-object/from16 v3, p2

    .line 15
    .line 16
    move-object/from16 v5, p3

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v1, v0, v3, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 20
    .line 21
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 22
    .line 23
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 24
    .line 25
    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 26
    and-long/2addr v5, v7

    .line 27
    .line 28
    const-wide/16 v7, 0x0

    .line 29
    .line 30
    cmp-long v0, v5, v7

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    const/4 v0, 0x1

    .line 34
    .line 35
    :goto_0
    move-object/from16 v11, p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v1, v11, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 42
    move-result-object v9

    .line 43
    .line 44
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 45
    const/4 v5, 0x0

    .line 46
    array-length v6, p0

    .line 47
    const/4 v3, 0x0

    .line 48
    move-object v4, p0

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 52
    const/4 v12, 0x0

    .line 53
    .line 54
    const-wide/16 v13, 0x0

    .line 55
    move-object v10, v1

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 59
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    .line 61
    :try_start_1
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 67
    goto :goto_3

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    :goto_2
    move-object v2, v0

    .line 70
    goto :goto_5

    .line 71
    .line 72
    :cond_2
    :goto_3
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 73
    .line 74
    const/16 v4, 0x1a

    .line 75
    .line 76
    if-eq v3, v4, :cond_4

    .line 77
    .line 78
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 79
    .line 80
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 81
    .line 82
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 83
    and-long/2addr v2, v4

    .line 84
    .line 85
    cmp-long v2, v2, v7

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    goto :goto_4

    .line 89
    .line 90
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 91
    .line 92
    const-string v2, "input not end"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 100
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 104
    return-object v0

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    move-object v1, v10

    .line 107
    goto :goto_2

    .line 108
    .line 109
    .line 110
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    goto :goto_6

    .line 112
    :catchall_2
    move-exception v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 116
    :goto_6
    throw v2

    .line 117
    :cond_5
    :goto_7
    return-object v0
.end method

.method public static varargs Y([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_4

    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 9
    .line 10
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 14
    .line 15
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 16
    const/4 v5, 0x0

    .line 17
    array-length v6, p0

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v4, p0

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    goto :goto_2

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-char p1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 40
    .line 41
    const/16 p2, 0x1a

    .line 42
    .line 43
    if-eq p1, p2, :cond_3

    .line 44
    .line 45
    iget-wide p1, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 46
    .line 47
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 48
    .line 49
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 50
    and-long/2addr p1, v2

    .line 51
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    cmp-long p1, p1, v2

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 60
    .line 61
    const-string p1, "input not end"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 73
    return-object p0

    .line 74
    .line 75
    .line 76
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    goto :goto_3

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    move-object p1, v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    :goto_3
    throw p0

    .line 84
    :cond_4
    :goto_4
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method

.method public static varargs Y0([BLjava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    if-eqz p0, :cond_6

    .line 5
    array-length v1, p0

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 30
    .line 31
    :cond_1
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 32
    .line 33
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 34
    .line 35
    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 36
    and-long/2addr v5, v7

    .line 37
    .line 38
    const-wide/16 v7, 0x0

    .line 39
    .line 40
    cmp-long v0, v5, v7

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    const/4 v0, 0x1

    .line 44
    .line 45
    :goto_0
    move-object/from16 v11, p1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {v1, v11, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 52
    move-result-object v9

    .line 53
    .line 54
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 55
    const/4 v5, 0x0

    .line 56
    array-length v6, p0

    .line 57
    const/4 v3, 0x0

    .line 58
    move-object v4, p0

    .line 59
    .line 60
    .line 61
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 62
    const/4 v12, 0x0

    .line 63
    .line 64
    const-wide/16 v13, 0x0

    .line 65
    move-object v10, v1

    .line 66
    .line 67
    .line 68
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 69
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    .line 71
    :try_start_1
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 72
    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 77
    goto :goto_3

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    :goto_2
    move-object v2, v0

    .line 80
    goto :goto_5

    .line 81
    .line 82
    :cond_3
    :goto_3
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 83
    .line 84
    const/16 v4, 0x1a

    .line 85
    .line 86
    if-eq v3, v4, :cond_5

    .line 87
    .line 88
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 89
    .line 90
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 91
    .line 92
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 93
    and-long/2addr v2, v4

    .line 94
    .line 95
    cmp-long v2, v2, v7

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    goto :goto_4

    .line 99
    .line 100
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 101
    .line 102
    const-string v2, "input not end"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v2

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 110
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 114
    return-object v0

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    move-object v1, v10

    .line 117
    goto :goto_2

    .line 118
    .line 119
    .line 120
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    goto :goto_6

    .line 122
    :catchall_2
    move-exception v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 126
    :goto_6
    throw v2

    .line 127
    :cond_6
    :goto_7
    const/4 v0, 0x0

    .line 128
    return-object v0
.end method

.method public static varargs Z([CLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_4

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    goto :goto_4

    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 9
    .line 10
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 14
    .line 15
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 16
    const/4 v5, 0x0

    .line 17
    array-length v6, p0

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v4, p0

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    goto :goto_2

    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-char p1, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 40
    .line 41
    const/16 p2, 0x1a

    .line 42
    .line 43
    if-eq p1, p2, :cond_3

    .line 44
    .line 45
    iget-wide p1, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 46
    .line 47
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 48
    .line 49
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 50
    and-long/2addr p1, v2

    .line 51
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    cmp-long p1, p1, v2

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 60
    .line 61
    const-string p1, "input not end"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 73
    return-object p0

    .line 74
    .line 75
    .line 76
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    goto :goto_3

    .line 78
    :catchall_1
    move-exception v0

    .line 79
    move-object p1, v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    :goto_3
    throw p0

    .line 84
    :cond_4
    :goto_4
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method

.method public static varargs Z0([BLjava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_7

    .line 9
    .line 10
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 11
    .line 12
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    .line 14
    move-object/from16 v3, p3

    .line 15
    .line 16
    move-object/from16 v5, p4

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v1, v0, v3, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 20
    .line 21
    move-object/from16 v0, p2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 25
    .line 26
    iget-wide v5, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 27
    .line 28
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 29
    .line 30
    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 31
    and-long/2addr v5, v7

    .line 32
    .line 33
    const-wide/16 v7, 0x0

    .line 34
    .line 35
    cmp-long v0, v5, v7

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x1

    .line 39
    .line 40
    :goto_0
    move-object/from16 v11, p1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v1, v11, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 47
    move-result-object v9

    .line 48
    .line 49
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 50
    const/4 v5, 0x0

    .line 51
    array-length v6, p0

    .line 52
    const/4 v3, 0x0

    .line 53
    move-object v4, p0

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 57
    const/4 v12, 0x0

    .line 58
    .line 59
    const-wide/16 v13, 0x0

    .line 60
    move-object v10, v1

    .line 61
    .line 62
    .line 63
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 64
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 65
    .line 66
    :try_start_1
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 72
    goto :goto_3

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    :goto_2
    move-object v2, v0

    .line 75
    goto :goto_5

    .line 76
    .line 77
    :cond_2
    :goto_3
    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 78
    .line 79
    const/16 v4, 0x1a

    .line 80
    .line 81
    if-eq v3, v4, :cond_4

    .line 82
    .line 83
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 84
    .line 85
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 86
    .line 87
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 88
    and-long/2addr v2, v4

    .line 89
    .line 90
    cmp-long v2, v2, v7

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    goto :goto_4

    .line 94
    .line 95
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 96
    .line 97
    const-string v2, "input not end"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 105
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 109
    return-object v0

    .line 110
    :catchall_1
    move-exception v0

    .line 111
    move-object v1, v10

    .line 112
    goto :goto_2

    .line 113
    .line 114
    .line 115
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    goto :goto_6

    .line 117
    :catchall_2
    move-exception v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 121
    :goto_6
    throw v2

    .line 122
    :cond_5
    :goto_7
    return-object v0
.end method

.method public static a(Lcom/alibaba/fastjson2/JSONReader$Feature;Z)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3
    .line 4
    if-ne p0, v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 10
    .line 11
    const-string p1, "not support config global autotype support"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0

    .line 16
    .line 17
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 18
    .line 19
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 20
    .line 21
    iget-wide p0, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 22
    or-long/2addr p0, v0

    .line 23
    .line 24
    sput-wide p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 25
    return-void

    .line 26
    .line 27
    :cond_2
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 28
    .line 29
    iget-wide p0, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 30
    not-long p0, p0

    .line 31
    and-long/2addr p0, v0

    .line 32
    .line 33
    sput-wide p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 34
    return-void
.end method

.method public static a0(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 22
    return-object v0

    .line 23
    .line 24
    :cond_1
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 45
    .line 46
    const/16 v4, 0x1a

    .line 47
    .line 48
    if-eq v0, v4, :cond_4

    .line 49
    .line 50
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 51
    .line 52
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 53
    .line 54
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 55
    and-long/2addr v0, v4

    .line 56
    .line 57
    cmp-long v0, v0, v2

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 63
    .line 64
    const-string v0, "input not end"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 76
    return-object p1

    .line 77
    .line 78
    :goto_2
    if-eqz p0, :cond_5

    .line 79
    .line 80
    .line 81
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    goto :goto_3

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    :cond_5
    :goto_3
    throw p1
.end method

.method public static varargs a1([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    .line 11
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    .line 13
    move-object/from16 v1, p2

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 17
    .line 18
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 19
    .line 20
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 21
    .line 22
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 23
    and-long/2addr v3, v5

    .line 24
    .line 25
    const-wide/16 v7, 0x0

    .line 26
    .line 27
    cmp-long v1, v3, v7

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    :goto_0
    move-object/from16 v11, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 39
    move-result-object v9

    .line 40
    .line 41
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 42
    const/4 v5, 0x0

    .line 43
    array-length v6, p0

    .line 44
    const/4 v3, 0x0

    .line 45
    move-object v4, p0

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 49
    const/4 v12, 0x0

    .line 50
    .line 51
    const-wide/16 v13, 0x0

    .line 52
    move-object v10, v1

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 56
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    .line 58
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 64
    goto :goto_3

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    :goto_2
    move-object p0, v0

    .line 67
    goto :goto_5

    .line 68
    .line 69
    :cond_2
    :goto_3
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 70
    .line 71
    const/16 v3, 0x1a

    .line 72
    .line 73
    if-eq v0, v3, :cond_4

    .line 74
    .line 75
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 76
    .line 77
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 78
    .line 79
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 80
    and-long/2addr v2, v4

    .line 81
    .line 82
    cmp-long v0, v2, v7

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 88
    .line 89
    const-string v0, "input not end"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 101
    return-object p0

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    move-object v1, v10

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 108
    goto :goto_6

    .line 109
    :catchall_2
    move-exception v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    :goto_6
    throw p0

    .line 114
    :cond_5
    :goto_7
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method

.method public static b(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 5
    .line 6
    iget-wide p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 7
    or-long/2addr p0, v0

    .line 8
    .line 9
    sput-wide p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 10
    return-void

    .line 11
    .line 12
    :cond_0
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 13
    .line 14
    iget-wide p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    not-long p0, p0

    .line 16
    and-long/2addr p0, v0

    .line 17
    .line 18
    sput-wide p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 19
    return-void
.end method

.method public static b0(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 12
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_1
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    .line 21
    .line 22
    .line 23
    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 29
    .line 30
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    .line 40
    :cond_2
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 41
    .line 42
    const/16 v3, 0x1a

    .line 43
    .line 44
    if-eq v2, v3, :cond_4

    .line 45
    .line 46
    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 47
    .line 48
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 49
    .line 50
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 51
    and-long/2addr v2, v4

    .line 52
    .line 53
    cmp-long p2, v2, v0

    .line 54
    .line 55
    if-eqz p2, :cond_3

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 59
    .line 60
    const-string p2, "input not end"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 72
    return-object p1

    .line 73
    .line 74
    :goto_2
    if-eqz p0, :cond_5

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    goto :goto_3

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    :cond_5
    :goto_3
    throw p1
.end method

.method public static varargs b1([CIILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CII",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    move-object/from16 v1, p4

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 19
    .line 20
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 21
    .line 22
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 23
    .line 24
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 25
    and-long/2addr v3, v5

    .line 26
    .line 27
    const-wide/16 v7, 0x0

    .line 28
    .line 29
    cmp-long v1, v3, v7

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    :goto_0
    move-object/from16 v11, p3

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-virtual {v0, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 41
    move-result-object v9

    .line 42
    .line 43
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 44
    const/4 v3, 0x0

    .line 45
    move-object v4, p0

    .line 46
    .line 47
    move/from16 v5, p1

    .line 48
    .line 49
    move/from16 v6, p2

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    .line 53
    const/4 v12, 0x0

    .line 54
    .line 55
    const-wide/16 v13, 0x0

    .line 56
    move-object v10, v1

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 60
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .line 62
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 68
    goto :goto_3

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    :goto_2
    move-object p0, v0

    .line 71
    goto :goto_5

    .line 72
    .line 73
    :cond_2
    :goto_3
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 74
    .line 75
    const/16 v3, 0x1a

    .line 76
    .line 77
    if-eq v0, v3, :cond_4

    .line 78
    .line 79
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 80
    .line 81
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 82
    .line 83
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 84
    and-long/2addr v2, v4

    .line 85
    .line 86
    cmp-long v0, v2, v7

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    goto :goto_4

    .line 90
    .line 91
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 92
    .line 93
    const-string v0, "input not end"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 105
    return-object p0

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    move-object v1, v10

    .line 108
    goto :goto_2

    .line 109
    .line 110
    .line 111
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    goto :goto_6

    .line 113
    :catchall_2
    move-exception v0

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 117
    :goto_6
    throw p0

    .line 118
    :cond_5
    :goto_7
    const/4 p0, 0x0

    .line 119
    return-object p0
.end method

.method public static varargs c([Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    aget-object v1, p0, v0

    .line 7
    .line 8
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    sget-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 13
    .line 14
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 15
    or-long/2addr v2, v4

    .line 16
    .line 17
    sput-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 23
    .line 24
    const-string v0, "not support config global autotype support"

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0

    .line 29
    :cond_1
    return-void
.end method

.method public static varargs c0(Ljava/io/InputStream;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v1, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 35
    .line 36
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_2
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 47
    .line 48
    const/16 v4, 0x1a

    .line 49
    .line 50
    if-eq v3, v4, :cond_4

    .line 51
    .line 52
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 53
    .line 54
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 55
    .line 56
    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 57
    and-long/2addr v3, v5

    .line 58
    .line 59
    cmp-long p1, v3, v1

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 65
    .line 66
    const-string v0, "input not end"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 78
    return-object v0

    .line 79
    .line 80
    :goto_2
    if-eqz p0, :cond_5

    .line 81
    .line 82
    .line 83
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    goto :goto_3

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    :cond_5
    :goto_3
    throw p1
.end method

.method public static c1([CLjava/lang/Class;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    .line 11
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 15
    .line 16
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 17
    .line 18
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 19
    .line 20
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 21
    and-long/2addr v3, v5

    .line 22
    .line 23
    const-wide/16 v7, 0x0

    .line 24
    .line 25
    cmp-long v1, v3, v7

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 29
    .line 30
    :goto_0
    move-object/from16 v11, p1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v0, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    move-result-object v9

    .line 38
    .line 39
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 40
    const/4 v5, 0x0

    .line 41
    array-length v6, p0

    .line 42
    const/4 v3, 0x0

    .line 43
    move-object v4, p0

    .line 44
    .line 45
    .line 46
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    .line 47
    const/4 v12, 0x0

    .line 48
    .line 49
    const-wide/16 v13, 0x0

    .line 50
    move-object v10, v1

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 54
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 62
    goto :goto_3

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    :goto_2
    move-object p0, v0

    .line 65
    goto :goto_5

    .line 66
    .line 67
    :cond_2
    :goto_3
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    const/16 v3, 0x1a

    .line 70
    .line 71
    if-eq v0, v3, :cond_4

    .line 72
    .line 73
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr v2, v4

    .line 79
    .line 80
    cmp-long v0, v2, v7

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    goto :goto_4

    .line 84
    .line 85
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string v0, "input not end"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 99
    return-object p0

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    move-object v1, v10

    .line 102
    goto :goto_2

    .line 103
    .line 104
    .line 105
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    goto :goto_6

    .line 107
    :catchall_2
    move-exception v0

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 111
    :goto_6
    throw p0

    .line 112
    :cond_5
    :goto_7
    const/4 p0, 0x0

    .line 113
    return-object p0
.end method

.method public static varargs d([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    aget-object v1, p0, v0

    .line 7
    .line 8
    sget-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 9
    .line 10
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 11
    or-long/2addr v2, v4

    .line 12
    .line 13
    sput-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public static varargs d0(Ljava/io/Reader;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/Reader;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 16
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 22
    return-object v0

    .line 23
    .line 24
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 28
    .line 29
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 33
    .line 34
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 45
    .line 46
    const/16 v4, 0x1a

    .line 47
    .line 48
    if-eq v3, v4, :cond_4

    .line 49
    .line 50
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 51
    .line 52
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 53
    .line 54
    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 55
    and-long/2addr v3, v5

    .line 56
    .line 57
    cmp-long p1, v3, v1

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    goto :goto_1

    .line 61
    .line 62
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 63
    .line 64
    const-string v0, "input not end"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 76
    return-object v0

    .line 77
    .line 78
    :goto_2
    if-eqz p0, :cond_5

    .line 79
    .line 80
    .line 81
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    goto :goto_3

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    :cond_5
    :goto_3
    throw p1
.end method

.method public static varargs d1([CLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    .line 11
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    .line 13
    move-object/from16 v1, p2

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 17
    .line 18
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 19
    .line 20
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 21
    .line 22
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 23
    and-long/2addr v3, v5

    .line 24
    .line 25
    const-wide/16 v7, 0x0

    .line 26
    .line 27
    cmp-long v1, v3, v7

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    :goto_0
    move-object/from16 v11, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 39
    move-result-object v9

    .line 40
    .line 41
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 42
    const/4 v5, 0x0

    .line 43
    array-length v6, p0

    .line 44
    const/4 v3, 0x0

    .line 45
    move-object v4, p0

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    .line 49
    const/4 v12, 0x0

    .line 50
    .line 51
    const-wide/16 v13, 0x0

    .line 52
    move-object v10, v1

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 56
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    .line 58
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 64
    goto :goto_3

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    :goto_2
    move-object p0, v0

    .line 67
    goto :goto_5

    .line 68
    .line 69
    :cond_2
    :goto_3
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 70
    .line 71
    const/16 v3, 0x1a

    .line 72
    .line 73
    if-eq v0, v3, :cond_4

    .line 74
    .line 75
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 76
    .line 77
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 78
    .line 79
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 80
    and-long/2addr v2, v4

    .line 81
    .line 82
    cmp-long v0, v2, v7

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 88
    .line 89
    const-string v0, "input not end"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 101
    return-object p0

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    move-object v1, v10

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 108
    goto :goto_6

    .line 109
    :catchall_2
    move-exception v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    :goto_6
    throw p0

    .line 114
    :cond_5
    :goto_7
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method

.method public static varargs e([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->configEnumAsJavaBean([Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static e0(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_4

    .line 11
    .line 12
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    .line 14
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 18
    .line 19
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    move-result v4

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v1, p0, v3, v4}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 37
    return-object v0

    .line 38
    .line 39
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 43
    .line 44
    const-wide/16 v3, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p0, v3, v4}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 48
    .line 49
    iget-object v0, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_2
    :goto_0
    iget-char v0, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 60
    .line 61
    const/16 v5, 0x1a

    .line 62
    .line 63
    if-eq v0, v5, :cond_4

    .line 64
    .line 65
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 66
    .line 67
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 68
    .line 69
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 70
    and-long/2addr v0, v5

    .line 71
    .line 72
    cmp-long v0, v0, v3

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    goto :goto_1

    .line 76
    .line 77
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 78
    .line 79
    const-string v0, "input not end"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 91
    return-object p0

    .line 92
    .line 93
    .line 94
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    goto :goto_3

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    :goto_3
    throw p0

    .line 101
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static varargs e1([CLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_7

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    .line 11
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    .line 13
    move-object/from16 v1, p2

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 17
    .line 18
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 19
    .line 20
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 21
    .line 22
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 23
    and-long/2addr v3, v5

    .line 24
    .line 25
    const-wide/16 v7, 0x0

    .line 26
    .line 27
    cmp-long v1, v3, v7

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    :goto_0
    move-object/from16 v11, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v11, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 39
    move-result-object v9

    .line 40
    .line 41
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 42
    const/4 v5, 0x0

    .line 43
    array-length v6, p0

    .line 44
    const/4 v3, 0x0

    .line 45
    move-object v4, p0

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    .line 49
    const/4 v12, 0x0

    .line 50
    .line 51
    const-wide/16 v13, 0x0

    .line 52
    move-object v10, v1

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 56
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    .line 58
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 64
    goto :goto_3

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    :goto_2
    move-object p0, v0

    .line 67
    goto :goto_5

    .line 68
    .line 69
    :cond_2
    :goto_3
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 70
    .line 71
    const/16 v3, 0x1a

    .line 72
    .line 73
    if-eq v0, v3, :cond_4

    .line 74
    .line 75
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 76
    .line 77
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 78
    .line 79
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 80
    and-long/2addr v2, v4

    .line 81
    .line 82
    cmp-long v0, v2, v7

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 88
    .line 89
    const-string v0, "input not end"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 101
    return-object p0

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    move-object v1, v10

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :goto_5
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 108
    goto :goto_6

    .line 109
    :catchall_2
    move-exception v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    :goto_6
    throw p0

    .line 114
    :cond_5
    :goto_7
    const/4 p0, 0x0

    .line 115
    return-object p0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static f0(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    goto :goto_4

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 20
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_1
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 32
    .line 33
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 37
    .line 38
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 39
    .line 40
    if-eqz p2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_2
    :goto_0
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 49
    .line 50
    const/16 v2, 0x1a

    .line 51
    .line 52
    if-eq p2, v2, :cond_4

    .line 53
    .line 54
    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 55
    .line 56
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 57
    .line 58
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 59
    and-long/2addr p2, v2

    .line 60
    .line 61
    cmp-long p2, p2, v0

    .line 62
    .line 63
    if-eqz p2, :cond_3

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 67
    .line 68
    const-string p2, "input not end"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    .line 79
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 80
    return-object p1

    .line 81
    .line 82
    :goto_2
    if-eqz p0, :cond_5

    .line 83
    .line 84
    .line 85
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    goto :goto_3

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 91
    :cond_5
    :goto_3
    throw p1

    .line 92
    :cond_6
    :goto_4
    return-object v0
.end method

.method public static f1(Ljava/lang/String;Lcom/alibaba/fastjson2/util/MapMultiValueType;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 17
    .line 18
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 22
    move-result v2

    .line 23
    const/4 v4, 0x0

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v1, p0, v4, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 27
    .line 28
    :try_start_0
    sget-wide v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 29
    .line 30
    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 31
    .line 32
    iget-wide v7, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 33
    and-long/2addr v5, v7

    .line 34
    .line 35
    const-wide/16 v8, 0x0

    .line 36
    .line 37
    cmp-long p0, v5, v8

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    const/4 v4, 0x1

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0, p1, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 44
    move-result-object v2

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    const-wide/16 v6, 0x0

    .line 48
    move-object v4, p1

    .line 49
    .line 50
    .line 51
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    check-cast p0, Ljava/util/Map;

    .line 55
    .line 56
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    goto :goto_2

    .line 66
    .line 67
    :cond_2
    :goto_0
    iget-char p1, v3, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    const/16 v0, 0x1a

    .line 70
    .line 71
    if-eq p1, v0, :cond_4

    .line 72
    .line 73
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr v0, v4

    .line 79
    .line 80
    cmp-long p1, v0, v8

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string p1, "input not end"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 99
    return-object p0

    .line 100
    .line 101
    .line 102
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    goto :goto_3

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    move-object p1, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    :goto_3
    throw p0

    .line 110
    :cond_5
    :goto_4
    const/4 p0, 0x0

    .line 111
    return-object p0
.end method

.method public static g(Lcom/alibaba/fastjson2/time/ZoneId;)V
    .locals 0

    .line 1
    .line 2
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 3
    return-void
.end method

.method public static varargs g0(Ljava/lang/String;II[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    goto :goto_4

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 16
    move-result-object p3

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 24
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 41
    .line 42
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 53
    .line 54
    const/16 v2, 0x1a

    .line 55
    .line 56
    if-eq p2, v2, :cond_4

    .line 57
    .line 58
    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 59
    .line 60
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 61
    .line 62
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 63
    and-long/2addr p2, v2

    .line 64
    .line 65
    cmp-long p2, p2, v0

    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 71
    .line 72
    const-string p2, "input not end"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 84
    return-object p1

    .line 85
    .line 86
    :goto_2
    if-eqz p0, :cond_5

    .line 87
    .line 88
    .line 89
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    goto :goto_3

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    :cond_5
    :goto_3
    throw p1

    .line 96
    :cond_6
    :goto_4
    return-object v0
.end method

.method public static varargs g1(Ljava/io/InputStream;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Consumer;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3
    .line 4
    const/16 v2, 0xa

    .line 5
    move-object v0, p0

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson2/a;->h1(Ljava/io/InputStream;Ljava/nio/charset/Charset;CLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Consumer;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 12
    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFormat:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static h0(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_4

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 35
    .line 36
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_2
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 47
    .line 48
    const/16 v4, 0x1a

    .line 49
    .line 50
    if-eq v3, v4, :cond_4

    .line 51
    .line 52
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 53
    .line 54
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 55
    .line 56
    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 57
    and-long/2addr v3, v5

    .line 58
    .line 59
    cmp-long p1, v3, v1

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 65
    .line 66
    const-string v0, "input not end"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 78
    return-object v0

    .line 79
    .line 80
    :goto_2
    if-eqz p0, :cond_5

    .line 81
    .line 82
    .line 83
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    goto :goto_3

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    :cond_5
    :goto_3
    throw p1

    .line 90
    :cond_6
    :goto_4
    return-object v0
.end method

.method public static varargs h1(Ljava/io/InputStream;Ljava/nio/charset/Charset;CLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Consumer;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "C",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v2, p3

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 13
    array-length v3, v1

    .line 14
    const/4 v6, 0x1

    .line 15
    sub-int/2addr v3, v6

    .line 16
    and-int/2addr v0, v3

    .line 17
    .line 18
    aget-object v7, v1, v0

    .line 19
    .line 20
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, [B

    .line 28
    .line 29
    const/high16 v8, 0x80000

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-array v0, v8, [B

    .line 34
    .line 35
    :cond_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 36
    .line 37
    new-instance v10, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 38
    .line 39
    move-object/from16 v3, p5

    .line 40
    .line 41
    .line 42
    invoke-direct {v10, v9, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 43
    .line 44
    iget-wide v3, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 45
    .line 46
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 47
    .line 48
    iget-wide v11, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 49
    and-long/2addr v3, v11

    .line 50
    .line 51
    const-wide/16 v11, 0x0

    .line 52
    .line 53
    cmp-long v3, v3, v11

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    move v14, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v14, 0x0

    .line 59
    :goto_0
    move-object v15, v0

    .line 60
    const/4 v0, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    :goto_1
    :try_start_0
    array-length v4, v15

    .line 63
    sub-int/2addr v4, v0

    .line 64
    .line 65
    move-object/from16 v5, p0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v15, v0, v4}, Ljava/io/InputStream;->read([BII)I

    .line 69
    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const/4 v6, -0x1

    .line 71
    .line 72
    if-ne v4, v6, :cond_2

    .line 73
    .line 74
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v7, v15}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-void

    .line 79
    .line 80
    :cond_2
    add-int v6, v0, v4

    .line 81
    const/4 v4, 0x0

    .line 82
    .line 83
    :goto_2
    if-ge v0, v6, :cond_8

    .line 84
    .line 85
    move/from16 v16, v8

    .line 86
    .line 87
    :try_start_1
    aget-byte v8, v15, v0

    .line 88
    .line 89
    move-wide/from16 v17, v11

    .line 90
    .line 91
    move/from16 v11, p2

    .line 92
    .line 93
    if-ne v8, v11, :cond_7

    .line 94
    .line 95
    sub-int v4, v0, v3

    .line 96
    .line 97
    move-object/from16 v8, p1

    .line 98
    .line 99
    .line 100
    invoke-static {v15, v3, v4, v8, v10}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    if-nez v1, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v2, v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 107
    move-result-object v1

    .line 108
    :cond_3
    move-object v4, v3

    .line 109
    goto :goto_3

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    .line 112
    goto/16 :goto_9

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .line 115
    goto/16 :goto_8

    .line 116
    :goto_3
    const/4 v3, 0x0

    .line 117
    move v12, v0

    .line 118
    move-object v0, v1

    .line 119
    move-object v1, v4

    .line 120
    .line 121
    const-wide/16 v4, 0x0

    .line 122
    .line 123
    .line 124
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 125
    move-result-object v3

    .line 126
    .line 127
    iget-object v4, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 128
    .line 129
    if-eqz v4, :cond_4

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 133
    .line 134
    :cond_4
    iget-char v4, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 135
    .line 136
    const/16 v5, 0x1a

    .line 137
    .line 138
    if-eq v4, v5, :cond_5

    .line 139
    .line 140
    iget-object v4, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 141
    .line 142
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 143
    .line 144
    sget-object v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 145
    .line 146
    move-wide/from16 v19, v4

    .line 147
    .line 148
    iget-wide v4, v13, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 149
    .line 150
    and-long v4, v19, v4

    .line 151
    .line 152
    cmp-long v4, v4, v17

    .line 153
    .line 154
    if-eqz v4, :cond_6

    .line 155
    .line 156
    :cond_5
    move-object/from16 v5, p4

    .line 157
    goto :goto_4

    .line 158
    .line 159
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 160
    .line 161
    const-string v3, "input not end"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    .line 167
    .line 168
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 169
    throw v0

    .line 170
    .line 171
    .line 172
    :goto_4
    invoke-interface {v5, v3}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 173
    .line 174
    add-int/lit8 v1, v12, 0x1

    .line 175
    move v3, v1

    .line 176
    const/4 v4, 0x1

    .line 177
    move-object v1, v0

    .line 178
    goto :goto_5

    .line 179
    .line 180
    :cond_7
    move-object/from16 v8, p1

    .line 181
    .line 182
    move-object/from16 v5, p4

    .line 183
    move v12, v0

    .line 184
    .line 185
    :goto_5
    add-int/lit8 v0, v12, 0x1

    .line 186
    .line 187
    move-object/from16 v5, p0

    .line 188
    .line 189
    move/from16 v8, v16

    .line 190
    .line 191
    move-wide/from16 v11, v17

    .line 192
    goto :goto_2

    .line 193
    .line 194
    :cond_8
    move-object/from16 v5, p4

    .line 195
    .line 196
    move/from16 v16, v8

    .line 197
    .line 198
    move-wide/from16 v17, v11

    .line 199
    .line 200
    move-object/from16 v8, p1

    .line 201
    .line 202
    move/from16 v11, p2

    .line 203
    array-length v0, v15

    .line 204
    .line 205
    if-ne v6, v0, :cond_a

    .line 206
    .line 207
    if-eqz v4, :cond_9

    .line 208
    array-length v0, v15

    .line 209
    sub-int/2addr v0, v3

    .line 210
    const/4 v4, 0x0

    .line 211
    .line 212
    .line 213
    invoke-static {v15, v3, v15, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    move v3, v4

    .line 215
    goto :goto_7

    .line 216
    :cond_9
    const/4 v4, 0x0

    .line 217
    array-length v0, v15

    .line 218
    .line 219
    add-int v0, v0, v16

    .line 220
    .line 221
    .line 222
    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 223
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    move-object v15, v0

    .line 225
    :goto_6
    move v0, v6

    .line 226
    goto :goto_7

    .line 227
    :cond_a
    const/4 v4, 0x0

    .line 228
    goto :goto_6

    .line 229
    .line 230
    :goto_7
    move/from16 v8, v16

    .line 231
    .line 232
    move-wide/from16 v11, v17

    .line 233
    const/4 v6, 0x1

    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :goto_8
    :try_start_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 238
    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    const-string v4, "JSON#parseObject cannot parse the \'InputStream\' to \'"

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v2, "\'"

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v2

    .line 260
    .line 261
    .line 262
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .line 265
    :goto_9
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v7, v15}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    throw v0
.end method

.method public static i(Lcom/alibaba/fastjson2/time/ZoneId;)V
    .locals 0

    .line 1
    .line 2
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterZoneId:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 3
    return-void
.end method

.method public static varargs i0(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_4

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result v3

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 34
    return-object v0

    .line 35
    .line 36
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 40
    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 45
    .line 46
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_2
    :goto_0
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 57
    .line 58
    const/16 v4, 0x1a

    .line 59
    .line 60
    if-eq v0, v4, :cond_4

    .line 61
    .line 62
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 63
    .line 64
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 65
    .line 66
    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 67
    and-long/2addr v4, v6

    .line 68
    .line 69
    cmp-long p1, v4, v2

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 75
    .line 76
    const-string p1, "input not end"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 88
    return-object p0

    .line 89
    .line 90
    .line 91
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    goto :goto_3

    .line 93
    :catchall_1
    move-exception p1

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    :goto_3
    throw p0

    .line 98
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static i1(Ljava/io/Reader;CLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/Consumer;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "C",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v2, p2

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 10
    move-result v0

    .line 11
    .line 12
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 13
    array-length v3, v1

    .line 14
    const/4 v6, 0x1

    .line 15
    sub-int/2addr v3, v6

    .line 16
    and-int/2addr v0, v3

    .line 17
    .line 18
    aget-object v7, v1, v0

    .line 19
    .line 20
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v7, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, [C

    .line 28
    .line 29
    const/16 v8, 0x2000

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-array v0, v8, [C

    .line 34
    .line 35
    :cond_0
    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 36
    .line 37
    new-instance v10, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 38
    .line 39
    .line 40
    invoke-direct {v10, v9}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 41
    .line 42
    iget-wide v3, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 43
    .line 44
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 45
    .line 46
    iget-wide v11, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 47
    and-long/2addr v3, v11

    .line 48
    .line 49
    const-wide/16 v11, 0x0

    .line 50
    .line 51
    cmp-long v3, v3, v11

    .line 52
    const/4 v11, 0x0

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    move v12, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v12, v11

    .line 58
    :goto_0
    move-object v13, v0

    .line 59
    move v0, v11

    .line 60
    move v3, v0

    .line 61
    :goto_1
    :try_start_0
    array-length v4, v13

    .line 62
    sub-int/2addr v4, v0

    .line 63
    .line 64
    move-object/from16 v14, p0

    .line 65
    .line 66
    .line 67
    invoke-virtual {v14, v13, v0, v4}, Ljava/io/Reader;->read([CII)I

    .line 68
    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const/4 v5, -0x1

    .line 70
    .line 71
    if-ne v4, v5, :cond_2

    .line 72
    .line 73
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v7, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    return-void

    .line 78
    .line 79
    :cond_2
    add-int v15, v0, v4

    .line 80
    move v4, v11

    .line 81
    .line 82
    :goto_2
    if-ge v0, v15, :cond_5

    .line 83
    .line 84
    :try_start_1
    aget-char v5, v13, v0

    .line 85
    .line 86
    move/from16 v6, p1

    .line 87
    .line 88
    if-ne v5, v6, :cond_4

    .line 89
    .line 90
    sub-int v4, v0, v3

    .line 91
    .line 92
    .line 93
    invoke-static {v13, v3, v4, v10}, Lcom/alibaba/fastjson2/JSONReader;->of([CIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v2, v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 100
    move-result-object v1

    .line 101
    :cond_3
    move-object v4, v3

    .line 102
    goto :goto_3

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_7

    .line 105
    :catch_0
    move-exception v0

    .line 106
    goto :goto_6

    .line 107
    :goto_3
    const/4 v3, 0x0

    .line 108
    .line 109
    move/from16 v16, v0

    .line 110
    move-object v0, v1

    .line 111
    move-object v1, v4

    .line 112
    .line 113
    const-wide/16 v4, 0x0

    .line 114
    .line 115
    .line 116
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    move-object/from16 v5, p3

    .line 120
    .line 121
    .line 122
    invoke-interface {v5, v1}, Lcom/alibaba/fastjson2/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 123
    .line 124
    add-int/lit8 v1, v16, 0x1

    .line 125
    move v3, v1

    .line 126
    const/4 v4, 0x1

    .line 127
    move-object v1, v0

    .line 128
    goto :goto_4

    .line 129
    .line 130
    :cond_4
    move-object/from16 v5, p3

    .line 131
    .line 132
    move/from16 v16, v0

    .line 133
    .line 134
    :goto_4
    add-int/lit8 v0, v16, 0x1

    .line 135
    const/4 v6, 0x1

    .line 136
    goto :goto_2

    .line 137
    .line 138
    :cond_5
    move/from16 v6, p1

    .line 139
    .line 140
    move-object/from16 v5, p3

    .line 141
    array-length v0, v13

    .line 142
    .line 143
    if-ne v15, v0, :cond_7

    .line 144
    .line 145
    if-eqz v4, :cond_6

    .line 146
    array-length v0, v13

    .line 147
    sub-int/2addr v0, v3

    .line 148
    .line 149
    .line 150
    invoke-static {v13, v3, v13, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    move v3, v11

    .line 152
    goto :goto_5

    .line 153
    :cond_6
    array-length v0, v13

    .line 154
    add-int/2addr v0, v8

    .line 155
    .line 156
    .line 157
    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 158
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    move-object v13, v0

    .line 160
    :cond_7
    move v0, v15

    .line 161
    :goto_5
    const/4 v6, 0x1

    .line 162
    goto :goto_1

    .line 163
    .line 164
    :goto_6
    :try_start_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 165
    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    const-string v4, "JSON#parseObject cannot parse the \'Reader\' to \'"

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v2, "\'"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    .line 192
    :goto_7
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v7, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    throw v0
.end method

.method public static varargs j(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Lcom/alibaba/fastjson2/JSONWriter$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    return-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    .line 12
    move-result v3

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    return-object p0

    .line 16
    :cond_1
    const/4 v7, 0x0

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    move-wide v12, v3

    .line 20
    move v3, v7

    .line 21
    move v4, v3

    .line 22
    move v8, v4

    .line 23
    :goto_0
    array-length v5, p1

    .line 24
    const/4 v9, 0x1

    .line 25
    .line 26
    if-ge v3, v5, :cond_4

    .line 27
    .line 28
    aget-object v5, p1, v3

    .line 29
    .line 30
    iget-wide v10, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 31
    or-long/2addr v12, v10

    .line 32
    .line 33
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 34
    .line 35
    if-ne v5, v6, :cond_2

    .line 36
    move v4, v9

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_2
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 40
    .line 41
    if-ne v5, v6, :cond_3

    .line 42
    move v8, v9

    .line 43
    .line 44
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_4
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1, v1, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v1, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 57
    move-result-object v10

    .line 58
    .line 59
    instance-of v1, v3, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 60
    .line 61
    if-eqz v1, :cond_9

    .line 62
    .line 63
    instance-of v1, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    .line 64
    .line 65
    if-eqz v1, :cond_9

    .line 66
    .line 67
    .line 68
    invoke-interface {v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    instance-of v1, v10, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;

    .line 72
    .line 73
    if-eqz v1, :cond_6

    .line 74
    .line 75
    new-instance v1, Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 79
    move-result v3

    .line 80
    .line 81
    .line 82
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 83
    .line 84
    .line 85
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 86
    move-result v3

    .line 87
    .line 88
    if-ge v7, v3, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v3

    .line 93
    .line 94
    check-cast v3, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    iget-object v3, v3, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    add-int/lit8 v7, v7, 0x1

    .line 106
    goto :goto_2

    .line 107
    .line 108
    .line 109
    :cond_5
    invoke-interface {v10, v1, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    .line 113
    .line 114
    :cond_6
    invoke-interface {v10, v12, v13}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    move v3, v7

    .line 117
    .line 118
    .line 119
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 120
    move-result v4

    .line 121
    .line 122
    if-ge v3, v4, :cond_8

    .line 123
    .line 124
    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v4

    .line 127
    .line 128
    check-cast v4, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 129
    .line 130
    iget-object v5, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    invoke-interface {v10, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    if-nez v5, :cond_7

    .line 137
    goto :goto_4

    .line 138
    .line 139
    .line 140
    :cond_7
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    new-array v6, v7, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 144
    .line 145
    .line 146
    invoke-static {v4, v6}, Lcom/alibaba/fastjson2/a;->j(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;

    .line 147
    move-result-object v4

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v1, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .line 152
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 153
    goto :goto_3

    .line 154
    :cond_8
    return-object v1

    .line 155
    .line 156
    .line 157
    :cond_9
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriter;->ofJSONB([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 158
    move-result-object v1

    .line 159
    .line 160
    :try_start_0
    new-array v0, v9, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 161
    .line 162
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 163
    .line 164
    aput-object v4, v0, v7

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 168
    const/4 v4, 0x0

    .line 169
    .line 170
    const-wide/16 v5, 0x0

    .line 171
    move-object v0, v3

    .line 172
    const/4 v3, 0x0

    .line 173
    move-object v2, p0

    .line 174
    .line 175
    .line 176
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    .line 180
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 184
    const/4 v1, 0x2

    .line 185
    .line 186
    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 187
    .line 188
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 189
    .line 190
    aput-object v2, v1, v7

    .line 191
    .line 192
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 193
    .line 194
    aput-object v2, v1, v9

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->ofJSONB([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader;

    .line 198
    move-result-object v1

    .line 199
    .line 200
    if-eqz v8, :cond_a

    .line 201
    .line 202
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 203
    .line 204
    new-array v2, v9, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 205
    .line 206
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 207
    .line 208
    aput-object v3, v2, v7

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :cond_a
    move-object v8, v10

    .line 213
    goto :goto_6

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    move-object v9, v1

    .line 216
    :goto_5
    move-object v1, v0

    .line 217
    goto :goto_7

    .line 218
    :goto_6
    const/4 v10, 0x0

    .line 219
    const/4 v11, 0x0

    .line 220
    move-object v9, v1

    .line 221
    .line 222
    .line 223
    :try_start_2
    invoke-interface/range {v8 .. v13}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 224
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    .line 226
    if-eqz v9, :cond_b

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 230
    :cond_b
    return-object v0

    .line 231
    :catchall_1
    move-exception v0

    .line 232
    goto :goto_5

    .line 233
    .line 234
    :goto_7
    if-eqz v9, :cond_c

    .line 235
    .line 236
    .line 237
    :try_start_3
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 238
    goto :goto_8

    .line 239
    :catchall_2
    move-exception v0

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 243
    :cond_c
    :goto_8
    throw v1

    .line 244
    :catchall_3
    move-exception v0

    .line 245
    move-object v2, v0

    .line 246
    .line 247
    if-eqz v1, :cond_d

    .line 248
    .line 249
    .line 250
    :try_start_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 251
    goto :goto_9

    .line 252
    :catchall_4
    move-exception v0

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 256
    :cond_d
    :goto_9
    throw v2
.end method

.method public static j0(Ljava/net/URL;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    :try_start_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/a;->a0(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONObject;

    .line 14
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    .line 19
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    return-object v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    .line 29
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception v0

    .line 32
    .line 33
    .line 34
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 36
    .line 37
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v3, "JSON#parseObject cannot parse \'"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p0, "\'"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    .line 61
    .line 62
    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    throw v1
.end method

.method public static j1(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static varargs k(Ljava/lang/Object;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONWriter$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v2, p0

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    const/4 v7, 0x0

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    move v5, v7

    .line 17
    move v6, v5

    .line 18
    move v8, v6

    .line 19
    :goto_0
    array-length v9, v0

    .line 20
    const/4 v10, 0x1

    .line 21
    .line 22
    if-ge v5, v9, :cond_3

    .line 23
    .line 24
    aget-object v9, v0, v5

    .line 25
    .line 26
    iget-wide v11, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 27
    or-long/2addr v3, v11

    .line 28
    .line 29
    sget-object v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 30
    .line 31
    if-ne v9, v11, :cond_1

    .line 32
    move v6, v10

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    sget-object v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 36
    .line 37
    if-ne v9, v11, :cond_2

    .line 38
    move v8, v10

    .line 39
    .line 40
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_3
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1, v1, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 50
    .line 51
    move-object/from16 v9, p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v9, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 55
    move-result-object v11

    .line 56
    .line 57
    instance-of v5, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 58
    .line 59
    if-eqz v5, :cond_c

    .line 60
    .line 61
    instance-of v5, v11, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    .line 62
    .line 63
    if-eqz v5, :cond_c

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    instance-of v1, v11, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;

    .line 70
    .line 71
    if-eqz v1, :cond_5

    .line 72
    .line 73
    new-instance v1, Ljava/util/HashMap;

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    move-result v5

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 84
    move-result v5

    .line 85
    .line 86
    if-ge v7, v5, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    check-cast v5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    move-result-object v6

    .line 97
    .line 98
    iget-object v5, v5, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    add-int/lit8 v7, v7, 0x1

    .line 104
    goto :goto_2

    .line 105
    .line 106
    .line 107
    :cond_4
    invoke-interface {v11, v1, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    return-object v0

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-interface {v11, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    .line 113
    move-result-object v1

    .line 114
    move v3, v7

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 118
    move-result v4

    .line 119
    .line 120
    if-ge v3, v4, :cond_b

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    check-cast v4, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 127
    .line 128
    iget-object v5, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-interface {v11, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 132
    move-result-object v5

    .line 133
    .line 134
    if-nez v5, :cond_6

    .line 135
    goto :goto_5

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    move-result-object v6

    .line 140
    .line 141
    iget-object v8, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 142
    .line 143
    const-class v9, Ljava/util/Date;

    .line 144
    .line 145
    const-class v10, Ljava/lang/String;

    .line 146
    .line 147
    if-ne v8, v9, :cond_7

    .line 148
    .line 149
    iget-object v9, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 150
    .line 151
    if-ne v9, v10, :cond_7

    .line 152
    .line 153
    check-cast v6, Ljava/util/Date;

    .line 154
    .line 155
    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-static {v6, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v6

    .line 160
    goto :goto_4

    .line 161
    .line 162
    :cond_7
    const-class v9, Lcom/alibaba/fastjson2/time/LocalDate;

    .line 163
    .line 164
    if-ne v8, v9, :cond_8

    .line 165
    .line 166
    iget-object v8, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 167
    .line 168
    if-ne v8, v10, :cond_8

    .line 169
    .line 170
    check-cast v6, Lcom/alibaba/fastjson2/time/LocalDate;

    .line 171
    .line 172
    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-static {v6, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->format(Lcom/alibaba/fastjson2/time/LocalDate;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v6

    .line 177
    goto :goto_4

    .line 178
    .line 179
    :cond_8
    if-eqz v6, :cond_a

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    move-result-object v4

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->supportAcceptType(Ljava/lang/Class;)Z

    .line 187
    move-result v4

    .line 188
    .line 189
    if-eqz v4, :cond_9

    .line 190
    goto :goto_4

    .line 191
    .line 192
    :cond_9
    new-array v4, v7, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 193
    .line 194
    .line 195
    invoke-static {v6, v4}, Lcom/alibaba/fastjson2/a;->j(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;

    .line 196
    move-result-object v6

    .line 197
    .line 198
    .line 199
    :cond_a
    :goto_4
    invoke-virtual {v5, v1, v6}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    .line 201
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 202
    goto :goto_3

    .line 203
    :cond_b
    return-object v1

    .line 204
    .line 205
    .line 206
    :cond_c
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofJSONB([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 207
    move-result-object v3

    .line 208
    .line 209
    :try_start_0
    new-array v0, v10, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 210
    .line 211
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 212
    .line 213
    aput-object v4, v0, v7

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/JSONWriter;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 217
    const/4 v4, 0x0

    .line 218
    .line 219
    const-wide/16 v5, 0x0

    .line 220
    move-object v0, v1

    .line 221
    move-object v1, v3

    .line 222
    const/4 v3, 0x0

    .line 223
    .line 224
    .line 225
    :try_start_1
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    .line 229
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 233
    const/4 v1, 0x2

    .line 234
    .line 235
    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 236
    .line 237
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 238
    .line 239
    aput-object v2, v1, v7

    .line 240
    .line 241
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 242
    .line 243
    aput-object v2, v1, v10

    .line 244
    .line 245
    .line 246
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->ofJSONB([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader;

    .line 247
    move-result-object v12

    .line 248
    .line 249
    if-eqz v8, :cond_d

    .line 250
    .line 251
    :try_start_2
    iget-object v0, v12, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 252
    .line 253
    new-array v1, v10, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 254
    .line 255
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 256
    .line 257
    aput-object v2, v1, v7

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 261
    goto :goto_6

    .line 262
    :catchall_0
    move-exception v0

    .line 263
    move-object v1, v0

    .line 264
    goto :goto_7

    .line 265
    :cond_d
    :goto_6
    const/4 v14, 0x0

    .line 266
    .line 267
    const-wide/16 v15, 0x0

    .line 268
    const/4 v13, 0x0

    .line 269
    .line 270
    .line 271
    invoke-interface/range {v11 .. v16}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 272
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    .line 274
    if-eqz v12, :cond_e

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 278
    :cond_e
    return-object v0

    .line 279
    .line 280
    :goto_7
    if-eqz v12, :cond_f

    .line 281
    .line 282
    .line 283
    :try_start_3
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 284
    goto :goto_8

    .line 285
    :catchall_1
    move-exception v0

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 289
    :cond_f
    :goto_8
    throw v1

    .line 290
    :catchall_2
    move-exception v0

    .line 291
    :goto_9
    move-object v2, v0

    .line 292
    goto :goto_a

    .line 293
    :catchall_3
    move-exception v0

    .line 294
    move-object v1, v3

    .line 295
    goto :goto_9

    .line 296
    .line 297
    :goto_a
    if-eqz v1, :cond_10

    .line 298
    .line 299
    .line 300
    :try_start_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 301
    goto :goto_b

    .line 302
    :catchall_4
    move-exception v0

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 306
    :cond_10
    :goto_b
    throw v2
.end method

.method public static k0([B)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_4

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 14
    const/4 v6, 0x0

    .line 15
    array-length v7, p0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v5, p0

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfNull()Z

    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 41
    .line 42
    iget-object v4, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-char v4, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 54
    .line 55
    const/16 v5, 0x1a

    .line 56
    .line 57
    if-eq v4, v5, :cond_4

    .line 58
    .line 59
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 60
    .line 61
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 62
    .line 63
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 64
    and-long/2addr v3, v5

    .line 65
    .line 66
    cmp-long v0, v3, v0

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 72
    .line 73
    const-string v0, "input not end"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 85
    return-object p0

    .line 86
    .line 87
    .line 88
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    goto :goto_3

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    :goto_3
    throw p0

    .line 95
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static k1(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static l(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z
    .locals 4

    .line 1
    .line 2
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 5
    and-long/2addr v0, v2

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static varargs l0([BIILjava/nio/charset/Charset;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_6

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-eqz v1, :cond_6

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 21
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 27
    return-object v0

    .line 28
    .line 29
    .line 30
    :cond_1
    :try_start_1
    invoke-virtual {v1, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 31
    .line 32
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    .line 33
    .line 34
    .line 35
    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 36
    .line 37
    const-wide/16 p2, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 41
    .line 42
    iget-object p4, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 43
    .line 44
    if-eqz p4, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    .line 52
    :cond_2
    :goto_0
    iget-char p4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 53
    .line 54
    const/16 v0, 0x1a

    .line 55
    .line 56
    if-eq p4, v0, :cond_4

    .line 57
    .line 58
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 59
    .line 60
    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 61
    .line 62
    iget-wide v2, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 63
    and-long/2addr v0, v2

    .line 64
    .line 65
    cmp-long p2, v0, p2

    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 71
    .line 72
    const-string p2, "input not end"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    .line 78
    .line 79
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 84
    return-object p1

    .line 85
    .line 86
    :goto_2
    if-eqz p0, :cond_5

    .line 87
    .line 88
    .line 89
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    goto :goto_3

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    :cond_5
    :goto_3
    throw p1

    .line 96
    :cond_6
    :goto_4
    return-object v0
.end method

.method public static l1(Ljava/lang/Class;Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/AfterFilter;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/BeforeFilter;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/LabelFilter;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/NameFilter;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ValueFilter;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 48
    return-void
.end method

.method public static m(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z
    .locals 4

    .line 1
    .line 2
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 3
    .line 4
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 5
    and-long/2addr v0, v2

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public static varargs m0([BII[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v5, p0

    .line 18
    move v6, p1

    .line 19
    move v7, p2

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfNull()Z

    .line 26
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 32
    return-object v0

    .line 33
    .line 34
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 38
    .line 39
    const-wide/16 p1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 43
    .line 44
    iget-object p3, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-char p3, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 56
    .line 57
    const/16 v0, 0x1a

    .line 58
    .line 59
    if-eq p3, v0, :cond_4

    .line 60
    .line 61
    iget-wide v0, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 62
    .line 63
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 64
    .line 65
    iget-wide v3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 66
    and-long/2addr v0, v3

    .line 67
    .line 68
    cmp-long p1, v0, p1

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 74
    .line 75
    const-string p1, "input not end"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 87
    return-object p0

    .line 88
    .line 89
    .line 90
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    goto :goto_3

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    move-object p1, v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    :goto_3
    throw p0

    .line 98
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static m1(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_3

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v0

    .line 33
    .line 34
    .line 35
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    return v1

    .line 37
    .line 38
    :goto_1
    if-eqz p0, :cond_2

    .line 39
    .line 40
    .line 41
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    goto :goto_2

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    .line 45
    .line 46
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    :cond_2
    :goto_2
    throw v1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    :catch_0
    :cond_3
    :goto_3
    return v0
.end method

.method public static varargs n0([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_4

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 14
    const/4 v6, 0x0

    .line 15
    array-length v7, p0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v5, p0

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->nextIfNull()Z

    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 41
    .line 42
    iget-object p1, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-char p1, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 54
    .line 55
    const/16 v4, 0x1a

    .line 56
    .line 57
    if-eq p1, v4, :cond_4

    .line 58
    .line 59
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 60
    .line 61
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 62
    .line 63
    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 64
    and-long/2addr v3, v5

    .line 65
    .line 66
    cmp-long p1, v3, v0

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 72
    .line 73
    const-string p1, "input not end"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 85
    return-object p0

    .line 86
    .line 87
    .line 88
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    goto :goto_3

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    move-object p1, v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    :goto_3
    throw p0

    .line 96
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static n1(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static varargs o(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_3

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 18
    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move p1, v0

    .line 37
    .line 38
    .line 39
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    return p1

    .line 41
    .line 42
    :goto_1
    if-eqz p0, :cond_2

    .line 43
    .line 44
    .line 45
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    goto :goto_2

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    .line 49
    .line 50
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 51
    :cond_2
    :goto_2
    throw p1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 52
    :catch_0
    :cond_3
    :goto_3
    return v0
.end method

.method public static o0([C)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_4

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 14
    const/4 v6, 0x0

    .line 15
    array-length v7, p0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v5, p0

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 30
    return-object v0

    .line 31
    .line 32
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 36
    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p0, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 41
    .line 42
    iget-object v4, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-char v4, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 54
    .line 55
    const/16 v5, 0x1a

    .line 56
    .line 57
    if-eq v4, v5, :cond_4

    .line 58
    .line 59
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 60
    .line 61
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 62
    .line 63
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 64
    and-long/2addr v3, v5

    .line 65
    .line 66
    cmp-long v0, v3, v0

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 72
    .line 73
    const-string v0, "input not end"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 81
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 85
    return-object p0

    .line 86
    .line 87
    .line 88
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    goto :goto_3

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    :goto_3
    throw p0

    .line 95
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static o1(Ljava/lang/Class;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/a;->p1(Ljava/lang/Class;Ljava/lang/String;)V

    .line 5
    return-void
.end method

.method public static p([B)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_3

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    .line 11
    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v0

    .line 30
    .line 31
    .line 32
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    return v1

    .line 34
    .line 35
    :goto_1
    if-eqz p0, :cond_2

    .line 36
    .line 37
    .line 38
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    goto :goto_2

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    .line 42
    .line 43
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    :cond_2
    :goto_2
    throw v1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    :catch_0
    :cond_3
    :goto_3
    return v0
.end method

.method public static varargs p0([CII[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    goto :goto_4

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v5, p0

    .line 18
    move v6, p1

    .line 19
    move v7, p2

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->nextIfNull()Z

    .line 26
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 32
    return-object v0

    .line 33
    .line 34
    :cond_1
    :try_start_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 38
    .line 39
    const-wide/16 p1, 0x0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 43
    .line 44
    iget-object p3, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 45
    .line 46
    if-eqz p3, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    goto :goto_2

    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-char p3, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 56
    .line 57
    const/16 v0, 0x1a

    .line 58
    .line 59
    if-eq p3, v0, :cond_4

    .line 60
    .line 61
    iget-wide v0, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 62
    .line 63
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 64
    .line 65
    iget-wide v3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 66
    and-long/2addr v0, v3

    .line 67
    .line 68
    cmp-long p1, v0, p1

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 74
    .line 75
    const-string p1, "input not end"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 87
    return-object p0

    .line 88
    .line 89
    .line 90
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    goto :goto_3

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    move-object p1, v0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    :goto_3
    throw p0

    .line 98
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static p1(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerSeeAlsoSubType(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static q([BIILjava/nio/charset/Charset;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    goto :goto_3

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;

    .line 13
    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 20
    move-result p1

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move p1, v0

    .line 32
    .line 33
    .line 34
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    return p1

    .line 36
    .line 37
    :goto_1
    if-eqz p0, :cond_2

    .line 38
    .line 39
    .line 40
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    goto :goto_2

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    .line 44
    .line 45
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    :cond_2
    :goto_2
    throw p1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 47
    :catch_0
    :cond_3
    :goto_3
    return v0
.end method

.method public static varargs q0(Ljava/io/InputStream;Ljava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    .line 8
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 17
    move-result p3

    .line 18
    .line 19
    if-nez p3, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 23
    .line 24
    :cond_1
    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 25
    .line 26
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 27
    .line 28
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 29
    and-long/2addr p2, v2

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    cmp-long p2, p2, v2

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    const/4 p2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p2, 0x0

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p2, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 48
    move-result-object v5

    .line 49
    const/4 v7, 0x0

    .line 50
    .line 51
    const-wide/16 v8, 0x0

    .line 52
    move-object v6, p1

    .line 53
    .line 54
    .line 55
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    iget-object p1, v5, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    move-object p0, v0

    .line 67
    goto :goto_3

    .line 68
    .line 69
    :cond_3
    :goto_1
    iget-char p1, v5, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 70
    .line 71
    const/16 p2, 0x1a

    .line 72
    .line 73
    if-eq p1, p2, :cond_5

    .line 74
    .line 75
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 76
    .line 77
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 78
    .line 79
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 80
    and-long/2addr p1, v0

    .line 81
    .line 82
    cmp-long p1, p1, v2

    .line 83
    .line 84
    if-eqz p1, :cond_4

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 88
    .line 89
    const-string p1, "input not end"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 101
    return-object p0

    .line 102
    .line 103
    :goto_3
    if-eqz v5, :cond_6

    .line 104
    .line 105
    .line 106
    :try_start_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    goto :goto_4

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    move-object p1, v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    :cond_6
    :goto_4
    throw p0
.end method

.method public static q1(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson2/JSONObject;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/alibaba/fastjson2/JSONObject;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->to(Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    .line 20
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p0, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static r([BLjava/nio/charset/Charset;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    array-length v1, p0

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1, p1}, Lcom/alibaba/fastjson2/a;->q([BIILjava/nio/charset/Charset;)Z

    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    return v0
.end method

.method public static varargs r0(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    .line 8
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 12
    .line 13
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 14
    .line 15
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 16
    .line 17
    iget-wide v5, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 18
    and-long/2addr v3, v5

    .line 19
    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    cmp-long p2, v3, v5

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    const/4 p2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p2, 0x0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 31
    move-result-object v7

    .line 32
    .line 33
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p2, v2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 37
    move-result-object v8

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 41
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 47
    return-object v0

    .line 48
    :cond_2
    const/4 v10, 0x0

    .line 49
    .line 50
    const-wide/16 v11, 0x0

    .line 51
    move-object v9, p1

    .line 52
    .line 53
    .line 54
    :try_start_1
    invoke-interface/range {v7 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    iget-object p1, v8, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    goto :goto_3

    .line 67
    .line 68
    :cond_3
    :goto_1
    iget-char p1, v8, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 69
    .line 70
    const/16 p2, 0x1a

    .line 71
    .line 72
    if-eq p1, p2, :cond_5

    .line 73
    .line 74
    iget-wide p1, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 75
    .line 76
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 77
    .line 78
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 79
    and-long/2addr p1, v0

    .line 80
    .line 81
    cmp-long p1, p1, v5

    .line 82
    .line 83
    if-eqz p1, :cond_4

    .line 84
    goto :goto_2

    .line 85
    .line 86
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 87
    .line 88
    const-string p1, "input not end"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .line 98
    .line 99
    :cond_5
    :goto_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 100
    return-object p0

    .line 101
    .line 102
    :goto_3
    if-eqz v8, :cond_6

    .line 103
    .line 104
    .line 105
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    goto :goto_4

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    move-object p1, v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    :cond_6
    :goto_4
    throw p0
.end method

.method public static r1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/a;->s1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static s([C)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_3

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([C)Lcom/alibaba/fastjson2/JSONReader;

    .line 11
    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v1, v0

    .line 30
    .line 31
    .line 32
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    return v1

    .line 34
    .line 35
    :goto_1
    if-eqz p0, :cond_2

    .line 36
    .line 37
    .line 38
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    goto :goto_2

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    .line 42
    .line 43
    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    :cond_2
    :goto_2
    throw v1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    :catch_0
    :cond_3
    :goto_3
    return v0
.end method

.method public static s0(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget-wide v1, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 7
    .line 8
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 9
    .line 10
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 11
    and-long/2addr v1, v3

    .line 12
    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v1, v1, v3

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    .line 22
    :goto_0
    iget-object v2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 30
    move-result-object v6

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 34
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 40
    return-object v0

    .line 41
    :cond_2
    const/4 v8, 0x0

    .line 42
    .line 43
    const-wide/16 v9, 0x0

    .line 44
    move-object v7, p2

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move-object p0, v0

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_3
    :goto_1
    iget-char p1, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 62
    .line 63
    const/16 p2, 0x1a

    .line 64
    .line 65
    if-eq p1, p2, :cond_5

    .line 66
    .line 67
    iget-wide p1, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 68
    .line 69
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 70
    .line 71
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 72
    and-long/2addr p1, v0

    .line 73
    .line 74
    cmp-long p1, p1, v3

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 80
    .line 81
    const-string p1, "input not end"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 93
    return-object p0

    .line 94
    .line 95
    :goto_3
    if-eqz v6, :cond_6

    .line 96
    .line 97
    .line 98
    :try_start_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    goto :goto_4

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    move-object p1, v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 105
    :cond_6
    :goto_4
    throw p0
.end method

.method public static varargs s1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;
    .locals 8

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    instance-of v0, p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 7
    .line 8
    if-nez v0, :cond_5

    .line 9
    .line 10
    instance-of v0, p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_1
    if-nez p1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    instance-of v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    .line 42
    move-result v0

    .line 43
    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFeatures()J

    .line 48
    move-result-wide v2

    .line 49
    .line 50
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 51
    .line 52
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 53
    and-long/2addr v2, v4

    .line 54
    .line 55
    const-wide/16 v4, 0x0

    .line 56
    .line 57
    cmp-long v0, v2, v4

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    check-cast v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 62
    .line 63
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->toJSONObject(Ljava/lang/Object;J)Lcom/alibaba/fastjson2/JSONObject;

    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    .line 70
    .line 71
    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 72
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    :try_start_1
    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    move-object v3, p0

    .line 78
    .line 79
    .line 80
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->z(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    move-object p0, v0

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    .line 99
    :try_start_3
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    move-object p1, v0

    .line 103
    .line 104
    .line 105
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 106
    :cond_4
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    move-object p0, v0

    .line 109
    .line 110
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 111
    .line 112
    const-string v0, "toJSONString error"

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    throw p1

    .line 117
    :cond_5
    move-object v3, p0

    .line 118
    return-object v3
.end method

.method public static t(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_3

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 18
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    return v0

    .line 25
    .line 26
    .line 27
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v1, v0

    .line 43
    .line 44
    .line 45
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    return v1

    .line 47
    .line 48
    :goto_1
    if-eqz p0, :cond_3

    .line 49
    .line 50
    .line 51
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    .line 55
    .line 56
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    :cond_3
    :goto_2
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 58
    :catch_0
    :cond_4
    :goto_3
    return v0
.end method

.method public static t0(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    iget-wide v1, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 7
    .line 8
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 9
    .line 10
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 11
    and-long/2addr v1, v3

    .line 12
    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v1, v1, v3

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    .line 22
    :goto_0
    iget-object v2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 30
    move-result-object v6

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 34
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 40
    return-object v0

    .line 41
    :cond_2
    const/4 v8, 0x0

    .line 42
    .line 43
    const-wide/16 v9, 0x0

    .line 44
    move-object v7, p2

    .line 45
    .line 46
    .line 47
    :try_start_1
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    iget-object p1, v6, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    move-object p0, v0

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :cond_3
    :goto_1
    iget-char p1, v6, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 62
    .line 63
    const/16 p2, 0x1a

    .line 64
    .line 65
    if-eq p1, p2, :cond_5

    .line 66
    .line 67
    iget-wide p1, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 68
    .line 69
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 70
    .line 71
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 72
    and-long/2addr p1, v0

    .line 73
    .line 74
    cmp-long p1, p1, v3

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    goto :goto_2

    .line 78
    .line 79
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 80
    .line 81
    const-string p1, "input not end"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    :cond_5
    :goto_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 93
    return-object p0

    .line 94
    .line 95
    :goto_3
    if-eqz v6, :cond_6

    .line 96
    .line 97
    .line 98
    :try_start_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    goto :goto_4

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    move-object p1, v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 105
    :cond_6
    :goto_4
    throw p0
.end method

.method public static t1(Ljava/lang/Object;)[B
    .locals 13

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 8
    .line 9
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 10
    .line 11
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 12
    .line 13
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 14
    and-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    const/4 v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    .line 25
    :goto_0
    new-instance v7, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    .line 26
    .line 27
    .line 28
    invoke-direct {v7, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    goto :goto_2

    .line 38
    .line 39
    :cond_1
    iput-object p0, v7, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 40
    .line 41
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 42
    .line 43
    iput-object v1, v7, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    .line 50
    .line 51
    if-ne v1, v3, :cond_2

    .line 52
    .line 53
    iget-object v3, v7, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 54
    .line 55
    iget-wide v8, v3, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 56
    .line 57
    cmp-long v3, v8, v4

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_2
    invoke-virtual {v0, v1, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 69
    move-result-object v6

    .line 70
    const/4 v10, 0x0

    .line 71
    .line 72
    const-wide/16 v11, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    move-object v8, p0

    .line 75
    .line 76
    .line 77
    invoke-interface/range {v6 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->getBytes()[B

    .line 81
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V

    .line 85
    return-object p0

    .line 86
    .line 87
    .line 88
    :goto_2
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    goto :goto_3

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    :goto_3
    throw p0
.end method

.method public static u([B)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_3

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    .line 11
    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    .line 15
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v1, v0

    .line 40
    .line 41
    .line 42
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 43
    return v1

    .line 44
    .line 45
    :goto_1
    if-eqz p0, :cond_3

    .line 46
    .line 47
    .line 48
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 49
    goto :goto_2

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    .line 52
    .line 53
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    :cond_3
    :goto_2
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 55
    :catch_0
    :cond_4
    :goto_3
    return v0
.end method

.method public static varargs u0(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    .line 8
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 12
    .line 13
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 14
    .line 15
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 16
    .line 17
    iget-wide v4, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 18
    and-long/2addr v2, v4

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long p3, v2, v4

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    const/4 p3, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p3, 0x0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    .line 35
    move-result-object v7

    .line 36
    const/4 v9, 0x0

    .line 37
    .line 38
    const-wide/16 v10, 0x0

    .line 39
    move-object v8, p2

    .line 40
    .line 41
    .line 42
    :try_start_0
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object p0, v0

    .line 54
    goto :goto_3

    .line 55
    .line 56
    :cond_2
    :goto_1
    iget-char p1, v7, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 57
    .line 58
    const/16 p2, 0x1a

    .line 59
    .line 60
    if-eq p1, p2, :cond_4

    .line 61
    .line 62
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 63
    .line 64
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 65
    .line 66
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 67
    and-long/2addr p1, v0

    .line 68
    .line 69
    cmp-long p1, p1, v4

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    goto :goto_2

    .line 73
    .line 74
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 75
    .line 76
    const-string p1, "input not end"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 88
    return-object p0

    .line 89
    .line 90
    :goto_3
    if-eqz v7, :cond_5

    .line 91
    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    goto :goto_4

    .line 95
    :catchall_1
    move-exception v0

    .line 96
    move-object p1, v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    :cond_5
    :goto_4
    throw p0
.end method

.method public static varargs u1(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    move-result p2

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    .line 19
    .line 20
    :cond_0
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 21
    .line 22
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 23
    .line 24
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 25
    and-long/2addr p1, v2

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    cmp-long p1, p1, v2

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    .line 36
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    .line 40
    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    move-object p0, v0

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_2
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 51
    .line 52
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 53
    .line 54
    iput-object p2, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p2, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 62
    move-result-object v2

    .line 63
    const/4 v6, 0x0

    .line 64
    .line 65
    const-wide/16 v7, 0x0

    .line 66
    const/4 v5, 0x0

    .line 67
    move-object v4, p0

    .line 68
    .line 69
    .line 70
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->getBytes()[B

    .line 74
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V

    .line 78
    return-object p0

    .line 79
    .line 80
    .line 81
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    goto :goto_3

    .line 83
    :catchall_1
    move-exception v0

    .line 84
    move-object p1, v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 88
    :goto_3
    throw p0
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_3

    .line 11
    .line 12
    .line 13
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    .line 18
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    return v0

    .line 25
    .line 26
    .line 27
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v1, v0

    .line 43
    .line 44
    .line 45
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    return v1

    .line 47
    .line 48
    :goto_1
    if-eqz p0, :cond_3

    .line 49
    .line 50
    .line 51
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    .line 55
    .line 56
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    :cond_3
    :goto_2
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 58
    :catch_0
    :cond_4
    :goto_3
    return v0
.end method

.method public static varargs v0(Ljava/io/Reader;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    .line 8
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 12
    .line 13
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 14
    .line 15
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 16
    .line 17
    iget-wide v5, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 18
    and-long/2addr v3, v5

    .line 19
    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    cmp-long p2, v3, v5

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    const/4 p2, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p2, 0x0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 31
    move-result-object v7

    .line 32
    .line 33
    new-instance v8, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 34
    .line 35
    .line 36
    invoke-direct {v8, v2, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/Reader;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 40
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 46
    return-object v0

    .line 47
    :cond_2
    const/4 v10, 0x0

    .line 48
    .line 49
    const-wide/16 v11, 0x0

    .line 50
    move-object v9, p1

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-interface/range {v7 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    iget-object p1, v8, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_3
    :goto_1
    iget-char p1, v8, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    const/16 p2, 0x1a

    .line 70
    .line 71
    if-eq p1, p2, :cond_5

    .line 72
    .line 73
    iget-wide p1, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr p1, v0

    .line 79
    .line 80
    cmp-long p1, p1, v5

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string p1, "input not end"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_5
    :goto_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 99
    return-object p0

    .line 100
    .line 101
    .line 102
    :goto_3
    :try_start_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    goto :goto_4

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    move-object p1, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    :goto_4
    throw p0
.end method

.method public static varargs v1(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 11
    .line 12
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 13
    .line 14
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide v4, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr v2, v4

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long p3, v2, v4

    .line 22
    .line 23
    if-eqz p3, :cond_0

    .line 24
    const/4 p3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p3, 0x0

    .line 27
    .line 28
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    .line 32
    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    move-object p0, v0

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_1
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 43
    .line 44
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 45
    .line 46
    iput-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    iget-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    .line 60
    .line 61
    :cond_2
    if-eqz p2, :cond_3

    .line 62
    array-length p1, p2

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, p1, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 77
    move-result-object v2

    .line 78
    const/4 v6, 0x0

    .line 79
    .line 80
    const-wide/16 v7, 0x0

    .line 81
    const/4 v5, 0x0

    .line 82
    move-object v4, p0

    .line 83
    .line 84
    .line 85
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->getBytes()[B

    .line 89
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V

    .line 93
    return-object p0

    .line 94
    .line 95
    .line 96
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    goto :goto_3

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    move-object p1, v0

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 103
    :goto_3
    throw p0
.end method

.method public static w([B)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_4

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_3

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    .line 11
    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    .line 15
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 21
    return v0

    .line 22
    .line 23
    .line 24
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    const/4 v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move v1, v0

    .line 40
    .line 41
    .line 42
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 43
    return v1

    .line 44
    .line 45
    :goto_1
    if-eqz p0, :cond_3

    .line 46
    .line 47
    .line 48
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 49
    goto :goto_2

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    .line 52
    .line 53
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    :cond_3
    :goto_2
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 55
    :catch_0
    :cond_4
    :goto_3
    return v0
.end method

.method public static varargs w0(Ljava/lang/String;IILjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-nez v1, :cond_5

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    goto :goto_6

    .line 12
    .line 13
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 14
    .line 15
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 16
    .line 17
    move-object/from16 v3, p4

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 21
    .line 22
    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 23
    .line 24
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 25
    .line 26
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 27
    and-long/2addr v3, v5

    .line 28
    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    cmp-long v3, v3, v5

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    const/4 v3, 0x1

    .line 35
    .line 36
    :goto_0
    move-object/from16 v9, p3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v3, 0x0

    .line 39
    goto :goto_0

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {v1, v9, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 43
    move-result-object v7

    .line 44
    .line 45
    new-instance v8, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 46
    .line 47
    .line 48
    invoke-direct {v8, v2, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 49
    const/4 v10, 0x0

    .line 50
    .line 51
    const-wide/16 v11, 0x0

    .line 52
    .line 53
    .line 54
    :try_start_0
    invoke-interface/range {v7 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    iget-object p1, v8, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 63
    goto :goto_2

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    goto :goto_4

    .line 67
    .line 68
    :cond_2
    :goto_2
    iget-char p1, v8, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 69
    .line 70
    const/16 v0, 0x1a

    .line 71
    .line 72
    if-eq p1, v0, :cond_4

    .line 73
    .line 74
    iget-wide v0, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 75
    .line 76
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 77
    .line 78
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 79
    and-long/2addr v0, v2

    .line 80
    .line 81
    cmp-long p1, v0, v5

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    goto :goto_3

    .line 85
    .line 86
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 87
    .line 88
    const-string p1, "input not end"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_3
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 100
    return-object p0

    .line 101
    .line 102
    .line 103
    :goto_4
    :try_start_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    goto :goto_5

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    move-object p1, v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    :goto_5
    throw p0

    .line 111
    :cond_5
    :goto_6
    const/4 p0, 0x0

    .line 112
    return-object p0
.end method

.method public static w1(Ljava/lang/Object;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONWriter$Context;)[B
    .locals 9

    .line 1
    .line 2
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 6
    move-result-object v2

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    move-object p0, v0

    .line 15
    goto :goto_2

    .line 16
    .line 17
    :cond_0
    iput-object p0, v2, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 18
    .line 19
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 20
    .line 21
    iput-object p2, v2, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    if-ne p2, v1, :cond_1

    .line 32
    .line 33
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 34
    .line 35
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 36
    .line 37
    cmp-long v1, v5, v3

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONWriter;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    sget-wide v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 48
    .line 49
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 50
    .line 51
    iget-wide v7, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 52
    and-long/2addr v5, v7

    .line 53
    .line 54
    cmp-long v1, v5, v3

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    const/4 v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0, p2, p2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 63
    move-result-object v1

    .line 64
    const/4 v5, 0x0

    .line 65
    .line 66
    const-wide/16 v6, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    move-object v3, p0

    .line 69
    .line 70
    .line 71
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 75
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 79
    return-object p0

    .line 80
    .line 81
    :goto_2
    if-eqz v2, :cond_3

    .line 82
    .line 83
    .line 84
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    goto :goto_3

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object p1, v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 91
    :cond_3
    :goto_3
    throw p0
.end method

.method public static x(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixIn(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 6
    .line 7
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixIn(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 11
    return-void
.end method

.method public static varargs x0(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/TypeReference<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_5

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    goto :goto_5

    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    .line 14
    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    .line 17
    invoke-direct {v2, v1, v0, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    .line 21
    move-result-object v5

    .line 22
    .line 23
    iget-wide p1, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 24
    .line 25
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 26
    .line 27
    iget-wide v3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 28
    and-long/2addr p1, v3

    .line 29
    .line 30
    const-wide/16 v9, 0x0

    .line 31
    .line 32
    cmp-long p1, p1, v9

    .line 33
    const/4 p2, 0x0

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move p1, p2

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v1, v5, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    new-instance v4, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v2, p0, p2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 52
    const/4 v6, 0x0

    .line 53
    .line 54
    const-wide/16 v7, 0x0

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    .line 60
    iget-object p1, v4, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 61
    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move-object p0, v0

    .line 69
    goto :goto_3

    .line 70
    .line 71
    :cond_2
    :goto_1
    iget-char p1, v4, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 72
    .line 73
    const/16 p2, 0x1a

    .line 74
    .line 75
    if-eq p1, p2, :cond_4

    .line 76
    .line 77
    iget-wide p1, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 78
    .line 79
    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 80
    .line 81
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 82
    and-long/2addr p1, v0

    .line 83
    .line 84
    cmp-long p1, p1, v9

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    goto :goto_2

    .line 88
    .line 89
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 90
    .line 91
    const-string p1, "input not end"

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 103
    return-object p0

    .line 104
    .line 105
    .line 106
    :goto_3
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    goto :goto_4

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    move-object p1, v0

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 113
    :goto_4
    throw p0

    .line 114
    :cond_5
    :goto_5
    return-object v0
.end method

.method public static varargs x1(Ljava/lang/Object;Ljava/nio/charset/Charset;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    move-object p0, v0

    .line 20
    goto :goto_2

    .line 21
    .line 22
    :cond_0
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 23
    .line 24
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 25
    .line 26
    iput-object p2, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    const-class v1, Lcom/alibaba/fastjson2/JSONObject;

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    if-ne p2, v1, :cond_1

    .line 37
    .line 38
    iget-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 39
    .line 40
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 41
    .line 42
    cmp-long v1, v1, v4

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONWriter;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    sget-wide v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    .line 53
    .line 54
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 55
    .line 56
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 57
    and-long/2addr v1, v6

    .line 58
    .line 59
    cmp-long v1, v1, v4

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    const/4 v1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 v1, 0x0

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0, p2, p2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 68
    move-result-object v2

    .line 69
    const/4 v6, 0x0

    .line 70
    .line 71
    const-wide/16 v7, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    move-object v4, p0

    .line 74
    .line 75
    .line 76
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 80
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 84
    return-object p0

    .line 85
    .line 86
    :goto_2
    if-eqz v3, :cond_3

    .line 87
    .line 88
    .line 89
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    goto :goto_3

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    move-object p1, v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 96
    :cond_3
    :goto_3
    throw p0
.end method

.method public static y(Ljava/io/InputStream;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    const-class v0, Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    .line 13
    .line 14
    .line 15
    invoke-direct {v2, p1, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    .line 16
    const/4 v4, 0x0

    .line 17
    .line 18
    const-wide/16 v5, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    iget-char v0, v2, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 26
    .line 27
    const/16 v1, 0x1a

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 32
    .line 33
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 34
    .line 35
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 36
    and-long/2addr v0, v3

    .line 37
    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    cmp-long p1, v0, v3

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 46
    .line 47
    const-string p1, "input not end"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    move-object p0, v0

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V

    .line 62
    return-object p0

    .line 63
    .line 64
    .line 65
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    goto :goto_2

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    move-object p1, v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 72
    :goto_2
    throw p0
.end method

.method public static varargs y0(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/TypeReference<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_5

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    .line 20
    move-result-object v4

    .line 21
    .line 22
    sget-wide p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 23
    .line 24
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 25
    .line 26
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 27
    and-long/2addr p1, v2

    .line 28
    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    cmp-long p1, p1, v8

    .line 32
    const/4 p2, 0x0

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move p1, p2

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, v4, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    move-result p1

    .line 48
    .line 49
    .line 50
    invoke-direct {v3, v1, p0, p2, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 51
    const/4 v5, 0x0

    .line 52
    .line 53
    const-wide/16 v6, 0x0

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 58
    .line 59
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    move-object p0, v0

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_2
    :goto_1
    iget-char p1, v3, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 71
    .line 72
    const/16 p2, 0x1a

    .line 73
    .line 74
    if-eq p1, p2, :cond_4

    .line 75
    .line 76
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 77
    .line 78
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 79
    .line 80
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 81
    and-long/2addr p1, v0

    .line 82
    .line 83
    cmp-long p1, p1, v8

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    goto :goto_2

    .line 87
    .line 88
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 89
    .line 90
    const-string p1, "input not end"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 102
    return-object p0

    .line 103
    .line 104
    .line 105
    :goto_3
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    goto :goto_4

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    move-object p1, v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 112
    :goto_4
    throw p0

    .line 113
    :cond_5
    :goto_5
    const/4 p0, 0x0

    .line 114
    return-object p0
.end method

.method public static varargs y1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 9

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 8
    .line 9
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 10
    .line 11
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 12
    .line 13
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 14
    and-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long p1, v2, v4

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    .line 25
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    goto :goto_2

    .line 38
    .line 39
    :cond_1
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 40
    .line 41
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 42
    .line 43
    iput-object v1, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1, v1, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 51
    move-result-object v2

    .line 52
    const/4 v6, 0x0

    .line 53
    .line 54
    const-wide/16 v7, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    move-object v4, p0

    .line 57
    .line 58
    .line 59
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->getBytes()[B

    .line 63
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V

    .line 67
    return-object p0

    .line 68
    .line 69
    .line 70
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    goto :goto_3

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    move-object p1, v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 77
    :goto_3
    throw p0
.end method

.method public static z(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    .line 1
    .line 2
    if-eqz p0, :cond_7

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 20
    .line 21
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    move-result v2

    .line 26
    const/4 v4, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v1, p0, v4, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 33
    move-result p0

    .line 34
    .line 35
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Lcom/alibaba/fastjson2/function/Supplier;

    .line 36
    .line 37
    const-wide/16 v8, 0x0

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 42
    .line 43
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 44
    .line 45
    iget-wide v10, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 46
    and-long/2addr v5, v10

    .line 47
    .line 48
    cmp-long v2, v5, v8

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    const/16 v2, 0x7b

    .line 53
    .line 54
    if-eq p0, v2, :cond_1

    .line 55
    .line 56
    const/16 v5, 0x5b

    .line 57
    .line 58
    if-ne p0, v5, :cond_3

    .line 59
    .line 60
    :cond_1
    if-ne p0, v2, :cond_2

    .line 61
    .line 62
    new-instance p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p0, v8, v9}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object p0, v0

    .line 72
    goto :goto_3

    .line 73
    .line 74
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 81
    .line 82
    :goto_0
    iget-object v0, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_3
    const-class p0, Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 94
    move-result-object v2

    .line 95
    const/4 v5, 0x0

    .line 96
    .line 97
    const-wide/16 v6, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    .line 100
    .line 101
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 102
    move-result-object p0

    .line 103
    .line 104
    :cond_4
    :goto_1
    iget-char v0, v3, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 105
    .line 106
    const/16 v2, 0x1a

    .line 107
    .line 108
    if-eq v0, v2, :cond_6

    .line 109
    .line 110
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 111
    .line 112
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 113
    .line 114
    iget-wide v4, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 115
    and-long/2addr v0, v4

    .line 116
    .line 117
    cmp-long v0, v0, v8

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    goto :goto_2

    .line 121
    .line 122
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 123
    .line 124
    const-string v0, "input not end"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 136
    return-object p0

    .line 137
    .line 138
    .line 139
    :goto_3
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    goto :goto_4

    .line 141
    :catchall_1
    move-exception v0

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    :goto_4
    throw p0

    .line 146
    :cond_7
    :goto_5
    const/4 p0, 0x0

    .line 147
    return-object p0
.end method

.method public static z0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_5

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 12
    .line 13
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 17
    .line 18
    sget-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    .line 19
    .line 20
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 21
    .line 22
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 23
    and-long/2addr v2, v4

    .line 24
    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long v2, v2, v4

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v2, v3

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    new-instance v7, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-direct {v7, v1, p0, v3, v0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    .line 47
    const/4 v9, 0x0

    .line 48
    .line 49
    const-wide/16 v10, 0x0

    .line 50
    move-object v8, p1

    .line 51
    .line 52
    .line 53
    :try_start_0
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_2
    :goto_1
    iget-char p1, v7, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 68
    .line 69
    const/16 v0, 0x1a

    .line 70
    .line 71
    if-eq p1, v0, :cond_4

    .line 72
    .line 73
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr v0, v2

    .line 79
    .line 80
    cmp-long p1, v0, v4

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    goto :goto_2

    .line 84
    .line 85
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string p1, "input not end"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V

    .line 99
    return-object p0

    .line 100
    .line 101
    .line 102
    :goto_3
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONReaderUTF16;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    goto :goto_4

    .line 104
    :catchall_1
    move-exception v0

    .line 105
    move-object p1, v0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    :goto_4
    throw p0

    .line 110
    :cond_5
    :goto_5
    const/4 p0, 0x0

    .line 111
    return-object p0
.end method

.method public static varargs z1(Ljava/lang/Object;[Lcom/alibaba/fastjson2/filter/Filter;)[B
    .locals 10

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 11
    .line 12
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 13
    .line 14
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 15
    .line 16
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 17
    and-long/2addr v2, v4

    .line 18
    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    cmp-long v2, v2, v4

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    const/4 v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    .line 28
    :goto_0
    new-instance v4, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    .line 29
    .line 30
    .line 31
    invoke-direct {v4, v1}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    :try_start_0
    array-length v1, p1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v1, v4, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    move-object p0, v0

    .line 45
    goto :goto_3

    .line 46
    .line 47
    :cond_1
    :goto_1
    if-nez p0, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_2
    iput-object p0, v4, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 54
    .line 55
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 56
    .line 57
    iput-object p1, v4, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1, p1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 65
    move-result-object v3

    .line 66
    const/4 v7, 0x0

    .line 67
    .line 68
    const-wide/16 v8, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    move-object v5, p0

    .line 71
    .line 72
    .line 73
    invoke-interface/range {v3 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 74
    .line 75
    .line 76
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->getBytes()[B

    .line 77
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V

    .line 81
    return-object p0

    .line 82
    .line 83
    .line 84
    :goto_3
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriterUTF8;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    goto :goto_4

    .line 86
    :catchall_1
    move-exception v0

    .line 87
    move-object p1, v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 91
    :goto_4
    throw p0
.end method
