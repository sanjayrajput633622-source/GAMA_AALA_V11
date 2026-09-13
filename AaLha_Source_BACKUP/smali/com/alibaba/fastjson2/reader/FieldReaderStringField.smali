.class final Lcom/alibaba/fastjson2/reader/FieldReaderStringField;
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
.field final emptyToNull:Z

.field final fieldOffset:J

.field final trim:Z

.field final upper:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 12

    .line 1
    const/4 v8, 0x0

    .line 2
    const/4 v10, 0x0

    .line 3
    move-object v3, p2

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v4, p3

    .line 8
    .line 9
    move-wide/from16 v5, p4

    .line 10
    .line 11
    move-object/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v9, p7

    .line 14
    .line 15
    move-object/from16 v11, p8

    .line 16
    .line 17
    .line 18
    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/reader/FieldReader;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 19
    .line 20
    const-string p1, "trim"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x1

    .line 26
    const/4 p3, 0x0

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 33
    .line 34
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 35
    .line 36
    and-long v3, p4, v3

    .line 37
    .line 38
    cmp-long p1, v3, v1

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move p1, p3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move p1, p2

    .line 45
    .line 46
    :goto_1
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    .line 47
    .line 48
    const-string p1, "upper"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result p1

    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->upper:Z

    .line 55
    .line 56
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 57
    .line 58
    move-object/from16 v11, p8

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    iput-wide v3, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->fieldOffset:J

    .line 65
    .line 66
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->EmptyStringAsNull:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 67
    .line 68
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 69
    .line 70
    and-long v3, p4, v3

    .line 71
    .line 72
    cmp-long p1, v3, v1

    .line 73
    .line 74
    if-eqz p1, :cond_2

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move p2, p3

    .line 77
    .line 78
    :goto_2
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->emptyToNull:Z

    .line 79
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    instance-of v0, p2, Ljava/lang/String;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    check-cast p2, Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    if-eqz p2, :cond_3

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->upper:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->emptyToNull:Z

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    const/4 p2, 0x0

    .line 43
    .line 44
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 45
    .line 46
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->fieldOffset:J

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public bridge synthetic readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 1

    .line 9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->emptyToNull:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->upper:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->emptyToNull:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 8
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->fieldOffset:J

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->trim:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->upper:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->emptyToNull:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    move-object p1, v0

    .line 35
    .line 36
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->emptyToNull:Z

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 44
    move-result v1

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    move-object v0, p1

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson2/reader/FieldReaderStringField;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public supportAcceptType(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
