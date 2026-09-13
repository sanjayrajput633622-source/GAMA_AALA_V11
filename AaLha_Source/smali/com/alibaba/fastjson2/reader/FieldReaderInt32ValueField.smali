.class Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueField;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/reflect/Field;)V
    .locals 12

    .line 1
    const/4 v8, 0x0

    .line 2
    const/4 v10, 0x0

    .line 3
    .line 4
    const-wide/16 v5, 0x0

    .line 5
    move-object v3, p2

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move v4, p3

    .line 10
    .line 11
    move-object/from16 v7, p4

    .line 12
    .line 13
    move-object/from16 v9, p5

    .line 14
    .line 15
    move-object/from16 v11, p6

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
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueField;->fieldOffset:J

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

    double-to-int p2, p2

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueField;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    float-to-int p2, p2

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueField;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    long-to-int p2, p2

    .line 5
    sget-object p3, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueField;->fieldOffset:J

    invoke-virtual {p3, p1, v0, v1, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toIntValue(Ljava/lang/Object;)I

    move-result p2

    .line 4
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueField;->fieldOffset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p1

    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderInt32ValueField;->fieldOffset:J

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;I)V

    .line 8
    return-void
.end method
