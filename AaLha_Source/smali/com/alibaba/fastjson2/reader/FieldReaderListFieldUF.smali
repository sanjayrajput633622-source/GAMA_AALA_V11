.class final Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;
.super Lcom/alibaba/fastjson2/reader/FieldReaderList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderList<",
        "TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final fieldOffset:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/util/Collection;Ljava/lang/reflect/Field;)V
    .locals 15

    .line 1
    const/4 v12, 0x0

    .line 2
    const/4 v14, 0x0

    .line 3
    move-object v0, p0

    .line 4
    .line 5
    move-object/from16 v1, p1

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    move-object/from16 v3, p3

    .line 10
    .line 11
    move-object/from16 v4, p4

    .line 12
    .line 13
    move-object/from16 v5, p5

    .line 14
    .line 15
    move/from16 v6, p6

    .line 16
    .line 17
    move-wide/from16 v7, p7

    .line 18
    .line 19
    move-object/from16 v9, p9

    .line 20
    .line 21
    move-object/from16 v10, p10

    .line 22
    .line 23
    move-object/from16 v11, p11

    .line 24
    .line 25
    move-object/from16 v13, p12

    .line 26
    .line 27
    .line 28
    invoke-direct/range {v0 .. v14}, Lcom/alibaba/fastjson2/reader/FieldReaderList;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 29
    .line 30
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 34
    move-result-wide v1

    .line 35
    .line 36
    iput-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;->fieldOffset:J

    .line 37
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    iget-wide v1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderListFieldUF;->fieldOffset:J

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    return-void
.end method
