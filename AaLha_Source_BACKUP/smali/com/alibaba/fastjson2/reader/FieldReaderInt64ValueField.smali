.class Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueField;
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
.field final fieldOffset:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Long;Ljava/lang/reflect/Field;)V
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
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 24
    move-result-wide p1

    .line 25
    .line 26
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueField;->fieldOffset:J

    .line 27
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    double-to-long p2, p2

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueField;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    float-to-long v0, p2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueField;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
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

    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toLongValue(Ljava/lang/Object;)J

    move-result-wide v4

    .line 4
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueField;->fieldOffset:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v4

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueField;->fieldOffset:J

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public readFieldValueJSONB(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
    .locals 0
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
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderInt64ValueField;->readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V

    .line 4
    return-void
.end method
