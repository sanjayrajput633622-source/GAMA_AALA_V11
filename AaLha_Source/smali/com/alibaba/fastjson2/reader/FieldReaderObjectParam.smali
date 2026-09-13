.class Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;
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


# instance fields
.field final paramName:Ljava/lang/String;

.field final paramNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;)V
    .locals 13

    .line 1
    const/4 v11, 0x0

    .line 2
    const/4 v12, 0x0

    .line 3
    const/4 v10, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move/from16 v4, p5

    .line 11
    .line 12
    move-wide/from16 v5, p6

    .line 13
    .line 14
    move-object/from16 v7, p8

    .line 15
    .line 16
    move-object/from16 v8, p9

    .line 17
    .line 18
    move-object/from16 v9, p10

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/reader/FieldReaderObject;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/function/BiConsumer;)V

    .line 22
    .line 23
    move-object/from16 p1, p4

    .line 24
    .line 25
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;->paramName:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 29
    move-result-wide p1

    .line 30
    .line 31
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderObjectParam;->paramNameHash:J

    .line 32
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public readFieldValue(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;)V
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
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string p2, "UnsupportedOperationException"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
