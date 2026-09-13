.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderRootName;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final rootName:Ljava/lang/String;

.field protected final rootNameHashCode:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V
    .locals 13

    .line 1
    .line 2
    move-object/from16 v0, p4

    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-wide/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    move-object/from16 v9, p9

    .line 16
    .line 17
    move-object/from16 v10, p10

    .line 18
    .line 19
    move-object/from16 v11, p11

    .line 20
    .line 21
    move-object/from16 v12, p12

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v1 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/fastjson2/function/Supplier;Lcom/alibaba/fastjson2/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/reader/FieldReader;)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderRootName;->rootName:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const-wide/16 p1, 0x0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 35
    move-result-wide p1

    .line 36
    .line 37
    :goto_0
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderRootName;->rootNameHashCode:J

    .line 38
    return-void
.end method


# virtual methods
.method public createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderRootName;->rootName:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/util/Map;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    return-object v1

    .line 22
    .line 23
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderRootName;->rootNameHashCode:J

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 27
    move-result-wide v4

    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-super/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    move-wide v2, p4

    .line 37
    move-object p4, p3

    .line 38
    move-object p3, p2

    .line 39
    move-object p2, p1

    .line 40
    move-object p1, p0

    .line 41
    move-object v1, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-wide v2, p4

    .line 44
    move-object p4, p3

    .line 45
    move-object p3, p2

    .line 46
    move-object p2, p1

    .line 47
    move-object p1, p0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 51
    :goto_1
    move-object p1, p2

    .line 52
    move-object p2, p3

    .line 53
    move-object p3, p4

    .line 54
    move-wide p4, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move-object p2, p1

    .line 57
    move-object p1, p0

    .line 58
    .line 59
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 60
    .line 61
    new-instance p4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string p5, "read rootName error "

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget-object p5, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeName:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    .line 85
    invoke-direct {p3, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p3
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    return-object v1

    .line 22
    .line 23
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderRootName;->rootNameHashCode:J

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    .line 27
    move-result-wide v4

    .line 28
    .line 29
    cmp-long v0, v2, v4

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-super/range {p0 .. p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    move-wide v2, p4

    .line 37
    move-object p4, p3

    .line 38
    move-object p3, p2

    .line 39
    move-object p2, p1

    .line 40
    move-object p1, p0

    .line 41
    move-object v1, v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-wide v2, p4

    .line 44
    move-object p4, p3

    .line 45
    move-object p3, p2

    .line 46
    move-object p2, p1

    .line 47
    move-object p1, p0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 51
    :goto_1
    move-object p1, p2

    .line 52
    move-object p2, p3

    .line 53
    move-object p3, p4

    .line 54
    move-wide p4, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move-object p2, p1

    .line 57
    move-object p1, p0

    .line 58
    .line 59
    new-instance p3, Lcom/alibaba/fastjson2/JSONException;

    .line 60
    .line 61
    new-instance p4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string p5, "read rootName error "

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget-object p5, p1, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->typeName:Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    .line 85
    invoke-direct {p3, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p3
.end method
