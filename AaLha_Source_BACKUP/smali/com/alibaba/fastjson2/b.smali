.class public final synthetic Lcom/alibaba/fastjson2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs A([BIILjava/lang/Class;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p4, p5}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    move-object v2, p3

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    move-object p0, v0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 36
    return-object p0

    .line 37
    .line 38
    .line 39
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    goto :goto_2

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    :goto_2
    throw p0
.end method

.method public static varargs B([BIILjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    array-length v4, p4

    .line 11
    .line 12
    if-ge v3, v4, :cond_0

    .line 13
    .line 14
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 15
    .line 16
    aget-object v6, p4, v3

    .line 17
    .line 18
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 19
    or-long/2addr v4, v6

    .line 20
    .line 21
    iput-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    new-instance v5, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 27
    .line 28
    .line 29
    invoke-direct {v5, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 30
    .line 31
    :try_start_0
    iget-wide p0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 32
    .line 33
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 34
    .line 35
    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 36
    and-long/2addr p0, v3

    .line 37
    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    cmp-long p0, p0, v3

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    const/4 v2, 0x1

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {v0, p3, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 47
    move-result-object v4

    .line 48
    const/4 v7, 0x0

    .line 49
    .line 50
    const-wide/16 v8, 0x0

    .line 51
    move-object v6, p3

    .line 52
    .line 53
    .line 54
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 56
    .line 57
    iget-object p1, v5, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    goto :goto_2

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 70
    return-object p0

    .line 71
    .line 72
    .line 73
    :goto_2
    :try_start_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
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

.method public static C([BIILjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 8
    .line 9
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 13
    .line 14
    :try_start_0
    iget-wide p0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 15
    .line 16
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 17
    .line 18
    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 19
    and-long/2addr p0, v1

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    cmp-long p0, p0, v1

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, p3, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 32
    move-result-object v2

    .line 33
    const/4 v5, 0x0

    .line 34
    .line 35
    const-wide/16 v6, 0x0

    .line 36
    move-object v4, p3

    .line 37
    .line 38
    .line 39
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    goto :goto_2

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 55
    return-object p0

    .line 56
    .line 57
    .line 58
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    goto :goto_3

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    move-object p1, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    :goto_3
    throw p0
.end method

.method public static D([BIILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 6
    .line 7
    :try_start_0
    iget-wide p0, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 8
    .line 9
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 10
    .line 11
    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 12
    and-long/2addr p0, v2

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long p0, p0, v2

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    .line 23
    :goto_0
    iget-object p1, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p3, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 27
    move-result-object v0

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    const-wide/16 v4, 0x0

    .line 31
    move-object v2, p3

    .line 32
    .line 33
    .line 34
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    move-object p0, v0

    .line 46
    goto :goto_2

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 50
    return-object p0

    .line 51
    .line 52
    .line 53
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    goto :goto_3

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    move-object p1, v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 60
    :goto_3
    throw p0
.end method

.method public static E([BIILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    .line 5
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 6
    move-result-object p4

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 13
    move-result-object v0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    move-object v2, p3

    .line 18
    .line 19
    .line 20
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    move-object p0, v0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 36
    return-object p0

    .line 37
    .line 38
    .line 39
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    goto :goto_2

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    :goto_2
    throw p0
.end method

.method public static varargs F([BIILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p4, p5}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 4
    move-result-object p4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    move-object v2, p3

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    move-object p0, v0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 36
    return-object p0

    .line 37
    .line 38
    .line 39
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    goto :goto_2

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    :goto_2
    throw p0
.end method

.method public static varargs G([BIILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
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
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 17
    const/4 v5, 0x0

    .line 18
    .line 19
    const-wide/16 v6, 0x0

    .line 20
    move-object v4, p3

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object p0, v0

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 39
    return-object p0

    .line 40
    .line 41
    .line 42
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    goto :goto_2

    .line 44
    :catchall_1
    move-exception v0

    .line 45
    move-object p1, v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    :goto_2
    throw p0
.end method

.method public static varargs H([BLcom/alibaba/fastjson2/TypeReference;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/alibaba/fastjson2/TypeReference;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/b;->Q([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static I([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 10
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
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 8
    .line 9
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 10
    .line 11
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 12
    .line 13
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 14
    and-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    .line 26
    :goto_0
    new-instance v5, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 27
    array-length v4, p0

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v1, p0, v3, v4}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 31
    .line 32
    :try_start_0
    const-class p0, Ljava/lang/Object;

    .line 33
    .line 34
    if-ne p1, p0, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object p0, v0

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 46
    move-result-object v4

    .line 47
    const/4 v7, 0x0

    .line 48
    .line 49
    const-wide/16 v8, 0x0

    .line 50
    move-object v6, p1

    .line 51
    .line 52
    .line 53
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    .line 56
    :goto_1
    iget-object p1, v5, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 65
    return-object p0

    .line 66
    .line 67
    .line 68
    :goto_2
    :try_start_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    goto :goto_3

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
    :goto_3
    throw p0
.end method

.method public static J([BLjava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 7
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
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    array-length v0, p0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p2, p0, v2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 8
    .line 9
    :try_start_0
    const-class p0, Ljava/lang/Object;

    .line 10
    .line 11
    if-ne p1, p0, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getType()B

    .line 15
    move-result p0

    .line 16
    .line 17
    const/16 v0, -0x6e

    .line 18
    .line 19
    if-ne p0, v0, :cond_0

    .line 20
    .line 21
    const-class v2, Ljava/lang/Object;

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v2, p1

    .line 34
    .line 35
    .line 36
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    move-object p0, v0

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object p0, p1

    .line 48
    .line 49
    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 50
    .line 51
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 52
    .line 53
    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 54
    and-long/2addr v3, v5

    .line 55
    .line 56
    const-wide/16 v5, 0x0

    .line 57
    .line 58
    cmp-long p1, v3, v5

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    const/4 v2, 0x1

    .line 62
    .line 63
    :cond_2
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    iget-wide p1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 70
    .line 71
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 72
    .line 73
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 74
    and-long/2addr p1, v2

    .line 75
    .line 76
    cmp-long p1, p1, v5

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isArray()Z

    .line 82
    move-result p1

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    instance-of p1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    .line 87
    .line 88
    if-eqz p1, :cond_3

    .line 89
    const/4 v3, 0x0

    .line 90
    .line 91
    const-wide/16 v4, 0x0

    .line 92
    move-object v2, p0

    .line 93
    .line 94
    .line 95
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 96
    move-result-object p0

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    move-object v2, p0

    .line 99
    const/4 v3, 0x0

    .line 100
    .line 101
    const-wide/16 v4, 0x0

    .line 102
    .line 103
    .line 104
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 105
    move-result-object p0

    .line 106
    .line 107
    :goto_0
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 108
    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 116
    return-object p0

    .line 117
    .line 118
    .line 119
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    goto :goto_2

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    move-object p1, v0

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 126
    :goto_2
    throw p0
.end method

.method public static varargs K([BLjava/lang/Class;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
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
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->config(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 11
    .line 12
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 13
    array-length p2, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v1, p0, v2, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 18
    move p0, v2

    .line 19
    :goto_0
    :try_start_0
    array-length p2, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 20
    .line 21
    if-ge p0, p2, :cond_0

    .line 22
    .line 23
    :try_start_1
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 24
    .line 25
    aget-object p2, p3, p0

    .line 26
    .line 27
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 28
    or-long/2addr v4, v6

    .line 29
    .line 30
    iput-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    add-int/lit8 p0, p0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    move-object p0, v0

    .line 36
    move-object v2, v3

    .line 37
    goto :goto_5

    .line 38
    .line 39
    :cond_0
    :try_start_2
    const-class p0, Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 40
    .line 41
    if-ne p1, p0, :cond_2

    .line 42
    .line 43
    .line 44
    :try_start_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getType()B

    .line 45
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    .line 47
    const/16 p2, -0x6e

    .line 48
    .line 49
    if-ne p0, p2, :cond_1

    .line 50
    move-object v2, v3

    .line 51
    .line 52
    :try_start_4
    const-class v3, Ljava/lang/Object;

    .line 53
    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    const-wide/16 v6, 0x0

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v4, p1

    .line 65
    move-object v3, v2

    .line 66
    move-object v2, p0

    .line 67
    .line 68
    .line 69
    :try_start_5
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    goto :goto_2

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    move-object v3, v2

    .line 74
    :goto_1
    move-object p0, v0

    .line 75
    goto :goto_5

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 79
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 80
    :goto_2
    move-object v2, v3

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    move-object v4, p1

    .line 83
    .line 84
    :try_start_6
    iget-wide p0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 85
    .line 86
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 87
    .line 88
    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 89
    and-long/2addr p0, p2

    .line 90
    .line 91
    const-wide/16 p2, 0x0

    .line 92
    .line 93
    cmp-long p0, p0, p2

    .line 94
    .line 95
    if-eqz p0, :cond_3

    .line 96
    const/4 v2, 0x1

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 100
    move-result-object v2

    .line 101
    const/4 v5, 0x0

    .line 102
    .line 103
    const-wide/16 v6, 0x0

    .line 104
    .line 105
    .line 106
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 107
    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 108
    move-object v2, v3

    .line 109
    .line 110
    :goto_3
    :try_start_7
    iget-object p1, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 111
    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 116
    goto :goto_4

    .line 117
    :catchall_2
    move-exception v0

    .line 118
    goto :goto_1

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 122
    return-object p0

    .line 123
    :catchall_3
    move-exception v0

    .line 124
    move-object v2, v3

    .line 125
    goto :goto_1

    .line 126
    .line 127
    .line 128
    :goto_5
    :try_start_8
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 129
    goto :goto_6

    .line 130
    :catchall_4
    move-exception v0

    .line 131
    move-object p1, v0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 135
    :goto_6
    throw p0
.end method

.method public static varargs L([BLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
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
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 8
    .line 9
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 10
    array-length p2, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v1, p0, v2, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 15
    .line 16
    :try_start_0
    const-class p0, Ljava/lang/Object;

    .line 17
    .line 18
    if-ne p1, p0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getType()B

    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    const/16 p2, -0x6e

    .line 25
    .line 26
    if-ne p0, p2, :cond_0

    .line 27
    move-object v2, v3

    .line 28
    .line 29
    :try_start_1
    const-class v3, Ljava/lang/Object;

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    const-wide/16 v6, 0x0

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 37
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    move-object v3, v2

    .line 39
    .line 40
    :try_start_2
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 41
    const/4 v5, 0x0

    .line 42
    move-object v2, p0

    .line 43
    move-object v4, p1

    .line 44
    .line 45
    .line 46
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    :goto_0
    move-object p0, v0

    .line 51
    goto :goto_2

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    move-object v3, v2

    .line 54
    goto :goto_0

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v4, p1

    .line 61
    .line 62
    iget-wide p0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 63
    .line 64
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 65
    .line 66
    iget-wide v5, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 67
    and-long/2addr p0, v5

    .line 68
    .line 69
    const-wide/16 v5, 0x0

    .line 70
    .line 71
    cmp-long p0, p0, v5

    .line 72
    .line 73
    if-eqz p0, :cond_2

    .line 74
    const/4 v2, 0x1

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 78
    move-result-object v2

    .line 79
    .line 80
    iget-wide p0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 81
    .line 82
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 83
    .line 84
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 85
    and-long/2addr p0, v0

    .line 86
    .line 87
    cmp-long p0, p0, v5

    .line 88
    .line 89
    if-eqz p0, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->isArray()Z

    .line 93
    move-result p0

    .line 94
    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    instance-of p0, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    .line 98
    .line 99
    if-eqz p0, :cond_3

    .line 100
    const/4 v5, 0x0

    .line 101
    .line 102
    const-wide/16 v6, 0x0

    .line 103
    .line 104
    .line 105
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const/4 v5, 0x0

    .line 109
    .line 110
    const-wide/16 v6, 0x0

    .line 111
    .line 112
    .line 113
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 114
    move-result-object p0

    .line 115
    .line 116
    :goto_1
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 117
    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 125
    return-object p0

    .line 126
    .line 127
    .line 128
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 129
    goto :goto_3

    .line 130
    :catchall_2
    move-exception v0

    .line 131
    move-object p1, v0

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 135
    :goto_3
    throw p0
.end method

.method public static M([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 10
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
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 8
    .line 9
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 10
    .line 11
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 12
    .line 13
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 14
    and-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    const/4 v3, 0x0

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, v3

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 28
    move-result-object v4

    .line 29
    .line 30
    new-instance v5, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 31
    array-length v0, p0

    .line 32
    .line 33
    .line 34
    invoke-direct {v5, v1, p0, v3, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 35
    const/4 v7, 0x0

    .line 36
    .line 37
    const-wide/16 v8, 0x0

    .line 38
    move-object v6, p1

    .line 39
    .line 40
    .line 41
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    iget-object p1, v5, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 50
    :cond_1
    return-object p0
.end method

.method public static N([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 8
    .line 9
    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 10
    .line 11
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 12
    .line 13
    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 14
    and-long/2addr v2, v4

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long p2, v2, v4

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    const/4 p2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p2, v2

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    new-instance v4, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 31
    array-length p2, p0

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v1, p0, v2, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 35
    const/4 v6, 0x0

    .line 36
    .line 37
    const-wide/16 v7, 0x0

    .line 38
    move-object v5, p1

    .line 39
    .line 40
    .line 41
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    iget-object p1, v4, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 50
    :cond_1
    return-object p0
.end method

.method public static varargs O([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 8
    .line 9
    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 10
    .line 11
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 12
    .line 13
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 14
    and-long/2addr p2, v2

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long p2, p2, v2

    .line 19
    const/4 p3, 0x0

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    const/4 p2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move p2, p3

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 31
    array-length p2, p0

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v1, p0, p3, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 35
    const/4 v5, 0x0

    .line 36
    .line 37
    const-wide/16 v6, 0x0

    .line 38
    move-object v4, p1

    .line 39
    .line 40
    .line 41
    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    move-object p0, v0

    .line 53
    goto :goto_2

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 57
    return-object p0

    .line 58
    .line 59
    .line 60
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    goto :goto_3

    .line 62
    :catchall_1
    move-exception v0

    .line 63
    move-object p1, v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 67
    :goto_3
    throw p0
.end method

.method public static varargs P([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            "[",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_6

    .line 3
    array-length v0, p0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_5

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 10
    .line 11
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p3, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 18
    .line 19
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 20
    array-length p2, p0

    .line 21
    const/4 p3, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v1, p0, p3, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 25
    move p0, p3

    .line 26
    :goto_0
    :try_start_0
    array-length p2, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    if-ge p0, p2, :cond_1

    .line 29
    .line 30
    :try_start_1
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 31
    .line 32
    aget-object p2, p4, p0

    .line 33
    .line 34
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 35
    or-long/2addr v4, v6

    .line 36
    .line 37
    iput-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    add-int/lit8 p0, p0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    move-object v2, v3

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    :try_start_2
    const-class p0, Ljava/lang/Object;

    .line 48
    .line 49
    if-ne p1, p0, :cond_3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->getType()B

    .line 53
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .line 55
    const/16 p2, -0x6e

    .line 56
    .line 57
    if-ne p0, p2, :cond_2

    .line 58
    move-object v2, v3

    .line 59
    .line 60
    :try_start_3
    const-class v3, Ljava/lang/Object;

    .line 61
    .line 62
    const-wide/16 v4, 0x0

    .line 63
    .line 64
    const-wide/16 v6, 0x0

    .line 65
    .line 66
    .line 67
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 68
    move-result-object p0

    .line 69
    .line 70
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 71
    const/4 v5, 0x0

    .line 72
    move-object v4, p1

    .line 73
    move-object v3, v2

    .line 74
    move-object v2, p0

    .line 75
    .line 76
    .line 77
    :try_start_4
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 78
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    move-object v2, v3

    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    move-object v2, v3

    .line 83
    :goto_1
    move-object p0, v0

    .line 84
    goto :goto_3

    .line 85
    :catchall_2
    move-exception v0

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move-object v2, v3

    .line 88
    .line 89
    .line 90
    :try_start_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 91
    move-result-object p0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-object v4, p1

    .line 94
    move-object v2, v3

    .line 95
    .line 96
    iget-wide p0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 97
    .line 98
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 99
    .line 100
    iget-wide v5, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 101
    and-long/2addr p0, v5

    .line 102
    .line 103
    const-wide/16 v5, 0x0

    .line 104
    .line 105
    cmp-long p0, p0, v5

    .line 106
    .line 107
    if-eqz p0, :cond_4

    .line 108
    const/4 p3, 0x1

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-virtual {v0, v4, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 112
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 113
    const/4 v5, 0x0

    .line 114
    .line 115
    const-wide/16 v6, 0x0

    .line 116
    move-object v3, v2

    .line 117
    move-object v2, p0

    .line 118
    .line 119
    .line 120
    :try_start_6
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 121
    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 122
    move-object v2, v3

    .line 123
    .line 124
    :goto_2
    :try_start_7
    iget-object p1, v2, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 133
    return-object p0

    .line 134
    .line 135
    .line 136
    :goto_3
    :try_start_8
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 137
    goto :goto_4

    .line 138
    :catchall_3
    move-exception v0

    .line 139
    move-object p1, v0

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 143
    :goto_4
    throw p0

    .line 144
    :cond_6
    :goto_5
    const/4 p0, 0x0

    .line 145
    return-object p0
.end method

.method public static varargs Q([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
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
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 8
    .line 9
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 10
    array-length p2, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v1, p0, v2, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 15
    .line 16
    :try_start_0
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 17
    .line 18
    sget-object p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 19
    .line 20
    iget-wide v6, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 21
    and-long/2addr v4, v6

    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    cmp-long p0, v4, v6

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 32
    move-result-object v2

    .line 33
    const/4 v5, 0x0

    .line 34
    .line 35
    const-wide/16 v6, 0x0

    .line 36
    move-object v4, p1

    .line 37
    .line 38
    .line 39
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 55
    return-object p0

    .line 56
    .line 57
    .line 58
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    goto :goto_2

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    move-object p1, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    :goto_2
    throw p0
.end method

.method public static varargs R([B[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B[",
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
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/b;->M([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static varargs S([Ljava/lang/String;)Lcom/alibaba/fastjson2/SymbolTable;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/SymbolTable;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/SymbolTable;-><init>([Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method public static T(B)[B
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt8(B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    goto :goto_0

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    :goto_0
    throw p0
.end method

.method public static U(I)[B
    .locals 3

    .line 1
    .line 2
    const/16 v0, -0x10

    .line 3
    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x2f

    .line 7
    .line 8
    if-gt p0, v0, :cond_0

    .line 9
    int-to-byte p0, p0

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    aput-byte p0, v0, v1

    .line 16
    return-object v0

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 19
    .line 20
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 21
    .line 22
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 26
    const/4 v2, 0x0

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt32(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 36
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    :goto_0
    throw p0
.end method

.method public static V(J)[B
    .locals 3

    .line 1
    .line 2
    const-wide/16 v0, -0x8

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0xf

    .line 9
    .line 10
    cmp-long v0, p0, v0

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x20

    .line 15
    sub-long/2addr p0, v0

    .line 16
    long-to-int p0, p0

    .line 17
    int-to-byte p0, p0

    .line 18
    const/4 p1, 0x1

    .line 19
    .line 20
    new-array p1, p1, [B

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    aput-byte p0, p1, v0

    .line 24
    return-object p1

    .line 25
    .line 26
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 27
    .line 28
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 29
    .line 30
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 34
    const/4 v2, 0x0

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt64(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 44
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 48
    return-object p0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    .line 51
    .line 52
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    goto :goto_0

    .line 54
    :catchall_1
    move-exception p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    :goto_0
    throw p0
.end method

.method public static W(Ljava/lang/Object;)[B
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
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 8
    .line 9
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    move-object p0, v0

    .line 22
    goto :goto_2

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 29
    .line 30
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 31
    .line 32
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 33
    and-long/2addr v4, v6

    .line 34
    .line 35
    const-wide/16 v6, 0x0

    .line 36
    .line 37
    cmp-long v1, v4, v6

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v2, v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 46
    move-result-object v2

    .line 47
    const/4 v6, 0x0

    .line 48
    .line 49
    const-wide/16 v7, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    move-object v4, p0

    .line 52
    .line 53
    .line 54
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 58
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 62
    return-object p0

    .line 63
    .line 64
    .line 65
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    goto :goto_3

    .line 67
    :catchall_1
    move-exception v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    :goto_3
    throw p0
.end method

.method public static X(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter$Context;)[B
    .locals 8

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    move-object p0, v0

    .line 21
    goto :goto_2

    .line 22
    .line 23
    :cond_1
    iput-object p0, v1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 24
    .line 25
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 26
    .line 27
    iput-object v0, v1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 28
    .line 29
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 30
    .line 31
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 32
    .line 33
    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 34
    and-long/2addr v2, v4

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    cmp-long v0, v2, v4

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v0, 0x0

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2, v2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 56
    .line 57
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 58
    .line 59
    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 60
    and-long/2addr v2, v6

    .line 61
    .line 62
    cmp-long p1, v2, v4

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    const/4 v4, 0x0

    .line 66
    .line 67
    const-wide/16 v5, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    move-object v2, p0

    .line 70
    .line 71
    .line 72
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move-object v2, p0

    .line 75
    const/4 v4, 0x0

    .line 76
    .line 77
    const-wide/16 v5, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    .line 80
    .line 81
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 85
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 89
    return-object p0

    .line 90
    .line 91
    .line 92
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    goto :goto_3

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    move-object p1, v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 99
    :goto_3
    throw p0
.end method

.method public static Y(Ljava/lang/Object;Lcom/alibaba/fastjson2/SymbolTable;)[B
    .locals 9

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 8
    .line 9
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    move-object p0, v0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 32
    move-result-object v2

    .line 33
    const/4 v6, 0x0

    .line 34
    .line 35
    const-wide/16 v7, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    move-object v4, p0

    .line 38
    .line 39
    .line 40
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 44
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 48
    return-object p0

    .line 49
    .line 50
    .line 51
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    goto :goto_2

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    move-object p1, v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    :goto_2
    throw p0
.end method

.method public static varargs Z(Ljava/lang/Object;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
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
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v1, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    move-object p0, v0

    .line 21
    goto :goto_2

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 31
    .line 32
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 33
    .line 34
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 35
    and-long/2addr v4, v6

    .line 36
    .line 37
    const-wide/16 v6, 0x0

    .line 38
    .line 39
    cmp-long p2, v4, v6

    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    const/4 p2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p2, 0x0

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, p1, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 51
    .line 52
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 53
    .line 54
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 55
    and-long/2addr p1, v0

    .line 56
    .line 57
    cmp-long p1, p1, v6

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    const/4 v6, 0x0

    .line 61
    .line 62
    const-wide/16 v7, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    move-object v4, p0

    .line 65
    .line 66
    .line 67
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move-object v4, p0

    .line 70
    const/4 v6, 0x0

    .line 71
    .line 72
    const-wide/16 v7, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    .line 75
    .line 76
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 80
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 84
    return-object p0

    .line 85
    .line 86
    .line 87
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    move-object p1, v0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    :goto_3
    throw p0
.end method

.method public static varargs a(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;
    .locals 0
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
    .line 3
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->j(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static varargs a0(Ljava/lang/Object;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
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
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v1, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    move-object p0, v0

    .line 24
    goto :goto_2

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 34
    .line 35
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 36
    .line 37
    iget-wide v4, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 38
    and-long/2addr p2, v4

    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    cmp-long p2, p2, v4

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    const/4 p2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p2, 0x0

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, p1, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    iget-wide p1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 54
    .line 55
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 56
    .line 57
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 58
    and-long/2addr p1, v0

    .line 59
    .line 60
    cmp-long p1, p1, v4

    .line 61
    .line 62
    if-eqz p1, :cond_2

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
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v4, p0

    .line 73
    const/4 v6, 0x0

    .line 74
    .line 75
    const-wide/16 v7, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    .line 78
    .line 79
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 83
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 87
    return-object p0

    .line 88
    .line 89
    .line 90
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

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
.end method

.method public static b([B)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/b;->i0([BZ)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static varargs b0(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
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
    new-instance v3, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v3, v1, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    move-object p0, v0

    .line 22
    goto :goto_2

    .line 23
    .line 24
    :cond_0
    iput-object p0, v3, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 27
    .line 28
    iput-object p1, v3, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 29
    .line 30
    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 31
    .line 32
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 33
    .line 34
    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 35
    and-long/2addr v4, v6

    .line 36
    .line 37
    const-wide/16 v6, 0x0

    .line 38
    .line 39
    cmp-long p1, v4, v6

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 55
    .line 56
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 57
    .line 58
    iget-wide v4, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 59
    and-long/2addr v0, v4

    .line 60
    .line 61
    cmp-long p1, v0, v6

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    const/4 v6, 0x0

    .line 65
    .line 66
    const-wide/16 v7, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    move-object v4, p0

    .line 69
    .line 70
    .line 71
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v4, p0

    .line 74
    const/4 v6, 0x0

    .line 75
    .line 76
    const-wide/16 v7, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    .line 79
    .line 80
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 84
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 88
    return-object p0

    .line 89
    .line 90
    .line 91
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    goto :goto_3

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    move-object p1, v0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    :goto_3
    throw p0
.end method

.method public static c([BLcom/alibaba/fastjson2/SymbolTable;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONBDump;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/fastjson2/JSONBDump;-><init>([BLcom/alibaba/fastjson2/SymbolTable;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->toString()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static c0(Ljava/lang/String;)[B
    .locals 3

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 4
    .line 5
    new-array p0, p0, [B

    .line 6
    .line 7
    const/16 v0, -0x51

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    aput-byte v0, p0, v1

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 14
    .line 15
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 16
    .line 17
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    .line 31
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 35
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    .line 38
    .line 39
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    :goto_0
    throw p0
.end method

.method public static d([B)[B
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    .line 4
    move-result-object v1

    .line 5
    .line 6
    const-class p0, Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 10
    move-result-object v0

    .line 11
    const/4 v3, 0x0

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/alibaba/fastjson2/b;->W(Ljava/lang/Object;)[B

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static d0(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    new-array p0, v0, [B

    .line 7
    .line 8
    const/16 p1, -0x51

    .line 9
    .line 10
    aput-byte p1, p0, v1

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    if-ne p1, v2, :cond_1

    .line 16
    .line 17
    const/16 v2, 0x7b

    .line 18
    goto :goto_1

    .line 19
    .line 20
    :cond_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    if-ne p1, v2, :cond_2

    .line 23
    .line 24
    const/16 v2, 0x7d

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_2
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    if-ne p1, v2, :cond_3

    .line 30
    .line 31
    const/16 v2, 0x7c

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    if-ne p1, v2, :cond_4

    .line 37
    .line 38
    const/16 v2, 0x7a

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_4
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    if-eq p1, v2, :cond_7

    .line 44
    .line 45
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 46
    .line 47
    if-ne p1, v2, :cond_5

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_5
    if-eqz p1, :cond_6

    .line 51
    .line 52
    const-string v2, "GB18030"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 61
    .line 62
    if-eqz v2, :cond_6

    .line 63
    .line 64
    const/16 v2, 0x7e

    .line 65
    goto :goto_1

    .line 66
    .line 67
    .line 68
    :cond_6
    invoke-static {p0}, Lcom/alibaba/fastjson2/b;->c0(Ljava/lang/String;)[B

    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    .line 72
    :cond_7
    :goto_0
    const/16 v2, 0x79

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 76
    move-result-object p0

    .line 77
    array-length p1, p0

    .line 78
    .line 79
    add-int/lit8 v3, p1, 0x2

    .line 80
    array-length v4, p0

    .line 81
    .line 82
    const/16 v5, 0x2f

    .line 83
    .line 84
    if-gt v4, v5, :cond_8

    .line 85
    goto :goto_2

    .line 86
    :cond_8
    array-length v3, p0

    .line 87
    .line 88
    const/16 v4, 0x7ff

    .line 89
    .line 90
    if-gt v3, v4, :cond_9

    .line 91
    .line 92
    add-int/lit8 v3, p1, 0x3

    .line 93
    goto :goto_2

    .line 94
    :cond_9
    array-length v3, p0

    .line 95
    .line 96
    .line 97
    const v4, 0x3ffff

    .line 98
    .line 99
    if-gt v3, v4, :cond_a

    .line 100
    .line 101
    add-int/lit8 v3, p1, 0x4

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_a
    add-int/lit8 v3, p1, 0x6

    .line 105
    .line 106
    :goto_2
    new-array p1, v3, [B

    .line 107
    .line 108
    aput-byte v2, p1, v1

    .line 109
    array-length v2, p0

    .line 110
    .line 111
    .line 112
    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson2/b;->k0([BII)I

    .line 113
    move-result v2

    .line 114
    add-int/2addr v2, v0

    .line 115
    array-length v0, p0

    .line 116
    .line 117
    .line 118
    invoke-static {p0, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-object p1
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->z(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lcom/alibaba/fastjson2/b;->W(Ljava/lang/Object;)[B

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static e0(S)[B
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeInt16(S)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->getBytes()[B

    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    goto :goto_0

    .line 30
    :catchall_1
    move-exception v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    :goto_0
    throw p0
.end method

.method public static f(Ljava/io/InputStream;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 23
    return-object p0

    .line 24
    .line 25
    .line 26
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    goto :goto_2

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 32
    :goto_2
    throw p0
.end method

.method public static f0(Z)[B
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/16 p0, -0x4f

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    const/16 p0, -0x50

    .line 8
    :goto_0
    const/4 v0, 0x1

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    aput-byte p0, v0, v1

    .line 14
    return-object v0
.end method

.method public static g([BLcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 3
    .line 4
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 5
    .line 6
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 7
    .line 8
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 9
    const/4 v1, 0x0

    .line 10
    array-length v2, p0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1, p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 31
    return-object p0

    .line 32
    .line 33
    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    goto :goto_2

    .line 36
    :catchall_1
    move-exception p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 40
    :goto_2
    throw p0
.end method

.method public static g0([B)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONBDump;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/JSONBDump;-><init>([BZ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->toString()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static varargs h([BLcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 8
    .line 9
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 10
    const/4 p2, 0x0

    .line 11
    array-length v0, p0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v1, p0, p2, v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 32
    return-object p0

    .line 33
    .line 34
    .line 35
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 41
    :goto_2
    throw p0
.end method

.method public static h0([BLcom/alibaba/fastjson2/SymbolTable;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONBDump;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/alibaba/fastjson2/JSONBDump;-><init>([BLcom/alibaba/fastjson2/SymbolTable;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->toString()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static varargs i([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 8
    .line 9
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 10
    const/4 v0, 0x0

    .line 11
    array-length v2, p0

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, v1, p0, v0, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 32
    return-object p0

    .line 33
    .line 34
    .line 35
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 41
    :goto_2
    throw p0
.end method

.method public static i0([BZ)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONBDump;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONBDump;-><init>([BZ)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONBDump;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static j(Ljava/io/InputStream;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readArray()Ljava/util/List;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    check-cast p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 12
    .line 13
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 25
    return-object p0

    .line 26
    .line 27
    .line 28
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    goto :goto_2

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    :goto_2
    throw p0
.end method

.method public static j0(B)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x48

    .line 3
    .line 4
    const-string v1, "INT32 "

    .line 5
    .line 6
    if-eq p0, v0, :cond_9

    .line 7
    .line 8
    const/16 v0, 0x7f

    .line 9
    .line 10
    if-eq p0, v0, :cond_8

    .line 11
    .line 12
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 14
    .line 15
    const-string v0, "INT64 "

    .line 16
    .line 17
    .line 18
    packed-switch p0, :pswitch_data_1

    .line 19
    .line 20
    .line 21
    packed-switch p0, :pswitch_data_2

    .line 22
    .line 23
    const/16 v2, -0x6c

    .line 24
    .line 25
    if-lt p0, v2, :cond_0

    .line 26
    .line 27
    const/16 v2, -0x5c

    .line 28
    .line 29
    if-gt p0, v2, :cond_0

    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v1, "ARRAY "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    .line 53
    :cond_0
    const/16 v2, 0x49

    .line 54
    .line 55
    if-lt p0, v2, :cond_1

    .line 56
    .line 57
    const/16 v2, 0x79

    .line 58
    .line 59
    if-gt p0, v2, :cond_1

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v1, "STR_ASCII "

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    .line 83
    :cond_1
    const/16 v2, -0x10

    .line 84
    .line 85
    if-lt p0, v2, :cond_2

    .line 86
    .line 87
    const/16 v2, 0x2f

    .line 88
    .line 89
    if-gt p0, v2, :cond_2

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    return-object p0

    .line 110
    .line 111
    :cond_2
    const/16 v2, 0x30

    .line 112
    .line 113
    if-lt p0, v2, :cond_3

    .line 114
    .line 115
    const/16 v2, 0x3f

    .line 116
    .line 117
    if-gt p0, v2, :cond_3

    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    .line 139
    :cond_3
    const/16 v2, 0x40

    .line 140
    .line 141
    if-lt p0, v2, :cond_4

    .line 142
    .line 143
    const/16 v2, 0x47

    .line 144
    .line 145
    if-gt p0, v2, :cond_4

    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 157
    move-result-object p0

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    .line 167
    :cond_4
    const/16 v1, -0x28

    .line 168
    .line 169
    if-lt p0, v1, :cond_5

    .line 170
    .line 171
    const/16 v1, -0x11

    .line 172
    .line 173
    if-gt p0, v1, :cond_5

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    .line 195
    :cond_5
    const/16 v1, -0x38

    .line 196
    .line 197
    if-lt p0, v1, :cond_6

    .line 198
    .line 199
    const/16 v1, -0x29

    .line 200
    .line 201
    if-gt p0, v1, :cond_6

    .line 202
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 213
    move-result-object p0

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    .line 223
    :cond_6
    const/16 v1, -0x40

    .line 224
    .line 225
    if-lt p0, v1, :cond_7

    .line 226
    .line 227
    const/16 v1, -0x39

    .line 228
    .line 229
    if-gt p0, v1, :cond_7

    .line 230
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 241
    move-result-object p0

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object p0

    .line 249
    return-object p0

    .line 250
    .line 251
    .line 252
    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 253
    move-result-object p0

    .line 254
    return-object p0

    .line 255
    .line 256
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    const-string v1, "STR_UTF16BE "

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 268
    move-result-object p0

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object p0

    .line 276
    return-object p0

    .line 277
    .line 278
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    const-string v1, "STR_UTF16LE "

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 290
    move-result-object p0

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object p0

    .line 298
    return-object p0

    .line 299
    .line 300
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    const-string v1, "STR_UTF16 "

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 312
    move-result-object p0

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    move-result-object p0

    .line 320
    return-object p0

    .line 321
    .line 322
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    const-string v1, "STR_UTF8 "

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 334
    move-result-object p0

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object p0

    .line 342
    return-object p0

    .line 343
    .line 344
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 354
    move-result-object p0

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    move-result-object p0

    .line 362
    return-object p0

    .line 363
    .line 364
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    const-string v1, "INT8 "

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 376
    move-result-object p0

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    move-result-object p0

    .line 384
    return-object p0

    .line 385
    .line 386
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    const-string v1, "INT16 "

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 398
    move-result-object p0

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object p0

    .line 406
    return-object p0

    .line 407
    .line 408
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    const-string v1, "BIGINT "

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 420
    move-result-object p0

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    move-result-object p0

    .line 428
    return-object p0

    .line 429
    .line 430
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    const-string v1, "DECIMAL "

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 442
    move-result-object p0

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object p0

    .line 450
    return-object p0

    .line 451
    .line 452
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    const-string v1, "FLOAT "

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 464
    move-result-object p0

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    move-result-object p0

    .line 472
    return-object p0

    .line 473
    .line 474
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    const-string v1, "DOUBLE "

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 486
    move-result-object p0

    .line 487
    .line 488
    .line 489
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object p0

    .line 494
    return-object p0

    .line 495
    .line 496
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    const-string v1, "TRUE "

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 508
    move-result-object p0

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    move-result-object p0

    .line 516
    return-object p0

    .line 517
    .line 518
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .line 523
    const-string v1, "FALSE "

    .line 524
    .line 525
    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 530
    move-result-object p0

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    move-result-object p0

    .line 538
    return-object p0

    .line 539
    .line 540
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .line 545
    const-string v1, "NULL "

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 552
    move-result-object p0

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    move-result-object p0

    .line 560
    return-object p0

    .line 561
    .line 562
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .line 567
    const-string v1, "TIMESTAMP "

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 574
    move-result-object p0

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    move-result-object p0

    .line 582
    return-object p0

    .line 583
    .line 584
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .line 589
    const-string v1, "TIMESTAMP_MINUTES "

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 596
    move-result-object p0

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    move-result-object p0

    .line 604
    return-object p0

    .line 605
    .line 606
    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    const-string v1, "TIMESTAMP_SECONDS "

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 618
    move-result-object p0

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    move-result-object p0

    .line 626
    return-object p0

    .line 627
    .line 628
    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .line 633
    const-string v1, "TIMESTAMP_MILLIS "

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 640
    move-result-object p0

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    move-result-object p0

    .line 648
    return-object p0

    .line 649
    .line 650
    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 654
    .line 655
    const-string v1, "TIMESTAMP_WITH_TIMEZONE "

    .line 656
    .line 657
    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 662
    move-result-object p0

    .line 663
    .line 664
    .line 665
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    move-result-object p0

    .line 670
    return-object p0

    .line 671
    .line 672
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .line 677
    const-string v1, "LOCAL_DATE "

    .line 678
    .line 679
    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 684
    move-result-object p0

    .line 685
    .line 686
    .line 687
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    move-result-object p0

    .line 692
    return-object p0

    .line 693
    .line 694
    :pswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .line 699
    const-string v1, "LOCAL_DATETIME "

    .line 700
    .line 701
    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 706
    move-result-object p0

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    move-result-object p0

    .line 714
    return-object p0

    .line 715
    .line 716
    :pswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .line 721
    const-string v1, "LOCAL_TIME "

    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 728
    move-result-object p0

    .line 729
    .line 730
    .line 731
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    move-result-object p0

    .line 736
    return-object p0

    .line 737
    .line 738
    :pswitch_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 742
    .line 743
    const-string v1, "OBJECT "

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 750
    move-result-object p0

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 757
    move-result-object p0

    .line 758
    return-object p0

    .line 759
    .line 760
    :pswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .line 765
    const-string v1, "OBJECT_END "

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 772
    move-result-object p0

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 779
    move-result-object p0

    .line 780
    return-object p0

    .line 781
    .line 782
    :pswitch_18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .line 787
    const-string v1, "REFERENCE "

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 794
    move-result-object p0

    .line 795
    .line 796
    .line 797
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    move-result-object p0

    .line 802
    return-object p0

    .line 803
    .line 804
    :pswitch_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .line 809
    const-string v1, "TYPED_ANY "

    .line 810
    .line 811
    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 816
    move-result-object p0

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    move-result-object p0

    .line 824
    return-object p0

    .line 825
    .line 826
    :pswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    .line 831
    const-string v1, "BINARY "

    .line 832
    .line 833
    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 838
    move-result-object p0

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 845
    move-result-object p0

    .line 846
    return-object p0

    .line 847
    .line 848
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 852
    .line 853
    const-string v1, "SYMBOL "

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 860
    move-result-object p0

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 867
    move-result-object p0

    .line 868
    return-object p0

    .line 869
    .line 870
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 880
    move-result-object p0

    .line 881
    .line 882
    .line 883
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    move-result-object p0

    .line 888
    return-object p0

    :pswitch_data_0
    .packed-switch -0x6f
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x5b
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static k([B)Lcom/alibaba/fastjson2/JSONArray;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 10
    const/4 v2, 0x0

    .line 11
    array-length v3, p0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readArray()Ljava/util/List;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    check-cast p0, Lcom/alibaba/fastjson2/JSONArray;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 34
    return-object p0

    .line 35
    .line 36
    .line 37
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    goto :goto_2

    .line 39
    :catchall_1
    move-exception v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 43
    :goto_2
    throw p0
.end method

.method public static k0([BII)I
    .locals 3

    .line 1
    .line 2
    const/16 v0, -0x10

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-lt p2, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x2f

    .line 8
    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    int-to-byte p2, p2

    .line 11
    .line 12
    aput-byte p2, p0, p1

    .line 13
    return v1

    .line 14
    .line 15
    :cond_0
    const/16 v0, -0x800

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    if-lt p2, v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x7ff

    .line 21
    .line 22
    if-gt p2, v0, :cond_1

    .line 23
    .line 24
    shr-int/lit8 v0, p2, 0x8

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x38

    .line 27
    int-to-byte v0, v0

    .line 28
    .line 29
    aput-byte v0, p0, p1

    .line 30
    add-int/2addr p1, v1

    .line 31
    int-to-byte p2, p2

    .line 32
    .line 33
    aput-byte p2, p0, p1

    .line 34
    return v2

    .line 35
    .line 36
    :cond_1
    const/high16 v0, -0x40000

    .line 37
    .line 38
    if-lt p2, v0, :cond_2

    .line 39
    .line 40
    .line 41
    const v0, 0x3ffff

    .line 42
    .line 43
    if-gt p2, v0, :cond_2

    .line 44
    .line 45
    shr-int/lit8 v0, p2, 0x10

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x44

    .line 48
    int-to-byte v0, v0

    .line 49
    .line 50
    aput-byte v0, p0, p1

    .line 51
    .line 52
    add-int/lit8 v0, p1, 0x1

    .line 53
    .line 54
    shr-int/lit8 v1, p2, 0x8

    .line 55
    int-to-byte v1, v1

    .line 56
    .line 57
    aput-byte v1, p0, v0

    .line 58
    add-int/2addr p1, v2

    .line 59
    int-to-byte p2, p2

    .line 60
    .line 61
    aput-byte p2, p0, p1

    .line 62
    const/4 p0, 0x3

    .line 63
    return p0

    .line 64
    .line 65
    :cond_2
    const/16 v0, 0x48

    .line 66
    .line 67
    aput-byte v0, p0, p1

    .line 68
    .line 69
    add-int/lit8 v0, p1, 0x1

    .line 70
    .line 71
    ushr-int/lit8 v1, p2, 0x18

    .line 72
    int-to-byte v1, v1

    .line 73
    .line 74
    aput-byte v1, p0, v0

    .line 75
    .line 76
    add-int/lit8 v0, p1, 0x2

    .line 77
    .line 78
    ushr-int/lit8 v1, p2, 0x10

    .line 79
    int-to-byte v1, v1

    .line 80
    .line 81
    aput-byte v1, p0, v0

    .line 82
    .line 83
    add-int/lit8 v0, p1, 0x3

    .line 84
    .line 85
    ushr-int/lit8 v1, p2, 0x8

    .line 86
    int-to-byte v1, v1

    .line 87
    .line 88
    aput-byte v1, p0, v0

    .line 89
    .line 90
    add-int/lit8 p1, p1, 0x4

    .line 91
    int-to-byte p2, p2

    .line 92
    .line 93
    aput-byte p2, p0, p1

    .line 94
    const/4 p0, 0x5

    .line 95
    return p0
.end method

.method public static l([BLjava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_3

    .line 8
    .line 9
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    aput-object p1, v2, v3

    .line 16
    .line 17
    const-class p1, Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v0, p1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 21
    .line 22
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 23
    .line 24
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 25
    .line 26
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 30
    array-length v2, p0

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0, p0, v3, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    check-cast p0, Ljava/util/List;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 53
    return-object p0

    .line 54
    .line 55
    .line 56
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    goto :goto_2

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    :goto_2
    throw p0

    .line 63
    :cond_2
    :goto_3
    return-object v0
.end method

.method public static varargs l0(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)I
    .locals 7

    .line 1
    .line 2
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    .line 3
    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->writeNull()V

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    move-object p0, v0

    .line 25
    goto :goto_1

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 36
    move-result-object v0

    .line 37
    const/4 v4, 0x0

    .line 38
    .line 39
    const-wide/16 v5, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    move-object v2, p1

    .line 42
    .line 43
    .line 44
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->flushTo(Ljava/io/OutputStream;)I

    .line 48
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    return p0

    .line 53
    .line 54
    .line 55
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    goto :goto_2

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    move-object p1, v0

    .line 59
    .line 60
    .line 61
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    move-object p0, v0

    .line 65
    .line 66
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 67
    .line 68
    const-string p2, "writeJSONString error"

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    throw p1
.end method

.method public static varargs m([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
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
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    array-length v1, p0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    goto :goto_3

    .line 8
    .line 9
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 13
    const/4 v3, 0x0

    .line 14
    .line 15
    aput-object p1, v2, v3

    .line 16
    .line 17
    const-class p1, Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v0, p1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 21
    .line 22
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 23
    .line 24
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 25
    .line 26
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v2, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 30
    array-length p2, p0

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0, p0, v3, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    .line 39
    check-cast p0, Ljava/util/List;

    .line 40
    .line 41
    iget-object p2, p1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 53
    return-object p0

    .line 54
    .line 55
    .line 56
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    goto :goto_2

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    :goto_2
    throw p0

    .line 63
    :cond_2
    :goto_3
    return-object v0
.end method

.method public static varargs n([B[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_2

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
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 9
    .line 10
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    array-length v3, p0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readList([Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 38
    return-object p0

    .line 39
    .line 40
    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    goto :goto_2

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    :goto_2
    throw p0

    .line 48
    :cond_2
    :goto_3
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static varargs o([B[Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B[",
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
    if-eqz p0, :cond_2

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
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 9
    .line 10
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 16
    const/4 p2, 0x0

    .line 17
    array-length v2, p0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, p0, p2, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readList([Ljava/lang/reflect/Type;)Ljava/util/List;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 38
    return-object p0

    .line 39
    .line 40
    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    goto :goto_2

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    :goto_2
    throw p0

    .line 48
    :cond_2
    :goto_3
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public static p(Ljava/io/InputStream;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 12
    .line 13
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 25
    return-object p0

    .line 26
    .line 27
    .line 28
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    goto :goto_2

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    :goto_2
    throw p0
.end method

.method public static q([B)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 10
    const/4 v2, 0x0

    .line 11
    array-length v3, p0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 34
    return-object p0

    .line 35
    .line 36
    .line 37
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    goto :goto_2

    .line 39
    :catchall_1
    move-exception v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 43
    :goto_2
    throw p0
.end method

.method public static varargs r([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 10
    const/4 p1, 0x0

    .line 11
    array-length v2, p0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, p0, p1, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readObject()Ljava/util/Map;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    .line 21
    .line 22
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 34
    return-object p0

    .line 35
    .line 36
    .line 37
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    goto :goto_2

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 43
    :goto_2
    throw p0
.end method

.method public static s(Ljava/io/InputStream;ILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 11
    array-length v2, v1

    .line 12
    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    and-int/2addr v0, v2

    .line 15
    .line 16
    aget-object v0, v1, v0

    .line 17
    .line 18
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, [B

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const/16 v2, 0x2000

    .line 30
    .line 31
    new-array v2, v2, [B

    .line 32
    :cond_0
    :try_start_0
    array-length v3, v2

    .line 33
    .line 34
    if-ge v3, p1, :cond_1

    .line 35
    .line 36
    new-array v2, p1, [B

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2, v3, p1}, Ljava/io/InputStream;->read([BII)I

    .line 44
    move-result p0

    .line 45
    .line 46
    if-ne p0, p1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3, p1, p2, p3}, Lcom/alibaba/fastjson2/b;->D([BIILjava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;

    .line 50
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-object p0

    .line 55
    .line 56
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v1, "deserialize failed. expected read length: "

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p1, " but actual read: "

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    :goto_1
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    throw p0
.end method

.method public static varargs t(Ljava/io/InputStream;ILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    .line 11
    array-length v2, v1

    .line 12
    .line 13
    add-int/lit8 v2, v2, -0x1

    .line 14
    and-int/2addr v0, v2

    .line 15
    .line 16
    aget-object v0, v1, v0

    .line 17
    .line 18
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    check-cast v2, [B

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    const/16 v2, 0x2000

    .line 30
    .line 31
    new-array v2, v2, [B

    .line 32
    :cond_0
    :try_start_0
    array-length v3, v2

    .line 33
    .line 34
    if-ge v3, p1, :cond_1

    .line 35
    .line 36
    new-array v2, p1, [B

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2, v3, p1}, Ljava/io/InputStream;->read([BII)I

    .line 44
    move-result p0

    .line 45
    .line 46
    if-ne p0, p1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-static {v2, v3, p1, p2, p3}, Lcom/alibaba/fastjson2/b;->G([BIILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    .line 50
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-object p0

    .line 55
    .line 56
    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v1, "deserialize failed. expected read length: "

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string p1, " but actual read: "

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    :goto_1
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    throw p0
.end method

.method public static u(Ljava/io/InputStream;Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    .line 6
    .line 7
    :try_start_0
    const-class p0, Ljava/lang/Object;

    .line 8
    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    move-object p0, v0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 21
    move-result-object v0

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    const-wide/16 v4, 0x0

    .line 25
    move-object v2, p1

    .line 26
    .line 27
    .line 28
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    :goto_0
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 40
    return-object p0

    .line 41
    .line 42
    .line 43
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    goto :goto_2

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    move-object p1, v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    :goto_2
    throw p0
.end method

.method public static varargs v(Ljava/io/InputStream;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/b;->u(Ljava/io/InputStream;Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static w(Ljava/io/InputStream;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    .line 5
    invoke-direct {v1, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    .line 6
    .line 7
    :try_start_0
    const-class p0, Ljava/lang/Object;

    .line 8
    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->readAny()Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    move-object p0, v0

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 21
    move-result-object v0

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    const-wide/16 v4, 0x0

    .line 25
    move-object v2, p1

    .line 26
    .line 27
    .line 28
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 30
    .line 31
    :goto_0
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 40
    return-object p0

    .line 41
    .line 42
    .line 43
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    goto :goto_2

    .line 45
    :catchall_1
    move-exception v0

    .line 46
    move-object p1, v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    :goto_2
    throw p0
.end method

.method public static varargs x(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/b;->w(Ljava/io/InputStream;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static y([BIILjava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 3
    .line 4
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 8
    .line 9
    new-instance v3, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 13
    .line 14
    :try_start_0
    iget-wide p0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 15
    .line 16
    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 17
    .line 18
    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 19
    and-long/2addr p0, v1

    .line 20
    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    cmp-long p0, p0, v1

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, p3, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 32
    move-result-object v2

    .line 33
    const/4 v5, 0x0

    .line 34
    .line 35
    const-wide/16 v6, 0x0

    .line 36
    move-object v4, p3

    .line 37
    .line 38
    .line 39
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    iget-object p1, v3, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    move-object p0, v0

    .line 51
    goto :goto_2

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 55
    return-object p0

    .line 56
    .line 57
    .line 58
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    goto :goto_3

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    move-object p1, v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    :goto_3
    throw p0
.end method

.method public static z([BIILjava/lang/Class;Lcom/alibaba/fastjson2/SymbolTable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/SymbolTable;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 3
    .line 4
    .line 5
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 6
    move-result-object p4

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p4, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 13
    move-result-object v0

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    move-object v2, p3

    .line 18
    .line 19
    .line 20
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    iget-object p1, v1, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    move-object p0, v0

    .line 32
    goto :goto_1

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V

    .line 36
    return-object p0

    .line 37
    .line 38
    .line 39
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReaderJSONB;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    goto :goto_2

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    move-object p1, v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    :goto_2
    throw p0
.end method
