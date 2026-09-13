.class public abstract Lcom/alibaba/fastjson2/JSONReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;,
        Lcom/alibaba/fastjson2/JSONReader$SavePoint;,
        Lcom/alibaba/fastjson2/JSONReader$ResolveTask;,
        Lcom/alibaba/fastjson2/JSONReader$Feature;,
        Lcom/alibaba/fastjson2/JSONReader$Context;,
        Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    }
.end annotation


# static fields
.field static final EOI:C = '\u001a'

.field static final INT_VALUE_END:[Z

.field static final JSON_TYPE_ARRAY:B = 0x7t

.field static final JSON_TYPE_BIG_DEC:B = 0x8t

.field static final JSON_TYPE_BOOL:B = 0x4t

.field static final JSON_TYPE_DEC:B = 0x2t

.field static final JSON_TYPE_DOUBLE:B = 0xdt

.field static final JSON_TYPE_FLOAT:B = 0xct

.field static final JSON_TYPE_INT:B = 0x1t

.field static final JSON_TYPE_INT16:B = 0xat

.field static final JSON_TYPE_INT64:B = 0xbt

.field static final JSON_TYPE_INT8:B = 0x9t

.field static final JSON_TYPE_NULL:B = 0x5t

.field static final JSON_TYPE_NaN:B = 0xet

.field static final JSON_TYPE_OBJECT:B = 0x6t

.field static final JSON_TYPE_STRING:B = 0x3t

.field protected static final MASK_DISABLE_REFERENCE_DETECT:J = 0x200000000L

.field static final MAX_EXP:I = 0x7ff

.field static final SPACE:J = 0x100003701L


# instance fields
.field protected boolValue:Z

.field protected ch:C

.field protected comma:Z

.field protected complex:Ljava/lang/Object;

.field public final context:Lcom/alibaba/fastjson2/JSONReader$Context;

.field protected doubleChars:[C

.field protected exponent:S

.field public final jsonb:Z

.field protected level:I

.field protected mag0:I

.field protected mag1:I

.field protected mag2:I

.field protected mag3:I

.field protected nameEscape:Z

.field protected negative:Z

.field protected offset:I

.field resolveTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/JSONReader$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field protected scale:S

.field protected stringValue:Ljava/lang/String;

.field protected typeRedirect:Z

.field protected valueEscape:Z

.field protected valueType:B

.field protected wasNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    .line 2
    const/16 v0, 0x100

    .line 3
    .line 4
    new-array v0, v0, [Z

    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader;->INT_VALUE_END:[Z

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 11
    .line 12
    const/16 v0, 0x13

    .line 13
    .line 14
    new-array v1, v0, [C

    .line 15
    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    .line 21
    :goto_0
    if-ge v3, v0, :cond_0

    .line 22
    .line 23
    aget-char v4, v1, v3

    .line 24
    .line 25
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader;->INT_VALUE_END:[Z

    .line 26
    .line 27
    aput-boolean v2, v5, v4

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void

    .line 32
    nop

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    :array_0
    .array-data 2
        0x2es
        0x65s
        0x45s
        0x74s
        0x66s
        0x6es
        0x7bs
        0x5bs
        0x30s
        0x31s
        0x32s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 6
    .line 7
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 8
    return-void
.end method

.method private add(Ljava/util/List;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p3, Lcom/alibaba/fastjson2/JSONPath;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p3, Lcom/alibaba/fastjson2/JSONPath;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public static varargs autoTypeFilter(Z[Ljava/lang/Class;)Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;-><init>(Z[Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs autoTypeFilter(Z[Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;-><init>(Z[Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs autoTypeFilter([Ljava/lang/Class;)Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public static varargs autoTypeFilter([Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/filter/ContextAutoTypeBeforeHandler;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static char2(II)C
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    .line 3
    .line 4
    aget p0, v0, p0

    .line 5
    .line 6
    shl-int/lit8 p0, p0, 0x4

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    add-int/2addr p0, p1

    .line 10
    int-to-char p0, p0

    .line 11
    return p0
.end method

.method public static char4(IIII)C
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->DIGITS2:[I

    .line 3
    .line 4
    aget p0, v0, p0

    .line 5
    .line 6
    shl-int/lit8 p0, p0, 0xc

    .line 7
    .line 8
    aget p1, v0, p1

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x8

    .line 11
    add-int/2addr p0, p1

    .line 12
    .line 13
    aget p1, v0, p2

    .line 14
    .line 15
    shl-int/lit8 p1, p1, 0x4

    .line 16
    add-int/2addr p0, p1

    .line 17
    .line 18
    aget p1, v0, p3

    .line 19
    add-int/2addr p0, p1

    .line 20
    int-to-char p0, p0

    .line 21
    return p0
.end method

.method public static isFirstIdentifier(I)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x24

    if-eq p0, v0, :cond_4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x7f

    if-le p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static numberError(II)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal number, offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", char "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONReader$Context;[B)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v0
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONReader$Context;[C)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v4, 0x0

    array-length v5, p1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v0
.end method

.method public static of(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 2

    .line 32
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 33
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_1

    .line 35
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    return-object p1

    .line 36
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-ne p1, v0, :cond_2

    .line 37
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderASCII;

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    return-object p1

    .line 38
    :cond_2
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support charset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_3
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    return-object p1
.end method

.method public static of(Ljava/io/Reader;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 2

    .line 40
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    .line 41
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/Reader;)V

    return-object v0
.end method

.method public static of(Ljava/io/Reader;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 42
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/Reader;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 4

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;II)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 56
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 58
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 59
    throw p0
.end method

.method public static of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 52
    throw p0
.end method

.method public static of(Ljava/net/URL;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    .line 29
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 31
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public static of(Ljava/nio/ByteBuffer;Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 44
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support charset "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_1
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/nio/ByteBuffer;)V

    return-object p2
.end method

.method public static of(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 43
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/nio/ByteBuffer;Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0
.end method

.method public static of([B)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    const/4 v4, 0x0

    array-length v5, p0

    const/4 v2, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v0
.end method

.method public static of([BII)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 23
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v0
.end method

.method public static of([BIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 24
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v2, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v0
.end method

.method public static of([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 8
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 9
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_0

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v2, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v0

    :cond_0
    move-object v3, p0

    move v4, p1

    move v5, p2

    .line 11
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne p3, p0, :cond_1

    .line 12
    new-instance p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object p0

    .line 13
    :cond_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-eq p3, p0, :cond_3

    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-ne p3, p0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 15
    :cond_3
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderASCII;

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v0
.end method

.method public static of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 8

    .line 16
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p3, v0, :cond_0

    .line 17
    new-instance v1, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v3, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v2, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v1

    :cond_0
    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v2, p4

    .line 18
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne p3, p0, :cond_1

    .line 19
    new-instance p0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object p0

    .line 20
    :cond_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    if-eq p3, p0, :cond_2

    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    if-ne p3, p0, :cond_3

    :cond_2
    move-object v3, v2

    goto :goto_0

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {p0, v2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    return-object p0

    .line 22
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONReaderASCII;

    move v7, v6

    move v6, v5

    move-object v5, v4

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReaderASCII;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v2
.end method

.method public static of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF8;

    const/4 v4, 0x0

    array-length v5, p0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    return-object v0
.end method

.method public static of([C)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 4
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 5
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v4, 0x0

    array-length v5, p0

    const/4 v2, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v0
.end method

.method public static of([CII)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 25
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 26
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v2, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v0
.end method

.method public static of([CIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 27
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v2, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v0
.end method

.method public static of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 6

    .line 7
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderUTF16;

    const/4 v4, 0x0

    array-length v5, p0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReaderUTF16;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[CII)V

    return-object v0
.end method

.method public static ofJSONB(Lcom/alibaba/fastjson2/JSONReader$Context;[B)Lcom/alibaba/fastjson2/JSONReader;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB(Ljava/io/InputStream;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static ofJSONB([B)Lcom/alibaba/fastjson2/JSONReader;
    .locals 4

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 2
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB([BII)Lcom/alibaba/fastjson2/JSONReader;
    .locals 2

    .line 9
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 10
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB([BIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 11
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB([BIILcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 1

    .line 12
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    .line 13
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static ofJSONB([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 3

    .line 5
    new-instance v0, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object v0
.end method

.method public static varargs ofJSONB([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader;
    .locals 3

    .line 6
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 8
    new-instance p1, Lcom/alibaba/fastjson2/JSONReaderJSONB;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {p1, v0, p0, v1, v2}, Lcom/alibaba/fastjson2/JSONReaderJSONB;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;[BII)V

    return-object p1
.end method

.method public static syntaxError(I)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect \',\', but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static syntaxError(II)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", char "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final addResolveTask(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    iget-object v2, p1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2, p3}, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;-><init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;-><init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 6
    :cond_0
    instance-of v0, p1, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    new-instance v2, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;-><init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addResolveTask([Ljava/lang/Object;ILcom/alibaba/fastjson2/JSONPath;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;-><init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final bigInt([BII)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v3, v2

    .line 34
    iget-short v5, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-lez v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    :cond_0
    const/16 v5, 0x26

    if-gt v4, v5, :cond_13

    const/16 v5, 0x9

    .line 35
    rem-int/2addr v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    add-int v4, v2, v5

    add-int/lit8 v5, v2, 0x1

    .line 36
    aget-byte v6, v1, v2

    int-to-char v6, v6

    const/16 v7, 0x2e

    const/4 v8, 0x2

    if-ne v6, v7, :cond_2

    add-int/2addr v2, v8

    .line 37
    aget-byte v5, v1, v5

    int-to-char v6, v5

    add-int/lit8 v5, v4, 0x1

    move/from16 v21, v5

    move v5, v2

    move/from16 v2, v21

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    add-int/lit8 v6, v6, -0x30

    :goto_2
    const/4 v9, 0x1

    if-ge v5, v4, :cond_4

    .line 38
    aget-byte v10, v1, v5

    int-to-char v10, v10

    if-ne v10, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 39
    aget-byte v10, v1, v5

    int-to-char v10, v10

    add-int/lit8 v2, v2, 0x1

    if-ge v4, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v10, v10, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v10

    add-int/2addr v5, v9

    goto :goto_2

    .line 40
    :cond_4
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    :cond_5
    if-ge v2, v3, :cond_12

    add-int/lit8 v4, v2, 0x9

    add-int/lit8 v5, v2, 0x1

    .line 41
    aget-byte v6, v1, v2

    int-to-char v6, v6

    if-ne v6, v7, :cond_6

    add-int/lit8 v4, v2, 0x2

    .line 42
    aget-byte v5, v1, v5

    int-to-char v6, v5

    add-int/lit8 v2, v2, 0xa

    move v5, v4

    move v4, v2

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    add-int/lit8 v6, v6, -0x30

    :goto_4
    if-ge v5, v4, :cond_8

    .line 43
    aget-byte v10, v1, v5

    int-to-char v10, v10

    if-ne v10, v7, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 44
    aget-byte v10, v1, v5

    int-to-char v10, v10

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    :cond_7
    add-int/lit8 v10, v10, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v10

    add-int/2addr v5, v9

    goto :goto_4

    :cond_8
    int-to-long v4, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v4, v10

    const/4 v6, 0x3

    const-wide/16 v12, 0x0

    move v14, v6

    .line 45
    :goto_5
    const-string v15, "BigInteger would overflow supported range"

    const/16 v16, 0x20

    if-ltz v14, :cond_d

    const-wide/32 v17, 0x3b9aca00

    if-eqz v14, :cond_c

    if-eq v14, v9, :cond_b

    if-eq v14, v8, :cond_a

    if-ne v14, v6, :cond_9

    .line 46
    iget v15, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    move-wide/from16 v19, v10

    int-to-long v10, v15

    and-long v10, v10, v19

    mul-long v17, v17, v10

    add-long v10, v17, v12

    long-to-int v12, v10

    .line 47
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    goto :goto_6

    .line 48
    :cond_9
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v15}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-wide/from16 v19, v10

    .line 49
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v10, v10

    and-long v10, v10, v19

    mul-long v17, v17, v10

    add-long v10, v17, v12

    long-to-int v12, v10

    .line 50
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    goto :goto_6

    :cond_b
    move-wide/from16 v19, v10

    .line 51
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    int-to-long v10, v10

    and-long v10, v10, v19

    mul-long v17, v17, v10

    add-long v10, v17, v12

    long-to-int v12, v10

    .line 52
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    goto :goto_6

    :cond_c
    move-wide/from16 v19, v10

    .line 53
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    int-to-long v10, v10

    and-long v10, v10, v19

    mul-long v17, v17, v10

    add-long v10, v17, v12

    long-to-int v12, v10

    .line 54
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    :goto_6
    ushr-long v12, v10, v16

    add-int/lit8 v14, v14, -0x1

    move-wide/from16 v10, v19

    goto :goto_5

    :cond_d
    move-wide/from16 v19, v10

    .line 55
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v10, v10

    and-long v10, v10, v19

    add-long/2addr v10, v4

    long-to-int v4, v10

    .line 56
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    ushr-long v4, v10, v16

    move v10, v8

    :goto_7
    if-ltz v10, :cond_5

    if-eqz v10, :cond_11

    if-eq v10, v9, :cond_10

    if-eq v10, v8, :cond_f

    if-ne v10, v6, :cond_e

    .line 57
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v11, v11

    and-long v11, v11, v19

    add-long/2addr v11, v4

    long-to-int v4, v11

    .line 58
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    goto :goto_8

    .line 59
    :cond_e
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v15}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_f
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v11, v11

    and-long v11, v11, v19

    add-long/2addr v11, v4

    long-to-int v4, v11

    .line 61
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    goto :goto_8

    .line 62
    :cond_10
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    int-to-long v11, v11

    and-long v11, v11, v19

    add-long/2addr v11, v4

    long-to-int v4, v11

    .line 63
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    goto :goto_8

    .line 64
    :cond_11
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    int-to-long v11, v11

    and-long v11, v11, v19

    add-long/2addr v11, v4

    long-to-int v4, v11

    .line 65
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    :goto_8
    ushr-long v4, v11, v16

    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    :cond_12
    return-void

    .line 66
    :cond_13
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number too large : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final bigInt([CII)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v3, v2

    .line 1
    iget-short v5, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    if-lez v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    :cond_0
    const/16 v5, 0x26

    if-gt v4, v5, :cond_13

    const/16 v5, 0x9

    .line 2
    rem-int/2addr v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    add-int v4, v2, v5

    add-int/lit8 v5, v2, 0x1

    .line 3
    aget-char v6, v1, v2

    const/16 v7, 0x2e

    const/4 v8, 0x2

    if-ne v6, v7, :cond_2

    add-int/2addr v2, v8

    .line 4
    aget-char v6, v1, v5

    add-int/lit8 v5, v4, 0x1

    move/from16 v19, v5

    move v5, v2

    move/from16 v2, v19

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    add-int/lit8 v6, v6, -0x30

    :goto_2
    const/4 v9, 0x1

    if-ge v5, v4, :cond_4

    .line 5
    aget-char v10, v1, v5

    if-ne v10, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 6
    aget-char v10, v1, v5

    add-int/lit8 v2, v2, 0x1

    if-ge v4, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v10, v10, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v10

    add-int/2addr v5, v9

    goto :goto_2

    .line 7
    :cond_4
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    :cond_5
    if-ge v2, v3, :cond_12

    add-int/lit8 v4, v2, 0x9

    add-int/lit8 v5, v2, 0x1

    .line 8
    aget-char v6, v1, v2

    if-ne v6, v7, :cond_6

    add-int/lit8 v4, v2, 0x2

    .line 9
    aget-char v6, v1, v5

    add-int/lit8 v2, v2, 0xa

    move v5, v4

    move v4, v2

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    add-int/lit8 v6, v6, -0x30

    :goto_4
    if-ge v5, v4, :cond_8

    .line 10
    aget-char v10, v1, v5

    if-ne v10, v7, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 11
    aget-char v10, v1, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    :cond_7
    add-int/lit8 v10, v10, -0x30

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v10

    add-int/2addr v5, v9

    goto :goto_4

    :cond_8
    const/4 v4, 0x3

    const-wide/16 v10, 0x0

    move v5, v4

    .line 12
    :goto_5
    const-string v12, "BigInteger would overflow supported range"

    if-ltz v5, :cond_d

    const-wide/32 v15, 0x3b9aca00

    if-eqz v5, :cond_c

    if-eq v5, v9, :cond_b

    if-eq v5, v8, :cond_a

    if-ne v5, v4, :cond_9

    .line 13
    iget v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    const/16 p2, 0x20

    const-wide v17, 0xffffffffL

    int-to-long v13, v12

    and-long v13, v13, v17

    mul-long/2addr v15, v13

    add-long/2addr v10, v15

    long-to-int v12, v10

    .line 14
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    goto :goto_6

    .line 15
    :cond_9
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v12}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const/16 p2, 0x20

    const-wide v17, 0xffffffffL

    .line 16
    iget v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v12, v12

    and-long v12, v12, v17

    mul-long/2addr v15, v12

    add-long/2addr v10, v15

    long-to-int v12, v10

    .line 17
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    goto :goto_6

    :cond_b
    const/16 p2, 0x20

    const-wide v17, 0xffffffffL

    .line 18
    iget v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    int-to-long v12, v12

    and-long v12, v12, v17

    mul-long/2addr v15, v12

    add-long/2addr v10, v15

    long-to-int v12, v10

    .line 19
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    goto :goto_6

    :cond_c
    const/16 p2, 0x20

    const-wide v17, 0xffffffffL

    .line 20
    iget v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    int-to-long v12, v12

    and-long v12, v12, v17

    mul-long/2addr v15, v12

    add-long/2addr v10, v15

    long-to-int v12, v10

    .line 21
    iput v12, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    :goto_6
    ushr-long v10, v10, p2

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_d
    const/16 p2, 0x20

    const-wide v17, 0xffffffffL

    int-to-long v5, v6

    and-long v5, v5, v17

    .line 22
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v10, v10

    and-long v10, v10, v17

    add-long/2addr v10, v5

    long-to-int v5, v10

    .line 23
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    ushr-long v5, v10, p2

    move v10, v8

    :goto_7
    if-ltz v10, :cond_5

    if-eqz v10, :cond_11

    if-eq v10, v9, :cond_10

    if-eq v10, v8, :cond_f

    if-ne v10, v4, :cond_e

    .line 24
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    int-to-long v13, v11

    and-long v13, v13, v17

    add-long/2addr v13, v5

    long-to-int v5, v13

    .line 25
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    goto :goto_8

    .line 26
    :cond_e
    new-instance v1, Ljava/lang/ArithmeticException;

    invoke-direct {v1, v12}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_f
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    int-to-long v13, v11

    and-long v13, v13, v17

    add-long/2addr v13, v5

    long-to-int v5, v13

    .line 28
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    goto :goto_8

    .line 29
    :cond_10
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    int-to-long v13, v11

    and-long v13, v13, v17

    add-long/2addr v13, v5

    long-to-int v5, v13

    .line 30
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    goto :goto_8

    .line 31
    :cond_11
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    int-to-long v13, v11

    and-long v13, v13, v17

    add-long/2addr v13, v5

    long-to-int v5, v13

    .line 32
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    :goto_8
    ushr-long v5, v13, p2

    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    :cond_12
    return-void

    .line 33
    :cond_13
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number too large : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final char1(I)C
    .locals 3

    .line 1
    .line 2
    const/16 v0, 0x22

    .line 3
    .line 4
    if-eq p1, v0, :cond_6

    .line 5
    .line 6
    const/16 v0, 0x23

    .line 7
    .line 8
    if-eq p1, v0, :cond_6

    .line 9
    .line 10
    const/16 v0, 0x40

    .line 11
    .line 12
    if-eq p1, v0, :cond_6

    .line 13
    .line 14
    const/16 v0, 0x46

    .line 15
    .line 16
    if-eq p1, v0, :cond_5

    .line 17
    .line 18
    const/16 v0, 0x5f

    .line 19
    .line 20
    if-eq p1, v0, :cond_6

    .line 21
    .line 22
    const/16 v0, 0x62

    .line 23
    .line 24
    if-eq p1, v0, :cond_4

    .line 25
    .line 26
    const/16 v0, 0x66

    .line 27
    .line 28
    if-eq p1, v0, :cond_5

    .line 29
    .line 30
    const/16 v0, 0x6e

    .line 31
    .line 32
    if-eq p1, v0, :cond_3

    .line 33
    .line 34
    const/16 v0, 0x72

    .line 35
    .line 36
    if-eq p1, v0, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x74

    .line 39
    .line 40
    if-eq p1, v0, :cond_1

    .line 41
    .line 42
    const/16 v0, 0x76

    .line 43
    .line 44
    if-eq p1, v0, :cond_0

    .line 45
    .line 46
    .line 47
    packed-switch p1, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    packed-switch p1, :pswitch_data_1

    .line 51
    .line 52
    .line 53
    packed-switch p1, :pswitch_data_2

    .line 54
    .line 55
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    const-string v2, "unclosed.str \'\\"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    int-to-char p1, p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 81
    throw v0

    .line 82
    :pswitch_0
    const/4 p1, 0x7

    .line 83
    return p1

    .line 84
    :pswitch_1
    const/4 p1, 0x6

    .line 85
    return p1

    .line 86
    :pswitch_2
    const/4 p1, 0x5

    .line 87
    return p1

    .line 88
    :pswitch_3
    const/4 p1, 0x4

    .line 89
    return p1

    .line 90
    :pswitch_4
    const/4 p1, 0x3

    .line 91
    return p1

    .line 92
    :pswitch_5
    const/4 p1, 0x2

    .line 93
    return p1

    .line 94
    :pswitch_6
    const/4 p1, 0x1

    .line 95
    return p1

    .line 96
    :pswitch_7
    const/4 p1, 0x0

    .line 97
    return p1

    .line 98
    .line 99
    :cond_0
    const/16 p1, 0xb

    .line 100
    return p1

    .line 101
    .line 102
    :cond_1
    const/16 p1, 0x9

    .line 103
    return p1

    .line 104
    .line 105
    :cond_2
    const/16 p1, 0xd

    .line 106
    return p1

    .line 107
    .line 108
    :cond_3
    const/16 p1, 0xa

    .line 109
    return p1

    .line 110
    .line 111
    :cond_4
    const/16 p1, 0x8

    .line 112
    return p1

    .line 113
    .line 114
    :cond_5
    const/16 p1, 0xc

    .line 115
    return p1

    .line 116
    :cond_6
    :pswitch_8
    int-to-char p1, p1

    .line 117
    return p1

    .line 118
    nop

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract close()V
.end method

.method public final current()C
    .locals 1

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    return v0
.end method

.method public final decimal(Lcom/alibaba/fastjson2/JSONObject;)Ljava/math/BigDecimal;
    .locals 3

    .line 1
    .line 2
    const-string v0, "value"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "$numberDecimal"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v2, "can not cast to decimal "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method public endArray()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 4
    return-void
.end method

.method public error()Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal ch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final error(II)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error, offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", char "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final error(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONException;
    .locals 1

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Exception;)Lcom/alibaba/fastjson2/JSONException;
    .locals 1

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final errorOnNoneSerializable(Ljava/lang/Class;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 9
    and-long/2addr v0, v2

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-class v0, Ljava/io/Serializable;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v2, "not support none-Serializable, class "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 51
    throw v0

    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public final features(J)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    or-long/2addr p1, v0

    .line 6
    return-wide p1
.end method

.method public final getBigDecimal()Ljava/math/BigDecimal;
    .locals 16

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v2

    .line 9
    .line 10
    :cond_0
    iget-byte v0, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 11
    .line 12
    const/16 v4, 0x20

    .line 13
    .line 14
    .line 15
    const-wide/32 v5, 0x7fffffff

    .line 16
    const/4 v7, 0x4

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v8, 0xffffffffL

    .line 22
    const/4 v10, 0x3

    .line 23
    const/4 v11, 0x0

    .line 24
    const/4 v12, 0x2

    .line 25
    const/4 v13, 0x1

    .line 26
    .line 27
    if-eq v0, v13, :cond_13

    .line 28
    .line 29
    if-eq v0, v12, :cond_8

    .line 30
    .line 31
    if-eq v0, v10, :cond_7

    .line 32
    .line 33
    if-eq v0, v7, :cond_5

    .line 34
    const/4 v2, 0x6

    .line 35
    .line 36
    const-string v3, "TODO : "

    .line 37
    .line 38
    if-eq v0, v2, :cond_2

    .line 39
    .line 40
    const/16 v2, 0x8

    .line 41
    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    .line 51
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-byte v3, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0

    .line 73
    .line 74
    :cond_2
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 77
    .line 78
    const-string v2, "value"

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 82
    move-result-object v2

    .line 83
    .line 84
    if-nez v2, :cond_3

    .line 85
    .line 86
    const-string v2, "$numberDecimal"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    :cond_3
    if-eqz v2, :cond_4

    .line 93
    return-object v2

    .line 94
    .line 95
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    iget-byte v3, v1, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 116
    throw v0

    .line 117
    .line 118
    :cond_5
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 119
    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 123
    return-object v0

    .line 124
    .line 125
    :cond_6
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 126
    return-object v0

    .line 127
    .line 128
    :cond_7
    :try_start_0
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 132
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .line 136
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    const-string v4, "read decimal error, value "

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    iget-object v4, v1, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v3

    .line 160
    .line 161
    .line 162
    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    throw v2

    .line 164
    .line 165
    :cond_8
    iget-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 166
    .line 167
    if-nez v0, :cond_c

    .line 168
    .line 169
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 170
    .line 171
    if-nez v0, :cond_c

    .line 172
    .line 173
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 174
    .line 175
    if-nez v0, :cond_c

    .line 176
    .line 177
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 178
    .line 179
    if-nez v0, :cond_a

    .line 180
    .line 181
    iget v14, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 182
    .line 183
    if-ltz v14, :cond_a

    .line 184
    .line 185
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 186
    .line 187
    if-eqz v0, :cond_9

    .line 188
    neg-int v14, v14

    .line 189
    :cond_9
    int-to-long v4, v14

    .line 190
    .line 191
    iget-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 192
    .line 193
    .line 194
    invoke-static {v4, v5, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 195
    move-result-object v2

    .line 196
    goto :goto_0

    .line 197
    .line 198
    :cond_a
    iget v14, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 199
    int-to-long v14, v14

    .line 200
    and-long/2addr v14, v8

    .line 201
    int-to-long v2, v0

    .line 202
    and-long/2addr v2, v8

    .line 203
    .line 204
    cmp-long v0, v2, v5

    .line 205
    .line 206
    if-gtz v0, :cond_c

    .line 207
    shl-long/2addr v2, v4

    .line 208
    add-long/2addr v2, v14

    .line 209
    .line 210
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 211
    .line 212
    if-eqz v0, :cond_b

    .line 213
    neg-long v2, v2

    .line 214
    .line 215
    :cond_b
    iget-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 216
    .line 217
    .line 218
    invoke-static {v2, v3, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 219
    move-result-object v2

    .line 220
    goto :goto_0

    .line 221
    :cond_c
    const/4 v2, 0x0

    .line 222
    .line 223
    :goto_0
    if-nez v2, :cond_11

    .line 224
    .line 225
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 226
    .line 227
    if-nez v0, :cond_f

    .line 228
    .line 229
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 230
    .line 231
    if-nez v0, :cond_e

    .line 232
    .line 233
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 234
    .line 235
    if-nez v0, :cond_d

    .line 236
    .line 237
    new-array v0, v13, [I

    .line 238
    .line 239
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 240
    .line 241
    aput v2, v0, v11

    .line 242
    goto :goto_2

    .line 243
    .line 244
    :cond_d
    new-array v2, v12, [I

    .line 245
    .line 246
    aput v0, v2, v11

    .line 247
    .line 248
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 249
    .line 250
    aput v0, v2, v13

    .line 251
    :goto_1
    move-object v0, v2

    .line 252
    goto :goto_2

    .line 253
    .line 254
    :cond_e
    new-array v2, v10, [I

    .line 255
    .line 256
    aput v0, v2, v11

    .line 257
    .line 258
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 259
    .line 260
    aput v0, v2, v13

    .line 261
    .line 262
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 263
    .line 264
    aput v0, v2, v12

    .line 265
    goto :goto_1

    .line 266
    .line 267
    :cond_f
    new-array v2, v7, [I

    .line 268
    .line 269
    aput v0, v2, v11

    .line 270
    .line 271
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 272
    .line 273
    aput v0, v2, v13

    .line 274
    .line 275
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 276
    .line 277
    aput v0, v2, v12

    .line 278
    .line 279
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 280
    .line 281
    aput v0, v2, v10

    .line 282
    goto :goto_1

    .line 283
    .line 284
    :goto_2
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 285
    .line 286
    if-eqz v2, :cond_10

    .line 287
    const/4 v3, -0x1

    .line 288
    goto :goto_3

    .line 289
    :cond_10
    move v3, v13

    .line 290
    .line 291
    :goto_3
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Lcom/alibaba/fastjson2/function/BiFunction;

    .line 292
    .line 293
    .line 294
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    move-result-object v3

    .line 296
    .line 297
    .line 298
    invoke-interface {v2, v3, v0}, Lcom/alibaba/fastjson2/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-result-object v0

    .line 300
    .line 301
    check-cast v0, Ljava/math/BigInteger;

    .line 302
    .line 303
    new-instance v2, Ljava/math/BigDecimal;

    .line 304
    .line 305
    iget-short v3, v1, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 306
    .line 307
    .line 308
    invoke-direct {v2, v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 309
    .line 310
    :cond_11
    iget-short v0, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 311
    .line 312
    if-eqz v0, :cond_12

    .line 313
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 321
    move-result-object v2

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v2, "E"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    iget-short v2, v1, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 339
    .line 340
    .line 341
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 342
    move-result-wide v2

    .line 343
    .line 344
    .line 345
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(D)Ljava/math/BigDecimal;

    .line 346
    move-result-object v0

    .line 347
    return-object v0

    .line 348
    :cond_12
    return-object v2

    .line 349
    .line 350
    :cond_13
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 351
    .line 352
    if-nez v0, :cond_15

    .line 353
    .line 354
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 355
    .line 356
    if-nez v2, :cond_15

    .line 357
    .line 358
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 359
    .line 360
    if-ltz v2, :cond_15

    .line 361
    .line 362
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 363
    .line 364
    if-eqz v0, :cond_14

    .line 365
    neg-int v0, v2

    .line 366
    int-to-long v2, v0

    .line 367
    goto :goto_4

    .line 368
    :cond_14
    int-to-long v2, v2

    .line 369
    .line 370
    .line 371
    :goto_4
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 372
    move-result-object v0

    .line 373
    return-object v0

    .line 374
    .line 375
    :cond_15
    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 376
    .line 377
    if-nez v2, :cond_19

    .line 378
    .line 379
    if-nez v0, :cond_18

    .line 380
    .line 381
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 382
    int-to-long v2, v0

    .line 383
    and-long/2addr v2, v8

    .line 384
    .line 385
    iget v7, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 386
    int-to-long v14, v7

    .line 387
    and-long/2addr v8, v14

    .line 388
    .line 389
    cmp-long v5, v8, v5

    .line 390
    .line 391
    if-gtz v5, :cond_17

    .line 392
    .line 393
    shl-long v4, v8, v4

    .line 394
    add-long/2addr v4, v2

    .line 395
    .line 396
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 397
    .line 398
    if-eqz v0, :cond_16

    .line 399
    neg-long v4, v4

    .line 400
    .line 401
    .line 402
    :cond_16
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 403
    move-result-object v0

    .line 404
    return-object v0

    .line 405
    .line 406
    :cond_17
    new-array v2, v12, [I

    .line 407
    .line 408
    aput v7, v2, v11

    .line 409
    .line 410
    aput v0, v2, v13

    .line 411
    goto :goto_5

    .line 412
    .line 413
    :cond_18
    new-array v2, v10, [I

    .line 414
    .line 415
    aput v0, v2, v11

    .line 416
    .line 417
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 418
    .line 419
    aput v0, v2, v13

    .line 420
    .line 421
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 422
    .line 423
    aput v0, v2, v12

    .line 424
    goto :goto_5

    .line 425
    .line 426
    :cond_19
    new-array v3, v7, [I

    .line 427
    .line 428
    aput v2, v3, v11

    .line 429
    .line 430
    aput v0, v3, v13

    .line 431
    .line 432
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 433
    .line 434
    aput v0, v3, v12

    .line 435
    .line 436
    iget v0, v1, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 437
    .line 438
    aput v0, v3, v10

    .line 439
    move-object v2, v3

    .line 440
    .line 441
    :goto_5
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 442
    .line 443
    if-eqz v0, :cond_1a

    .line 444
    const/4 v3, -0x1

    .line 445
    goto :goto_6

    .line 446
    :cond_1a
    move v3, v13

    .line 447
    .line 448
    :goto_6
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Lcom/alibaba/fastjson2/function/BiFunction;

    .line 449
    .line 450
    .line 451
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    move-result-object v3

    .line 453
    .line 454
    .line 455
    invoke-interface {v0, v3, v2}, Lcom/alibaba/fastjson2/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    move-result-object v0

    .line 457
    .line 458
    check-cast v0, Ljava/math/BigInteger;

    .line 459
    .line 460
    new-instance v2, Ljava/math/BigDecimal;

    .line 461
    .line 462
    .line 463
    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 464
    return-object v2
.end method

.method public final getBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    instance-of v1, v0, Ljava/math/BigInteger;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Ljava/math/BigInteger;

    .line 15
    return-object v0

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 19
    move-result-wide v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public final getContext()Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    return-object v0
.end method

.method public final getDoubleValue()D
    .locals 10

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v2, "TODO : "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0

    .line 36
    .line 37
    :pswitch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 38
    return-wide v0

    .line 39
    .line 40
    .line 41
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getBigDecimal()Ljava/math/BigDecimal;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 46
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return-wide v0

    .line 48
    .line 49
    .line 50
    :catch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->numberError()Lcom/alibaba/fastjson2/JSONException;

    .line 51
    move-result-object v0

    .line 52
    throw v0

    .line 53
    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Ljava/util/Collection;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    move-result v0

    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toDoubleValue(Ljava/lang/Object;)D

    .line 71
    move-result-wide v0

    .line 72
    return-wide v0

    .line 73
    .line 74
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 75
    return-wide v4

    .line 76
    .line 77
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Ljava/util/Map;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 85
    move-result v1

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    goto :goto_1

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toDoubleValue(Ljava/lang/Object;)D

    .line 92
    move-result-wide v0

    .line 93
    return-wide v0

    .line 94
    .line 95
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 96
    return-wide v4

    .line 97
    .line 98
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 99
    .line 100
    iget-wide v6, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 101
    .line 102
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 103
    .line 104
    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 105
    and-long/2addr v6, v8

    .line 106
    .line 107
    cmp-long v0, v6, v1

    .line 108
    .line 109
    if-nez v0, :cond_4

    .line 110
    return-wide v4

    .line 111
    .line 112
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 113
    .line 114
    const-string v1, "long value not support input null"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    .line 121
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 122
    throw v0

    .line 123
    .line 124
    :pswitch_5
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 125
    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 129
    return-wide v0

    .line 130
    :cond_5
    return-wide v4

    .line 131
    .line 132
    :pswitch_6
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toDoubleValue(Ljava/lang/Object;)D

    .line 136
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    return-wide v0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    .line 140
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    .line 150
    .line 151
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 152
    throw v1

    .line 153
    .line 154
    .line 155
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 160
    move-result-wide v0

    .line 161
    return-wide v0

    .line 162
    .line 163
    :pswitch_8
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 164
    .line 165
    if-nez v0, :cond_7

    .line 166
    .line 167
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 168
    .line 169
    if-nez v0, :cond_7

    .line 170
    .line 171
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 172
    .line 173
    const/high16 v3, -0x80000000

    .line 174
    .line 175
    if-eq v0, v3, :cond_7

    .line 176
    .line 177
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 178
    .line 179
    if-eqz v1, :cond_6

    .line 180
    neg-int v0, v0

    .line 181
    int-to-double v0, v0

    .line 182
    return-wide v0

    .line 183
    :cond_6
    int-to-double v0, v0

    .line 184
    return-wide v0

    .line 185
    .line 186
    .line 187
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    instance-of v3, v0, Ljava/math/BigInteger;

    .line 191
    .line 192
    if-eqz v3, :cond_9

    .line 193
    .line 194
    check-cast v0, Ljava/math/BigInteger;

    .line 195
    .line 196
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 197
    .line 198
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 199
    .line 200
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonErrorOnNumberOverflow:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 201
    .line 202
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 203
    and-long/2addr v3, v5

    .line 204
    .line 205
    cmp-long v1, v3, v1

    .line 206
    .line 207
    if-eqz v1, :cond_8

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    .line 211
    move-result-wide v0

    .line 212
    long-to-double v0, v0

    .line 213
    return-wide v0

    .line 214
    .line 215
    .line 216
    :cond_8
    :try_start_2
    invoke-static {v0}, Lcom/alibaba/fastjson2/p;->a(Ljava/math/BigInteger;)J

    .line 217
    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_2

    .line 218
    long-to-double v0, v0

    .line 219
    return-wide v0

    .line 220
    .line 221
    .line 222
    :catch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->numberError()Lcom/alibaba/fastjson2/JSONException;

    .line 223
    move-result-object v0

    .line 224
    throw v0

    .line 225
    .line 226
    .line 227
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 228
    move-result-wide v0

    .line 229
    return-wide v0

    .line 230
    nop

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getFieldName()Ljava/lang/String;
.end method

.method public final getFloatValue()F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getDoubleValue()D

    .line 4
    move-result-wide v0

    .line 5
    double-to-float v0, v0

    .line 6
    return v0
.end method

.method public final getInt32Value()I
    .locals 9

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const-string v2, "integer overflow "

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    .line 10
    const-wide/32 v5, 0x7fffffff

    .line 11
    .line 12
    .line 13
    const-wide/32 v7, -0x80000000

    .line 14
    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v2, "TODO : "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0

    .line 42
    .line 43
    .line 44
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 49
    move-result-wide v0

    .line 50
    .line 51
    cmp-long v7, v0, v7

    .line 52
    .line 53
    if-ltz v7, :cond_0

    .line 54
    .line 55
    cmp-long v5, v0, v5

    .line 56
    .line 57
    if-lez v5, :cond_1

    .line 58
    .line 59
    :cond_0
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 60
    .line 61
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 62
    .line 63
    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonErrorOnNumberOverflow:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 64
    .line 65
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 66
    and-long/2addr v5, v7

    .line 67
    .line 68
    cmp-long v3, v5, v3

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    :cond_1
    long-to-int v0, v0

    .line 72
    return v0

    .line 73
    .line 74
    :cond_2
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    .line 75
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    .line 95
    .line 96
    invoke-direct {v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 97
    throw v3

    .line 98
    .line 99
    .line 100
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getBigDecimal()Ljava/math/BigDecimal;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 105
    move-result v0

    .line 106
    return v0

    .line 107
    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Ljava/util/List;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toInt(Ljava/util/List;)I

    .line 114
    move-result v0

    .line 115
    return v0

    .line 116
    .line 117
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toNumber(Ljava/util/Map;)Ljava/lang/Number;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 129
    move-result v0

    .line 130
    return v0

    .line 131
    :cond_3
    return v1

    .line 132
    .line 133
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 134
    .line 135
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 136
    .line 137
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 138
    .line 139
    iget-wide v7, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 140
    and-long/2addr v5, v7

    .line 141
    .line 142
    cmp-long v0, v5, v3

    .line 143
    .line 144
    if-nez v0, :cond_4

    .line 145
    return v1

    .line 146
    .line 147
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 148
    .line 149
    const-string v1, "int value not support input null"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    .line 155
    .line 156
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 157
    throw v0

    .line 158
    .line 159
    :pswitch_5
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 160
    return v0

    .line 161
    .line 162
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toInt32(Ljava/lang/String;)I

    .line 166
    move-result v0

    .line 167
    return v0

    .line 168
    .line 169
    .line 170
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 175
    move-result v0

    .line 176
    return v0

    .line 177
    .line 178
    :pswitch_8
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 179
    .line 180
    if-nez v0, :cond_6

    .line 181
    .line 182
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 183
    .line 184
    if-nez v0, :cond_6

    .line 185
    .line 186
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 187
    .line 188
    const/high16 v1, -0x80000000

    .line 189
    .line 190
    if-eq v0, v1, :cond_6

    .line 191
    .line 192
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 193
    .line 194
    if-eqz v1, :cond_5

    .line 195
    neg-int v0, v0

    .line 196
    :cond_5
    return v0

    .line 197
    .line 198
    .line 199
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    instance-of v1, v0, Ljava/lang/Long;

    .line 203
    .line 204
    if-eqz v1, :cond_8

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 208
    move-result-wide v0

    .line 209
    .line 210
    cmp-long v3, v0, v7

    .line 211
    .line 212
    if-ltz v3, :cond_7

    .line 213
    .line 214
    cmp-long v3, v0, v5

    .line 215
    .line 216
    if-gtz v3, :cond_7

    .line 217
    long-to-int v0, v0

    .line 218
    return v0

    .line 219
    .line 220
    :cond_7
    new-instance v3, Lcom/alibaba/fastjson2/JSONException;

    .line 221
    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    .line 242
    invoke-direct {v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 243
    throw v3

    .line 244
    .line 245
    :cond_8
    instance-of v1, v0, Ljava/math/BigInteger;

    .line 246
    .line 247
    if-eqz v1, :cond_9

    .line 248
    .line 249
    check-cast v0, Ljava/math/BigInteger;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    .line 253
    move-result v0

    .line 254
    return v0

    .line 255
    .line 256
    .line 257
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 258
    move-result v0

    .line 259
    return v0

    .line 260
    nop

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getInt64Value()J
    .locals 7

    .line 1
    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "TODO : "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    iget-byte v2, p0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    .line 34
    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 40
    move-result-wide v0

    .line 41
    return-wide v0

    .line 42
    .line 43
    .line 44
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getBigDecimal()Ljava/math/BigDecimal;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    .line 49
    move-result-wide v0

    .line 50
    return-wide v0

    .line 51
    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Ljava/util/List;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toInt(Ljava/util/List;)I

    .line 58
    move-result v0

    .line 59
    int-to-long v0, v0

    .line 60
    return-wide v0

    .line 61
    .line 62
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toLong(Ljava/util/Map;)J

    .line 68
    move-result-wide v0

    .line 69
    return-wide v0

    .line 70
    .line 71
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 72
    .line 73
    iget-wide v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 74
    .line 75
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNullForPrimitives:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 76
    .line 77
    iget-wide v5, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 78
    and-long/2addr v3, v5

    .line 79
    .line 80
    cmp-long v0, v3, v1

    .line 81
    .line 82
    if-nez v0, :cond_0

    .line 83
    return-wide v1

    .line 84
    .line 85
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 86
    .line 87
    const-string v1, "long value not support input null"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    .line 93
    .line 94
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v0

    .line 96
    .line 97
    :pswitch_5
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 98
    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    const-wide/16 v0, 0x1

    .line 102
    return-wide v0

    .line 103
    :cond_1
    return-wide v1

    .line 104
    .line 105
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toInt64(Ljava/lang/String;)J

    .line 109
    move-result-wide v0

    .line 110
    return-wide v0

    .line 111
    .line 112
    .line 113
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 118
    move-result-wide v0

    .line 119
    return-wide v0

    .line 120
    .line 121
    :pswitch_8
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 122
    .line 123
    if-nez v0, :cond_3

    .line 124
    .line 125
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 126
    .line 127
    if-nez v0, :cond_3

    .line 128
    .line 129
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 130
    .line 131
    const/high16 v1, -0x80000000

    .line 132
    .line 133
    if-eq v0, v1, :cond_3

    .line 134
    .line 135
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 136
    .line 137
    if-eqz v1, :cond_2

    .line 138
    neg-int v0, v0

    .line 139
    int-to-long v0, v0

    .line 140
    return-wide v0

    .line 141
    :cond_2
    int-to-long v0, v0

    .line 142
    return-wide v0

    .line 143
    .line 144
    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    instance-of v1, v0, Ljava/math/BigInteger;

    .line 149
    .line 150
    if-eqz v1, :cond_4

    .line 151
    .line 152
    check-cast v0, Ljava/math/BigInteger;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    .line 156
    move-result-wide v0

    .line 157
    return-wide v0

    .line 158
    .line 159
    .line 160
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 161
    move-result-wide v0

    .line 162
    return-wide v0

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getLocale()Ljava/util/Locale;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public abstract getNameHashCodeLCase()J
.end method

.method public final getNumber()Ljava/lang/Number;
    .locals 22

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    return-object v2

    .line 9
    .line 10
    :cond_0
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 11
    .line 12
    const-string v6, "shortValue overflow"

    .line 13
    const/4 v7, -0x1

    .line 14
    const/4 v8, 0x4

    .line 15
    .line 16
    const-string v9, "E"

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v10, 0xffffffffL

    .line 22
    const/4 v12, 0x3

    .line 23
    .line 24
    const-wide/16 v13, 0x0

    .line 25
    const/4 v15, 0x2

    .line 26
    .line 27
    const/16 v16, 0x0

    .line 28
    .line 29
    move-object/from16 v17, v2

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    .line 33
    packed-switch v1, :pswitch_data_0

    .line 34
    .line 35
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v3, "TODO : "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget-byte v3, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 58
    throw v1

    .line 59
    .line 60
    :pswitch_0
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    new-array v1, v2, [I

    .line 73
    .line 74
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 75
    .line 76
    aput v3, v1, v16

    .line 77
    goto :goto_1

    .line 78
    .line 79
    :cond_1
    new-array v3, v15, [I

    .line 80
    .line 81
    aput v1, v3, v16

    .line 82
    .line 83
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 84
    .line 85
    aput v1, v3, v2

    .line 86
    :goto_0
    move-object v1, v3

    .line 87
    goto :goto_1

    .line 88
    .line 89
    :cond_2
    new-array v3, v12, [I

    .line 90
    .line 91
    aput v1, v3, v16

    .line 92
    .line 93
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 94
    .line 95
    aput v1, v3, v2

    .line 96
    .line 97
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 98
    .line 99
    aput v1, v3, v15

    .line 100
    goto :goto_0

    .line 101
    .line 102
    :cond_3
    new-array v3, v8, [I

    .line 103
    .line 104
    aput v1, v3, v16

    .line 105
    .line 106
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 107
    .line 108
    aput v1, v3, v2

    .line 109
    .line 110
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 111
    .line 112
    aput v1, v3, v15

    .line 113
    .line 114
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 115
    .line 116
    aput v1, v3, v12

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :goto_1
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 120
    .line 121
    if-eqz v3, :cond_4

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    move v7, v2

    .line 124
    .line 125
    :goto_2
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Lcom/alibaba/fastjson2/function/BiFunction;

    .line 126
    .line 127
    .line 128
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    .line 132
    invoke-interface {v2, v3, v1}, Lcom/alibaba/fastjson2/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    check-cast v1, Ljava/math/BigInteger;

    .line 136
    .line 137
    new-instance v2, Ljava/math/BigDecimal;

    .line 138
    .line 139
    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 140
    .line 141
    .line 142
    invoke-direct {v2, v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 143
    .line 144
    iget-byte v1, v0, Lcom/alibaba/fastjson2/JSONReader;->valueType:B

    .line 145
    .line 146
    const/16 v3, 0xc

    .line 147
    .line 148
    if-ne v1, v3, :cond_6

    .line 149
    .line 150
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 151
    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    iget-short v2, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    .line 175
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 176
    move-result v1

    .line 177
    .line 178
    .line 179
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 180
    move-result-object v1

    .line 181
    return-object v1

    .line 182
    .line 183
    .line 184
    :cond_5
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    .line 185
    move-result v1

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 189
    move-result-object v1

    .line 190
    return-object v1

    .line 191
    .line 192
    :cond_6
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 193
    .line 194
    if-eqz v1, :cond_7

    .line 195
    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    iget-short v2, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    .line 217
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 218
    move-result-wide v1

    .line 219
    .line 220
    .line 221
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 222
    move-result-object v1

    .line 223
    return-object v1

    .line 224
    .line 225
    .line 226
    :cond_7
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    .line 227
    move-result-wide v1

    .line 228
    .line 229
    .line 230
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 231
    move-result-object v1

    .line 232
    return-object v1

    .line 233
    .line 234
    :pswitch_1
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 235
    .line 236
    if-nez v1, :cond_9

    .line 237
    .line 238
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 239
    .line 240
    if-nez v1, :cond_9

    .line 241
    .line 242
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 243
    .line 244
    if-nez v1, :cond_9

    .line 245
    .line 246
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 247
    .line 248
    if-ltz v1, :cond_9

    .line 249
    .line 250
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 251
    .line 252
    if-eqz v2, :cond_8

    .line 253
    neg-int v1, v1

    .line 254
    :cond_8
    int-to-short v1, v1

    .line 255
    .line 256
    .line 257
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 258
    move-result-object v1

    .line 259
    return-object v1

    .line 260
    .line 261
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    move-result-object v2

    .line 266
    .line 267
    .line 268
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 269
    throw v1

    .line 270
    .line 271
    :pswitch_2
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 272
    .line 273
    if-nez v1, :cond_b

    .line 274
    .line 275
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 276
    .line 277
    if-nez v1, :cond_b

    .line 278
    .line 279
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 280
    .line 281
    if-nez v1, :cond_b

    .line 282
    .line 283
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 284
    .line 285
    if-ltz v1, :cond_b

    .line 286
    .line 287
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 288
    .line 289
    if-eqz v2, :cond_a

    .line 290
    neg-int v1, v1

    .line 291
    :cond_a
    int-to-byte v1, v1

    .line 292
    .line 293
    .line 294
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 295
    move-result-object v1

    .line 296
    return-object v1

    .line 297
    .line 298
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    move-result-object v2

    .line 303
    .line 304
    .line 305
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 306
    throw v1

    .line 307
    .line 308
    :pswitch_3
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 309
    .line 310
    if-lez v1, :cond_d

    .line 311
    .line 312
    sget v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultDecimalMaxScale:I

    .line 313
    .line 314
    if-gt v1, v2, :cond_c

    .line 315
    .line 316
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 320
    move-result-object v1

    .line 321
    return-object v1

    .line 322
    .line 323
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 324
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    const-string v3, "scale overflow : "

    .line 331
    .line 332
    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    move-result-object v2

    .line 343
    .line 344
    .line 345
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 346
    throw v1

    .line 347
    .line 348
    :cond_d
    new-instance v1, Ljava/math/BigInteger;

    .line 349
    .line 350
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 354
    return-object v1

    .line 355
    .line 356
    :pswitch_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v1, Ljava/util/List;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->toNumber(Ljava/util/List;)Ljava/lang/Number;

    .line 362
    move-result-object v1

    .line 363
    return-object v1

    .line 364
    .line 365
    :pswitch_5
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->complex:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v1, Ljava/util/Map;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->toNumber(Ljava/util/Map;)Ljava/lang/Number;

    .line 371
    move-result-object v1

    .line 372
    return-object v1

    .line 373
    :pswitch_6
    return-object v17

    .line 374
    .line 375
    :pswitch_7
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 376
    .line 377
    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    move-result-object v1

    .line 380
    return-object v1

    .line 381
    .line 382
    :pswitch_8
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->stringValue:Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->toInt64(Ljava/lang/String;)J

    .line 386
    move-result-wide v1

    .line 387
    .line 388
    .line 389
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 390
    move-result-object v1

    .line 391
    return-object v1

    .line 392
    .line 393
    :pswitch_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 394
    .line 395
    if-nez v1, :cond_11

    .line 396
    .line 397
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 398
    .line 399
    if-nez v1, :cond_11

    .line 400
    .line 401
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 402
    .line 403
    if-nez v1, :cond_f

    .line 404
    .line 405
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 406
    .line 407
    if-ltz v6, :cond_f

    .line 408
    .line 409
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 410
    .line 411
    if-eqz v1, :cond_e

    .line 412
    neg-int v6, v6

    .line 413
    :cond_e
    int-to-long v3, v6

    .line 414
    .line 415
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 416
    .line 417
    .line 418
    invoke-static {v3, v4, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 419
    move-result-object v1

    .line 420
    .line 421
    move/from16 v18, v2

    .line 422
    move-object v2, v1

    .line 423
    goto :goto_3

    .line 424
    .line 425
    :cond_f
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 426
    .line 427
    move/from16 v18, v2

    .line 428
    .line 429
    const/16 v19, 0x20

    .line 430
    int-to-long v2, v6

    .line 431
    and-long/2addr v2, v10

    .line 432
    .line 433
    .line 434
    const-wide/32 v20, 0x7fffffff

    .line 435
    int-to-long v4, v1

    .line 436
    and-long/2addr v4, v10

    .line 437
    .line 438
    cmp-long v1, v4, v20

    .line 439
    .line 440
    if-gtz v1, :cond_12

    .line 441
    .line 442
    shl-long v4, v4, v19

    .line 443
    add-long/2addr v4, v2

    .line 444
    .line 445
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 446
    .line 447
    if-eqz v1, :cond_10

    .line 448
    neg-long v4, v4

    .line 449
    .line 450
    :cond_10
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 451
    .line 452
    .line 453
    invoke-static {v4, v5, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .line 454
    move-result-object v2

    .line 455
    goto :goto_3

    .line 456
    .line 457
    :cond_11
    move/from16 v18, v2

    .line 458
    .line 459
    :cond_12
    move-object/from16 v2, v17

    .line 460
    .line 461
    :goto_3
    if-nez v2, :cond_17

    .line 462
    .line 463
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 464
    .line 465
    if-nez v1, :cond_14

    .line 466
    .line 467
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 468
    .line 469
    if-nez v1, :cond_13

    .line 470
    .line 471
    new-array v1, v15, [I

    .line 472
    .line 473
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 474
    .line 475
    aput v2, v1, v16

    .line 476
    .line 477
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 478
    .line 479
    aput v2, v1, v18

    .line 480
    goto :goto_5

    .line 481
    .line 482
    :cond_13
    new-array v2, v12, [I

    .line 483
    .line 484
    aput v1, v2, v16

    .line 485
    .line 486
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 487
    .line 488
    aput v1, v2, v18

    .line 489
    .line 490
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 491
    .line 492
    aput v1, v2, v15

    .line 493
    :goto_4
    move-object v1, v2

    .line 494
    goto :goto_5

    .line 495
    .line 496
    :cond_14
    new-array v2, v8, [I

    .line 497
    .line 498
    aput v1, v2, v16

    .line 499
    .line 500
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 501
    .line 502
    aput v1, v2, v18

    .line 503
    .line 504
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 505
    .line 506
    aput v1, v2, v15

    .line 507
    .line 508
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 509
    .line 510
    aput v1, v2, v12

    .line 511
    goto :goto_4

    .line 512
    .line 513
    :goto_5
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 514
    .line 515
    if-eqz v2, :cond_15

    .line 516
    goto :goto_6

    .line 517
    .line 518
    :cond_15
    move/from16 v7, v18

    .line 519
    .line 520
    :goto_6
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Lcom/alibaba/fastjson2/function/BiFunction;

    .line 521
    .line 522
    .line 523
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    move-result-object v3

    .line 525
    .line 526
    .line 527
    invoke-interface {v2, v3, v1}, Lcom/alibaba/fastjson2/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    move-result-object v1

    .line 529
    .line 530
    check-cast v1, Ljava/math/BigInteger;

    .line 531
    .line 532
    iget-short v2, v0, Lcom/alibaba/fastjson2/JSONReader;->scale:S

    .line 533
    .line 534
    iget-short v3, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 535
    sub-int/2addr v2, v3

    .line 536
    .line 537
    new-instance v3, Ljava/math/BigDecimal;

    .line 538
    .line 539
    .line 540
    invoke-direct {v3, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 541
    .line 542
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 543
    .line 544
    if-eqz v1, :cond_16

    .line 545
    .line 546
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 547
    .line 548
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 549
    .line 550
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 551
    .line 552
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 553
    .line 554
    sget-object v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 555
    .line 556
    iget-wide v6, v6, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 557
    or-long/2addr v4, v6

    .line 558
    and-long/2addr v1, v4

    .line 559
    .line 560
    cmp-long v1, v1, v13

    .line 561
    .line 562
    if-nez v1, :cond_16

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    .line 566
    move-result-wide v1

    .line 567
    .line 568
    .line 569
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 570
    move-result-object v1

    .line 571
    return-object v1

    .line 572
    :cond_16
    move-object v2, v3

    .line 573
    .line 574
    :cond_17
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 575
    .line 576
    if-eqz v1, :cond_1a

    .line 577
    .line 578
    .line 579
    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 580
    move-result-object v1

    .line 581
    .line 582
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 583
    .line 584
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 585
    .line 586
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForDoubles:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 587
    .line 588
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 589
    .line 590
    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigDecimalForFloats:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 591
    .line 592
    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 593
    or-long/2addr v5, v7

    .line 594
    and-long/2addr v3, v5

    .line 595
    .line 596
    cmp-long v3, v3, v13

    .line 597
    .line 598
    if-nez v3, :cond_18

    .line 599
    .line 600
    new-instance v2, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 612
    .line 613
    .line 614
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    move-result-object v1

    .line 619
    .line 620
    .line 621
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 622
    move-result-wide v1

    .line 623
    .line 624
    .line 625
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 626
    move-result-object v1

    .line 627
    return-object v1

    .line 628
    .line 629
    .line 630
    :cond_18
    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    .line 631
    move-result v2

    .line 632
    .line 633
    if-nez v2, :cond_19

    .line 634
    .line 635
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 636
    return-object v1

    .line 637
    .line 638
    :cond_19
    new-instance v2, Ljava/math/BigDecimal;

    .line 639
    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    iget-short v1, v0, Lcom/alibaba/fastjson2/JSONReader;->exponent:S

    .line 652
    .line 653
    .line 654
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    move-result-object v1

    .line 659
    .line 660
    .line 661
    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 662
    return-object v2

    .line 663
    .line 664
    :cond_1a
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 665
    .line 666
    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 667
    .line 668
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseDoubleForDecimals:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 669
    .line 670
    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 671
    and-long/2addr v3, v5

    .line 672
    .line 673
    cmp-long v1, v3, v13

    .line 674
    .line 675
    if-eqz v1, :cond_1b

    .line 676
    .line 677
    .line 678
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    .line 679
    move-result-wide v1

    .line 680
    .line 681
    .line 682
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 683
    move-result-object v1

    .line 684
    return-object v1

    .line 685
    :cond_1b
    return-object v2

    .line 686
    .line 687
    :pswitch_a
    move/from16 v18, v2

    .line 688
    .line 689
    const/16 v19, 0x20

    .line 690
    .line 691
    .line 692
    const-wide/32 v20, 0x7fffffff

    .line 693
    .line 694
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag0:I

    .line 695
    .line 696
    if-nez v2, :cond_24

    .line 697
    .line 698
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 699
    .line 700
    if-nez v3, :cond_24

    .line 701
    .line 702
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 703
    .line 704
    if-nez v3, :cond_24

    .line 705
    .line 706
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 707
    .line 708
    const/high16 v4, -0x80000000

    .line 709
    .line 710
    if-eq v3, v4, :cond_24

    .line 711
    .line 712
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 713
    .line 714
    if-eqz v2, :cond_1e

    .line 715
    .line 716
    if-gez v3, :cond_1d

    .line 717
    int-to-long v1, v3

    .line 718
    and-long/2addr v1, v10

    .line 719
    neg-long v1, v1

    .line 720
    .line 721
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 722
    .line 723
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 724
    .line 725
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigIntegerForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 726
    .line 727
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 728
    and-long/2addr v3, v5

    .line 729
    .line 730
    cmp-long v3, v3, v13

    .line 731
    .line 732
    if-eqz v3, :cond_1c

    .line 733
    .line 734
    .line 735
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 736
    move-result-object v1

    .line 737
    return-object v1

    .line 738
    .line 739
    .line 740
    :cond_1c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 741
    move-result-object v1

    .line 742
    return-object v1

    .line 743
    :cond_1d
    neg-int v3, v3

    .line 744
    goto :goto_7

    .line 745
    .line 746
    :cond_1e
    if-gez v3, :cond_20

    .line 747
    int-to-long v1, v3

    .line 748
    and-long/2addr v1, v10

    .line 749
    .line 750
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 751
    .line 752
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 753
    .line 754
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigIntegerForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 755
    .line 756
    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 757
    and-long/2addr v3, v5

    .line 758
    .line 759
    cmp-long v3, v3, v13

    .line 760
    .line 761
    if-eqz v3, :cond_1f

    .line 762
    .line 763
    .line 764
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 765
    move-result-object v1

    .line 766
    return-object v1

    .line 767
    .line 768
    .line 769
    :cond_1f
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 770
    move-result-object v1

    .line 771
    return-object v1

    .line 772
    .line 773
    :cond_20
    :goto_7
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 774
    .line 775
    iget-wide v4, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 776
    .line 777
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigIntegerForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 778
    .line 779
    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 780
    and-long/2addr v6, v4

    .line 781
    .line 782
    cmp-long v2, v6, v13

    .line 783
    .line 784
    if-eqz v2, :cond_21

    .line 785
    int-to-long v1, v3

    .line 786
    .line 787
    .line 788
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 789
    move-result-object v1

    .line 790
    return-object v1

    .line 791
    .line 792
    :cond_21
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseLongForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 793
    .line 794
    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 795
    and-long/2addr v4, v6

    .line 796
    .line 797
    cmp-long v2, v4, v13

    .line 798
    .line 799
    if-eqz v2, :cond_22

    .line 800
    int-to-long v1, v3

    .line 801
    .line 802
    .line 803
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 804
    move-result-object v1

    .line 805
    return-object v1

    .line 806
    .line 807
    :cond_22
    const/16 v2, 0xb

    .line 808
    .line 809
    if-ne v1, v2, :cond_23

    .line 810
    int-to-long v1, v3

    .line 811
    .line 812
    .line 813
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 814
    move-result-object v1

    .line 815
    return-object v1

    .line 816
    .line 817
    .line 818
    :cond_23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 819
    move-result-object v1

    .line 820
    return-object v1

    .line 821
    .line 822
    :cond_24
    if-nez v2, :cond_29

    .line 823
    .line 824
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 825
    .line 826
    if-nez v1, :cond_28

    .line 827
    .line 828
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 829
    int-to-long v2, v1

    .line 830
    and-long/2addr v2, v10

    .line 831
    .line 832
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 833
    int-to-long v5, v4

    .line 834
    and-long/2addr v5, v10

    .line 835
    .line 836
    cmp-long v8, v5, v20

    .line 837
    .line 838
    if-gtz v8, :cond_27

    .line 839
    .line 840
    shl-long v4, v5, v19

    .line 841
    add-long/2addr v4, v2

    .line 842
    .line 843
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 844
    .line 845
    if-eqz v1, :cond_25

    .line 846
    neg-long v4, v4

    .line 847
    .line 848
    :cond_25
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 849
    .line 850
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 851
    .line 852
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseBigIntegerForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 853
    .line 854
    iget-wide v6, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 855
    and-long/2addr v1, v6

    .line 856
    .line 857
    cmp-long v1, v1, v13

    .line 858
    .line 859
    if-eqz v1, :cond_26

    .line 860
    .line 861
    .line 862
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 863
    move-result-object v1

    .line 864
    return-object v1

    .line 865
    .line 866
    .line 867
    :cond_26
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 868
    move-result-object v1

    .line 869
    return-object v1

    .line 870
    .line 871
    :cond_27
    new-array v2, v15, [I

    .line 872
    .line 873
    aput v4, v2, v16

    .line 874
    .line 875
    aput v1, v2, v18

    .line 876
    goto :goto_8

    .line 877
    .line 878
    :cond_28
    new-array v2, v12, [I

    .line 879
    .line 880
    aput v1, v2, v16

    .line 881
    .line 882
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 883
    .line 884
    aput v1, v2, v18

    .line 885
    .line 886
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 887
    .line 888
    aput v1, v2, v15

    .line 889
    goto :goto_8

    .line 890
    .line 891
    :cond_29
    new-array v1, v8, [I

    .line 892
    .line 893
    aput v2, v1, v16

    .line 894
    .line 895
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag1:I

    .line 896
    .line 897
    aput v2, v1, v18

    .line 898
    .line 899
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag2:I

    .line 900
    .line 901
    aput v2, v1, v15

    .line 902
    .line 903
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReader;->mag3:I

    .line 904
    .line 905
    aput v2, v1, v12

    .line 906
    move-object v2, v1

    .line 907
    .line 908
    :goto_8
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader;->negative:Z

    .line 909
    .line 910
    if-eqz v1, :cond_2a

    .line 911
    goto :goto_9

    .line 912
    .line 913
    :cond_2a
    move/from16 v7, v18

    .line 914
    .line 915
    :goto_9
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Lcom/alibaba/fastjson2/function/BiFunction;

    .line 916
    .line 917
    .line 918
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 919
    move-result-object v3

    .line 920
    .line 921
    .line 922
    invoke-interface {v1, v3, v2}, Lcom/alibaba/fastjson2/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    move-result-object v1

    .line 924
    .line 925
    check-cast v1, Ljava/math/BigInteger;

    .line 926
    .line 927
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 928
    .line 929
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 930
    .line 931
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseLongForInts:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 932
    .line 933
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 934
    and-long/2addr v2, v4

    .line 935
    .line 936
    cmp-long v2, v2, v13

    .line 937
    .line 938
    if-eqz v2, :cond_2b

    .line 939
    .line 940
    .line 941
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    .line 942
    move-result-wide v1

    .line 943
    .line 944
    .line 945
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 946
    move-result-object v1

    .line 947
    :cond_2b
    return-object v1

    .line 948
    nop

    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    .line 6
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 7
    .line 8
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 9
    and-long/2addr v1, v3

    .line 10
    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v1, v1, v3

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    .line 20
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public getObjectReaderAutoType(JLjava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReaderAutoType(J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    return-object p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getString()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 16
    .line 17
    iget-object p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p1, p3, p4, p5}, Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 28
    .line 29
    iget-wide v0, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 30
    and-long/2addr p4, v0

    .line 31
    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    cmp-long p1, p4, v0

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    .line 41
    :goto_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 42
    .line 43
    iget-object p3, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    .line 50
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 51
    .line 52
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 53
    .line 54
    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 55
    or-long/2addr p4, v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/String;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public final getOffset()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 3
    return v0
.end method

.method public abstract getRawInt()I
.end method

.method public abstract getRawLong()J
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract getStringLength()I
.end method

.method public getType()B
    .locals 1

    const/16 v0, -0x80

    return v0
.end method

.method public final getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final handleResolveTasks(Ljava/lang/Object;)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_6

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v0

    .line 10
    .line 11
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 15
    move-result v3

    .line 16
    .line 17
    if-ge v2, v3, :cond_f

    .line 18
    .line 19
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    .line 20
    .line 21
    .line 22
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    check-cast v3, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;

    .line 26
    .line 27
    iget-object v4, v3, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->reference:Lcom/alibaba/fastjson2/JSONPath;

    .line 28
    .line 29
    iget-object v5, v3, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 30
    .line 31
    iget-boolean v6, v4, Lcom/alibaba/fastjson2/JSONPath;->previous:Z

    .line 32
    .line 33
    if-eqz v6, :cond_1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 37
    .line 38
    iput-object v1, v4, Lcom/alibaba/fastjson2/JSONPath;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 39
    .line 40
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 41
    .line 42
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 43
    .line 44
    iget-wide v8, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 45
    and-long/2addr v6, v8

    .line 46
    .line 47
    const-wide/16 v8, 0x0

    .line 48
    .line 49
    cmp-long v1, v6, v8

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 58
    .line 59
    sget-object v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 60
    .line 61
    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 62
    or-long/2addr v6, v8

    .line 63
    .line 64
    iput-wide v6, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 65
    .line 66
    iput-object v1, v4, Lcom/alibaba/fastjson2/JSONPath;->writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    :goto_1
    iget-object v4, v3, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->name:Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v3, v3, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->object:Ljava/lang/Object;

    .line 75
    .line 76
    if-eqz v4, :cond_d

    .line 77
    .line 78
    instance-of v6, v3, Ljava/util/Map;

    .line 79
    .line 80
    if-eqz v6, :cond_8

    .line 81
    .line 82
    check-cast v3, Ljava/util/Map;

    .line 83
    .line 84
    instance-of v5, v4, Lcom/alibaba/fastjson2/util/ReferenceKey;

    .line 85
    .line 86
    if-eqz v5, :cond_7

    .line 87
    .line 88
    instance-of v5, v3, Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    if-eqz v5, :cond_6

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 94
    move-result v5

    .line 95
    .line 96
    if-nez v5, :cond_3

    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_3
    new-array v6, v5, [Ljava/lang/Object;

    .line 101
    .line 102
    new-array v7, v5, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 106
    move-result-object v8

    .line 107
    .line 108
    .line 109
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object v8

    .line 111
    move v9, v0

    .line 112
    .line 113
    .line 114
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v10

    .line 116
    .line 117
    if-eqz v10, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v10

    .line 122
    .line 123
    check-cast v10, Ljava/util/Map$Entry;

    .line 124
    .line 125
    .line 126
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 127
    move-result-object v11

    .line 128
    .line 129
    if-ne v4, v11, :cond_4

    .line 130
    .line 131
    aput-object v1, v6, v9

    .line 132
    goto :goto_3

    .line 133
    .line 134
    :cond_4
    aput-object v11, v6, v9

    .line 135
    .line 136
    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 137
    .line 138
    .line 139
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 140
    move-result-object v10

    .line 141
    .line 142
    aput-object v10, v7, v9

    .line 143
    move v9, v11

    .line 144
    goto :goto_2

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 148
    move v4, v0

    .line 149
    .line 150
    :goto_4
    if-ge v4, v5, :cond_e

    .line 151
    .line 152
    aget-object v8, v6, v4

    .line 153
    .line 154
    aget-object v9, v7, v4

    .line 155
    .line 156
    .line 157
    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    goto :goto_4

    .line 161
    .line 162
    .line 163
    :cond_6
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-result-object v4

    .line 165
    .line 166
    .line 167
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    goto :goto_5

    .line 169
    .line 170
    .line 171
    :cond_7
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    goto :goto_5

    .line 173
    .line 174
    :cond_8
    instance-of v6, v4, Ljava/lang/Integer;

    .line 175
    .line 176
    if-eqz v6, :cond_d

    .line 177
    .line 178
    instance-of v6, v3, Ljava/util/List;

    .line 179
    .line 180
    if-eqz v6, :cond_b

    .line 181
    .line 182
    check-cast v4, Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 186
    move-result v4

    .line 187
    .line 188
    check-cast v3, Ljava/util/List;

    .line 189
    .line 190
    .line 191
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 192
    move-result v5

    .line 193
    .line 194
    if-ne v4, v5, :cond_9

    .line 195
    .line 196
    .line 197
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    goto :goto_5

    .line 199
    .line 200
    .line 201
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 202
    move-result v5

    .line 203
    .line 204
    if-ge v4, v5, :cond_a

    .line 205
    .line 206
    .line 207
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    move-result-object v5

    .line 209
    .line 210
    if-nez v5, :cond_a

    .line 211
    .line 212
    .line 213
    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 214
    goto :goto_5

    .line 215
    .line 216
    .line 217
    :cond_a
    invoke-interface {v3, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    goto :goto_5

    .line 219
    .line 220
    :cond_b
    instance-of v6, v3, [Ljava/lang/Object;

    .line 221
    .line 222
    if-eqz v6, :cond_c

    .line 223
    .line 224
    check-cast v4, Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 228
    move-result v4

    .line 229
    .line 230
    check-cast v3, [Ljava/lang/Object;

    .line 231
    .line 232
    aput-object v1, v3, v4

    .line 233
    goto :goto_5

    .line 234
    .line 235
    :cond_c
    instance-of v4, v3, Ljava/util/Collection;

    .line 236
    .line 237
    if-eqz v4, :cond_d

    .line 238
    .line 239
    check-cast v3, Ljava/util/Collection;

    .line 240
    .line 241
    .line 242
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    goto :goto_5

    .line 244
    .line 245
    .line 246
    :cond_d
    invoke-virtual {v5, v3, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    .line 248
    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    :cond_f
    :goto_6
    return-void
.end method

.method public final hasComma()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 3
    return v0
.end method

.method public final info()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", offset "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "offset "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract isArray()Z
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    .line 6
    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 7
    and-long/2addr v0, v2

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public isEnd()Z
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x1a

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final isInitStringFieldAsEmpty()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 9
    and-long/2addr v0, v2

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public isInt()Z
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x2d

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x2b

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x30

    .line 13
    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x39

    .line 17
    .line 18
    if-gt v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public final isJSONB()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    .line 3
    return v0
.end method

.method public abstract isNull()Z
.end method

.method public isNumber()Z
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x2b

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x2d

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    nop

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isObject()Z
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x7b

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public abstract isReference()Z
.end method

.method public isString()Z
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public final isSupportAutoType(J)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    or-long/2addr p1, v0

    .line 6
    .line 7
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 8
    .line 9
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 10
    and-long/2addr p1, v0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long p1, p1, v0

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final isSupportAutoTypeOrHandler(J)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 5
    or-long/2addr p1, v1

    .line 6
    .line 7
    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 8
    .line 9
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 10
    and-long/2addr p1, v1

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    cmp-long p1, p1, v1

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public final isSupportBeanArray()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSupportBeanArray(J)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p1, v0

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isSupportSmartMatch()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSupportSmartMatch(J)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr p1, v0

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportSmartMatch:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isTypeRedirect()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->typeRedirect:Z

    .line 3
    return v0
.end method

.method public mark()Lcom/alibaba/fastjson2/JSONReader$SavePoint;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$SavePoint;

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader$SavePoint;-><init>(II)V

    .line 10
    return-object v0
.end method

.method public abstract next()V
.end method

.method public abstract nextIfArrayEnd()Z
.end method

.method public abstract nextIfArrayStart()Z
.end method

.method public abstract nextIfComma()Z
.end method

.method public abstract nextIfInfinity()Z
.end method

.method public nextIfMatch(B)Z
    .locals 1

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract nextIfMatch(C)Z
.end method

.method public abstract nextIfMatchIdent(CCC)Z
.end method

.method public abstract nextIfMatchIdent(CCCC)Z
.end method

.method public abstract nextIfMatchIdent(CCCCC)Z
.end method

.method public abstract nextIfMatchIdent(CCCCCC)Z
.end method

.method public nextIfMatchTypedAny()Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "UnsupportedOperation"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public abstract nextIfName4Match10(J)Z
.end method

.method public abstract nextIfName4Match11(J)Z
.end method

.method public abstract nextIfName4Match12(JB)Z
.end method

.method public abstract nextIfName4Match13(JI)Z
.end method

.method public nextIfName4Match14(JI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfName4Match15(JI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract nextIfName4Match16(JIB)Z
.end method

.method public abstract nextIfName4Match17(JJ)Z
.end method

.method public abstract nextIfName4Match18(JJ)Z
.end method

.method public nextIfName4Match19(JJ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract nextIfName4Match2()Z
.end method

.method public abstract nextIfName4Match20(JJB)Z
.end method

.method public nextIfName4Match21(JJI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract nextIfName4Match22(JJI)Z
.end method

.method public abstract nextIfName4Match23(JJI)Z
.end method

.method public abstract nextIfName4Match24(JJIB)Z
.end method

.method public abstract nextIfName4Match25(JJJ)Z
.end method

.method public abstract nextIfName4Match26(JJJ)Z
.end method

.method public abstract nextIfName4Match27(JJJ)Z
.end method

.method public abstract nextIfName4Match28(JJJB)Z
.end method

.method public abstract nextIfName4Match29(JJJI)Z
.end method

.method public abstract nextIfName4Match3()Z
.end method

.method public abstract nextIfName4Match30(JJJI)Z
.end method

.method public abstract nextIfName4Match31(JJJI)Z
.end method

.method public abstract nextIfName4Match32(JJJIB)Z
.end method

.method public abstract nextIfName4Match33(JJJJ)Z
.end method

.method public abstract nextIfName4Match34(JJJJ)Z
.end method

.method public abstract nextIfName4Match35(JJJJ)Z
.end method

.method public abstract nextIfName4Match36(JJJJB)Z
.end method

.method public abstract nextIfName4Match37(JJJJI)Z
.end method

.method public abstract nextIfName4Match38(JJJJI)Z
.end method

.method public abstract nextIfName4Match39(JJJJI)Z
.end method

.method public abstract nextIfName4Match4(B)Z
.end method

.method public abstract nextIfName4Match40(JJJJIB)Z
.end method

.method public abstract nextIfName4Match41(JJJJJ)Z
.end method

.method public abstract nextIfName4Match42(JJJJJ)Z
.end method

.method public abstract nextIfName4Match43(JJJJJ)Z
.end method

.method public abstract nextIfName4Match5(I)Z
.end method

.method public abstract nextIfName4Match6(I)Z
.end method

.method public abstract nextIfName4Match7(I)Z
.end method

.method public abstract nextIfName4Match8(IB)Z
.end method

.method public abstract nextIfName4Match9(J)Z
.end method

.method public nextIfName8Match0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfName8Match1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfName8Match2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract nextIfNull()Z
.end method

.method public abstract nextIfNullOrEmptyString()Z
.end method

.method public abstract nextIfObjectEnd()Z
.end method

.method public abstract nextIfObjectStart()Z
.end method

.method public abstract nextIfSet()Z
.end method

.method public nextIfValue4Match10(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match11(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfValue4Match3()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextIfValue4Match4(B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match5(BB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match6(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match7(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match8(IB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextIfValue4Match9(IBB)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public nextWithoutComment()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 4
    return-void
.end method

.method public final notSupportName()Lcom/alibaba/fastjson2/JSONException;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "not support unquoted name"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public numberError()Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal number, offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", char "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public read(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    .line 110
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    .line 3
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final read(Ljava/util/Collection;)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 17
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    if-ge v0, v1, :cond_1

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level too large : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal input, offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", char "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final read(Ljava/util/List;)V
    .locals 6

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    if-ge v0, v1, :cond_1

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget p1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 13
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v1, p0

    .line 14
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal input, offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", char "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/util/Map;J)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 26
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    .line 27
    const-string v7, ", char "

    const/4 v8, 0x0

    if-nez v0, :cond_2

    .line 28
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    move v9, v2

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 33
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input\uff0c offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v9, v8

    .line 34
    :goto_0
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long v10, p2, v2

    move v12, v8

    .line 35
    :goto_1
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_3

    .line 36
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 37
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    :cond_4
    if-eqz v12, :cond_6

    .line 39
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 40
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    if-nez v0, :cond_8

    if-eqz v9, :cond_7

    goto :goto_3

    .line 41
    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    move v13, v2

    goto :goto_5

    .line 42
    :cond_8
    :goto_3
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_9

    const/16 v3, 0x39

    if-le v2, v3, :cond_a

    :cond_9
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_b

    :cond_a
    const/4 v2, 0x0

    :goto_4
    move v13, v0

    move-object v0, v2

    goto :goto_5

    .line 43
    :cond_b
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :goto_5
    const-wide/16 v14, 0x0

    if-nez v0, :cond_f

    .line 44
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 45
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v0

    .line 46
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v10

    cmp-long v2, v2, v14

    if-eqz v2, :cond_c

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_c
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-nez v2, :cond_d

    goto :goto_6

    .line 49
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "syntax error, illegal key-value"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_e
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v10

    cmp-long v0, v2, v14

    if-eqz v0, :cond_10

    .line 51
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_6
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_f

    .line 53
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :cond_f
    move-object v3, v0

    goto :goto_7

    .line 54
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "not allow unquoted fieldName"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :goto_7
    iput-boolean v8, v1, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 56
    iget-char v0, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const-string v2, "FASTJSON2.0.60error, offset "

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    goto/16 :goto_9

    :sswitch_0
    if-eqz v9, :cond_11

    .line 59
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    const/4 v2, 0x0

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_8

    .line 60
    :cond_11
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v0

    goto/16 :goto_8

    .line 61
    :sswitch_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readBinary()[B

    move-result-object v0

    goto/16 :goto_8

    .line 62
    :sswitch_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNullOrNewDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_8

    .line 63
    :sswitch_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    .line 64
    :sswitch_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    .line 65
    :sswitch_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 66
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    .line 67
    :cond_12
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :sswitch_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfInfinity()Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_8

    .line 70
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_1
    :sswitch_7
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v0

    goto :goto_8

    .line 72
    :sswitch_8
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    if-nez v0, :cond_14

    .line 73
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v10

    cmp-long v2, v4, v14

    if-eqz v2, :cond_14

    goto :goto_9

    .line 74
    :cond_14
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v10

    cmp-long v2, v4, v14

    if-eqz v2, :cond_15

    const-string v2, "@type"

    .line 75
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_9

    .line 77
    :cond_15
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 78
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v10

    cmp-long v4, v4, v14

    if-eqz v4, :cond_17

    .line 79
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_16

    .line 80
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 82
    :cond_16
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v0

    .line 83
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move v0, v13

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2b -> :sswitch_7
        0x49 -> :sswitch_6
        0x53 -> :sswitch_5
        0x5b -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x74 -> :sswitch_3
        0x78 -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public read(Ljava/util/Map;Lcom/alibaba/fastjson2/reader/ObjectReader;J)V
    .locals 11

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 112
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr v0, p3

    const/4 v2, 0x0

    .line 113
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    :cond_1
    if-eqz v2, :cond_3

    .line 117
    iget-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v3, :cond_2

    goto :goto_1

    .line 118
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v5

    move-object v4, p0

    move-object v3, p2

    move-wide v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    const-wide/16 p3, 0x0

    if-nez p2, :cond_4

    .line 121
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v0

    cmp-long v4, v4, p3

    if-eqz v4, :cond_4

    goto :goto_2

    .line 122
    :cond_4
    invoke-interface {p1, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 123
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v9, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v9, v0

    cmp-long p3, v9, p3

    if-eqz p3, :cond_6

    .line 124
    instance-of p3, v4, Ljava/util/Collection;

    if-eqz p3, :cond_5

    .line 125
    move-object p3, v4

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {p1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 127
    :cond_5
    invoke-static {v4, p2}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p2

    .line 128
    invoke-interface {p1, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object p2, v3

    move-wide p3, v7

    goto :goto_0
.end method

.method public final read(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;J)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 84
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 85
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 86
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v8

    .line 87
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long v9, p4, v2

    const/4 v2, 0x0

    move v11, v2

    .line 88
    :goto_0
    iget-char v2, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    :cond_0
    const/16 v2, 0x7d

    .line 90
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-void

    :cond_1
    if-eqz v11, :cond_3

    .line 92
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 93
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_3
    :goto_1
    const-class v2, Ljava/lang/String;

    if-ne v7, v2, :cond_4

    .line 95
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v2

    move-object v12, v0

    :goto_2
    move-object v13, v2

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v0

    const/16 v0, 0x3a

    .line 97
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    goto :goto_2

    :goto_3
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    .line 98
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_5

    .line 99
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v14, v9

    cmp-long v5, v14, v3

    if-eqz v5, :cond_5

    goto :goto_4

    .line 100
    :cond_5
    invoke-interface {v6, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 101
    sget-object v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v14, v8, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v14, v9

    cmp-long v3, v14, v3

    if-eqz v3, :cond_7

    .line 102
    instance-of v3, v5, Ljava/util/Collection;

    if-eqz v3, :cond_6

    .line 103
    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-interface {v6, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 105
    :cond_6
    invoke-static {v5, v2}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v2

    .line 106
    invoke-interface {v6, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object v8, v0

    move-object v0, v12

    goto :goto_0

    .line 107
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input\uff0c offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAny()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public readArray()Ljava/util/List;
    .locals 15

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 54
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 55
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    if-ge v0, v2, :cond_11

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move v3, v2

    .line 56
    :goto_0
    iget-char v7, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/4 v8, 0x2

    sparse-switch v7, :sswitch_data_0

    packed-switch v7, :pswitch_data_0

    .line 57
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :sswitch_0
    move-object v10, p0

    goto/16 :goto_6

    .line 58
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    add-int/lit8 v3, v3, -0x1

    move-object v10, p0

    goto/16 :goto_9

    .line 59
    :sswitch_1
    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v9, v7, Lcom/alibaba/fastjson2/JSONReader$Context;->autoTypeBeforeHandler:Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;

    if-nez v9, :cond_2

    iget-wide v9, v7, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v11, v7, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-eqz v7, :cond_0

    goto :goto_2

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v7

    :goto_1
    move-object v10, p0

    goto/16 :goto_7

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v7

    goto :goto_1

    .line 63
    :cond_2
    :goto_2
    sget-object v9, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v11, 0x0

    move-object v10, p0

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_7

    :sswitch_2
    move-object v10, p0

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    move-object v7, v0

    goto/16 :goto_7

    :sswitch_3
    move-object v10, p0

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_7

    :sswitch_4
    move-object v10, p0

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    if-nez v4, :cond_9

    .line 67
    iget-object v0, v10, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Lcom/alibaba/fastjson2/function/Supplier;

    if-eqz v4, :cond_3

    .line 68
    invoke-interface {v4}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_3
    move-object v4, v0

    goto :goto_4

    .line 69
    :cond_3
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONReader$Context;->isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    if-ne v3, v8, :cond_4

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_3

    :cond_4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_3

    .line 71
    :cond_5
    iget-object v0, v10, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Lcom/alibaba/fastjson2/function/Supplier;

    if-eqz v0, :cond_6

    .line 72
    invoke-interface {v0}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_3

    .line 73
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v3, v8, :cond_7

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    goto :goto_3

    :cond_7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    goto :goto_3

    :goto_4
    if-ne v3, v1, :cond_8

    .line 74
    invoke-direct {p0, v4, v2, v5}, Lcom/alibaba/fastjson2/JSONReader;->add(Ljava/util/List;ILjava/lang/Object;)V

    goto :goto_5

    :cond_8
    if-ne v3, v8, :cond_9

    .line 75
    invoke-direct {p0, v4, v2, v5}, Lcom/alibaba/fastjson2/JSONReader;->add(Ljava/util/List;ILjava/lang/Object;)V

    .line 76
    invoke-direct {p0, v4, v1, v6}, Lcom/alibaba/fastjson2/JSONReader;->add(Ljava/util/List;ILjava/lang/Object;)V

    .line 77
    :cond_9
    :goto_5
    iget-char v0, v10, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_a

    move v2, v1

    :cond_a
    iput-boolean v2, v10, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_b

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 79
    :cond_b
    iget v0, v10, Lcom/alibaba/fastjson2/JSONReader;->level:I

    sub-int/2addr v0, v1

    iput v0, v10, Lcom/alibaba/fastjson2/JSONReader;->level:I

    return-object v4

    :sswitch_5
    move-object v10, p0

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v7

    goto :goto_7

    :sswitch_6
    move-object v10, p0

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 82
    const-class v7, Ljava/util/Set;

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_7

    .line 83
    :cond_c
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_7
    move-object v10, p0

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNaN()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_7

    .line 85
    :goto_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v7

    goto :goto_7

    :sswitch_8
    move-object v10, p0

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    if-nez v3, :cond_d

    move-object v5, v7

    goto :goto_9

    :cond_d
    if-ne v3, v1, :cond_e

    move-object v6, v7

    goto :goto_9

    :cond_e
    if-ne v3, v8, :cond_10

    .line 88
    iget-object v4, v10, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v4, v4, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Lcom/alibaba/fastjson2/function/Supplier;

    if-eqz v4, :cond_f

    .line 89
    invoke-interface {v4}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_8

    .line 90
    :cond_f
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 91
    :goto_8
    invoke-direct {p0, v4, v2, v5}, Lcom/alibaba/fastjson2/JSONReader;->add(Ljava/util/List;ILjava/lang/Object;)V

    .line 92
    invoke-direct {p0, v4, v1, v6}, Lcom/alibaba/fastjson2/JSONReader;->add(Ljava/util/List;ILjava/lang/Object;)V

    .line 93
    invoke-direct {p0, v4, v3, v7}, Lcom/alibaba/fastjson2/JSONReader;->add(Ljava/util/List;ILjava/lang/Object;)V

    goto :goto_9

    .line 94
    :cond_10
    invoke-direct {p0, v4, v3, v7}, Lcom/alibaba/fastjson2/JSONReader;->add(Ljava/util/List;ILjava/lang/Object;)V

    :goto_9
    add-int/2addr v3, v1

    goto/16 :goto_0

    :cond_11
    move-object v10, p0

    .line 95
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/alibaba/fastjson2/JSONReader;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x4e -> :sswitch_7
        0x53 -> :sswitch_6
        0x5b -> :sswitch_5
        0x5d -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public readArray(Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 4
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    .line 8
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 9
    iget v6, v5, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    if-eq v0, v6, :cond_2

    iget-char v0, v5, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v6, 0x7d

    if-eq v0, v6, :cond_2

    const/16 v6, 0x1a

    if-eq v0, v6, :cond_2

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal input : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, v5, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v5, p0

    .line 12
    iget-char v0, v5, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    move v2, v3

    :cond_4
    iput-boolean v2, v5, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :cond_5
    return-object p1

    :cond_6
    move-object v5, p0

    .line 14
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, v5, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readArray(Ljava/util/Collection;Ljava/lang/reflect/Type;)V
    .locals 7

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2c

    if-eqz v0, :cond_3

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne p1, v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_a

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    return-void

    .line 32
    :cond_1
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 34
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x7d

    if-eq v0, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 35
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-class v4, Ljava/lang/String;

    if-ne p2, v4, :cond_4

    .line 39
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 40
    :cond_4
    iget-object v5, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v5, v5, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v5, v4, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/function/Function;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 42
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v4, v0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_8

    aget-object v6, v0, v5

    .line 44
    invoke-interface {p2, v6}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 45
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 46
    :cond_5
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 47
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 48
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support input "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_7
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 50
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_8
    :goto_2
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne p1, v3, :cond_9

    move v1, v2

    :cond_9
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v1, :cond_a

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    :cond_a
    return-void
.end method

.method public final readArray(Ljava/util/List;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/util/Collection;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public final readArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 6

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    const-string v1, "syntax error"

    if-eqz v0, :cond_6

    .line 17
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    .line 18
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_4

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    aget-object v5, p1, v2

    .line 22
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    aput-object v5, v0, v2

    .line 24
    array-length v5, p1

    sub-int/2addr v5, v4

    if-ne v2, v5, :cond_3

    move v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    return-object v0

    .line 25
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBase64()[B
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v2, "data:image/"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x3b

    .line 18
    .line 19
    const/16 v3, 0xc

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    .line 23
    move-result v2

    .line 24
    const/4 v3, -0x1

    .line 25
    .line 26
    if-eq v2, v3, :cond_0

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    const/16 v4, 0x2c

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eq v4, v3, :cond_0

    .line 37
    const/4 v3, 0x6

    .line 38
    .line 39
    const-string v5, "base64"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2, v5, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 55
    move-result v2

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    new-array v0, v1, [B

    .line 60
    return-object v0

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/n;->a()Ljava/util/Base64$Decoder;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/o;->a(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B

    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public abstract readBigDecimal()Ljava/math/BigDecimal;
.end method

.method public readBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getBigInteger()Ljava/math/BigInteger;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public readBinary()[B
    .locals 5

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x78

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readHex()[B

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 32
    .line 33
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 34
    .line 35
    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->Base64StringAsByteArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 36
    .line 37
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 38
    and-long/2addr v1, v3

    .line 39
    .line 40
    const-wide/16 v3, 0x0

    .line 41
    .line 42
    cmp-long v1, v1, v3

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    .line 51
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    const-string v3, "not support input "

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v1

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    const/16 v0, 0x40

    .line 85
    .line 86
    new-array v0, v0, [B

    .line 87
    const/4 v1, 0x0

    .line 88
    .line 89
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 90
    .line 91
    const/16 v3, 0x5d

    .line 92
    .line 93
    if-ne v2, v3, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :cond_4
    array-length v2, v0

    .line 106
    .line 107
    if-ne v1, v2, :cond_5

    .line 108
    array-length v2, v0

    .line 109
    .line 110
    shr-int/lit8 v3, v2, 0x1

    .line 111
    add-int/2addr v2, v3

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 115
    move-result-object v0

    .line 116
    .line 117
    :cond_5
    add-int/lit8 v2, v1, 0x1

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 121
    move-result v3

    .line 122
    int-to-byte v3, v3

    .line 123
    .line 124
    aput-byte v3, v0, v1

    .line 125
    move v1, v2

    .line 126
    goto :goto_0

    .line 127
    .line 128
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 129
    .line 130
    const-string v1, "not support read binary"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 138
    throw v0
.end method

.method public readBool()Ljava/lang/Boolean;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

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
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    return-object v1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public abstract readBoolValue()Z
.end method

.method public readCalendar()Ljava/util/Calendar;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readDate()Ljava/util/Date;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getTimeZone()Ljava/util/TimeZone;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 22
    return-object v1
.end method

.method public readCharValue()C
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 23
    return v1
.end method

.method public readCharacter()Ljava/lang/Character;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public readDate()Ljava/util/Date;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatMillis:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 27
    .line 28
    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const-wide/16 v2, 0x3e8

    .line 33
    mul-long/2addr v0, v2

    .line 34
    .line 35
    :cond_1
    new-instance v2, Ljava/util/Date;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 39
    return-object v2

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 43
    move-result v0

    .line 44
    .line 45
    const/16 v1, 0x6e

    .line 46
    .line 47
    if-ne v0, v1, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNullOrNewDate()Ljava/util/Date;

    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->parseDate(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/util/Date;

    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method

.method public final readDouble()Ljava/lang/Double;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

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
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readDoubleValue()D

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    return-object v1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public abstract readDoubleValue()D
.end method

.method public abstract readFieldName()Ljava/lang/String;
.end method

.method public abstract readFieldNameHashCode()J
.end method

.method public abstract readFieldNameHashCodeUnquote()J
.end method

.method public final readFieldNameUnquote()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x2f

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCodeUnquote()J

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getFieldName()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 30
    .line 31
    const-string v1, "illegal input"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method

.method public final readFloat()Ljava/lang/Float;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

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
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFloatValue()F

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    return-object v1

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public abstract readFloatValue()F
.end method

.method public abstract readHex()[B
.end method

.method public abstract readIfNull()Z
.end method

.method public readInstant()Lcom/alibaba/fastjson2/time/Instant;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 11
    return-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 24
    .line 25
    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const-wide/16 v2, 0x3e8

    .line 30
    mul-long/2addr v0, v2

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    const-class v0, Lcom/alibaba/fastjson2/time/Instant;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    check-cast v0, Lcom/alibaba/fastjson2/time/Instant;

    .line 60
    return-object v0

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTime()Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    if-nez v0, :cond_4

    .line 67
    return-object v1

    .line 68
    .line 69
    .line 70
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochSecond()J

    .line 71
    move-result-wide v1

    .line 72
    .line 73
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 76
    .line 77
    iget v0, v0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 78
    int-to-long v3, v0

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochSecond(JJ)Lcom/alibaba/fastjson2/time/Instant;

    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method

.method public readInt16()Ljava/lang/Short;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public readInt16Value()S
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 4
    move-result v0

    .line 5
    int-to-short v0, v0

    .line 6
    return v0
.end method

.method public readInt32()Ljava/lang/Integer;
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x6e

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 26
    move-result v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public abstract readInt32Value()I
.end method

.method public final readInt32ValueOverflow()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getInt32Value()I

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public readInt64()Ljava/lang/Long;
    .locals 2

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x22

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x27

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x6e

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 26
    move-result-wide v0

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public abstract readInt64Value()J
.end method

.method public readInt64ValueArray()[J
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

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
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    new-array v0, v0, [J

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    array-length v2, v0

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    return-object v0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_4

    .line 41
    array-length v2, v0

    .line 42
    .line 43
    if-ne v1, v2, :cond_3

    .line 44
    array-length v2, v0

    .line 45
    .line 46
    shl-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 50
    move-result-object v0

    .line 51
    .line 52
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 56
    move-result-wide v3

    .line 57
    .line 58
    aput-wide v3, v0, v1

    .line 59
    move v1, v2

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 63
    .line 64
    const-string v1, "input end"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 76
    move-result v0

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 86
    move-result v2

    .line 87
    .line 88
    if-eqz v2, :cond_6

    .line 89
    return-object v1

    .line 90
    .line 91
    :cond_6
    const-string v1, "not support input "

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->error(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONException;

    .line 99
    move-result-object v0

    .line 100
    throw v0

    .line 101
    .line 102
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 103
    .line 104
    const-string v1, "TODO"

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    .line 111
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 112
    throw v0
.end method

.method public final readInt64ValueOverflow()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getInt64Value()J

    .line 7
    move-result-wide v0

    .line 8
    return-wide v0
.end method

.method public readInt8()Ljava/lang/Byte;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public readInt8Value()B
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    .line 4
    move-result v0

    .line 5
    int-to-byte v0, v0

    .line 6
    return v0
.end method

.method public final readJSONArray()Lcom/alibaba/fastjson2/JSONArray;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 9
    return-object v0
.end method

.method public final readJSONObject()Lcom/alibaba/fastjson2/JSONObject;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 11
    return-object v0
.end method

.method public readList([Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_6

    .line 15
    array-length v0, p1

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 26
    move-result v4

    .line 27
    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    if-ge v3, v0, :cond_2

    .line 31
    .line 32
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 33
    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 35
    .line 36
    aget-object v3, p1, v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    iget v6, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 43
    .line 44
    if-eq v4, v6, :cond_1

    .line 45
    .line 46
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 47
    .line 48
    const/16 v6, 0x7d

    .line 49
    .line 50
    if-eq v4, v6, :cond_1

    .line 51
    .line 52
    const/16 v6, 0x1a

    .line 53
    .line 54
    if-eq v4, v6, :cond_1

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    move v3, v5

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    const-string v1, "illegal input : "

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v1, ", offset "

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getOffset()I

    .line 85
    move-result v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p1

    .line 97
    .line 98
    :cond_2
    if-ne v3, v0, :cond_5

    .line 99
    .line 100
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 101
    .line 102
    const/16 v0, 0x2c

    .line 103
    .line 104
    if-ne p1, v0, :cond_3

    .line 105
    const/4 v2, 0x1

    .line 106
    .line 107
    :cond_3
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    .line 108
    .line 109
    if-eqz v2, :cond_4

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 113
    :cond_4
    return-object v1

    .line 114
    .line 115
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 116
    .line 117
    const-string v0, "element length mismatch"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 125
    throw p1

    .line 126
    .line 127
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    const-string v1, "syntax error : "

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p1
.end method

.method public readLocalDate()Lcom/alibaba/fastjson2/time/LocalDate;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

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
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 21
    .line 22
    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-wide/16 v2, 0x3e8

    .line 27
    mul-long/2addr v0, v2

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 46
    return-object v0

    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 49
    .line 50
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    .line 67
    .line 68
    if-eqz v0, :cond_b

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    .line 72
    move-result v0

    .line 73
    .line 74
    const/16 v2, 0x13

    .line 75
    .line 76
    if-eq v0, v2, :cond_a

    .line 77
    .line 78
    const/16 v2, 0x14

    .line 79
    .line 80
    if-eq v0, v2, :cond_9

    .line 81
    .line 82
    .line 83
    packed-switch v0, :pswitch_data_0

    .line 84
    .line 85
    if-le v0, v2, :cond_4

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTimeX(I)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 89
    move-result-object v0

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    :goto_0
    move-object v0, v1

    .line 92
    goto :goto_1

    .line 93
    .line 94
    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    if-nez v0, :cond_5

    .line 99
    goto :goto_0

    .line 100
    .line 101
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 105
    move-result-object v0

    .line 106
    goto :goto_1

    .line 107
    .line 108
    .line 109
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    if-nez v0, :cond_6

    .line 113
    goto :goto_0

    .line 114
    .line 115
    :cond_6
    sget-object v2, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 119
    move-result-object v0

    .line 120
    goto :goto_1

    .line 121
    .line 122
    .line 123
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    if-nez v0, :cond_7

    .line 127
    goto :goto_0

    .line 128
    .line 129
    :cond_7
    sget-object v2, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 133
    move-result-object v0

    .line 134
    goto :goto_1

    .line 135
    .line 136
    .line 137
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    if-nez v0, :cond_8

    .line 141
    goto :goto_0

    .line 142
    .line 143
    :cond_8
    sget-object v2, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 147
    move-result-object v0

    .line 148
    goto :goto_1

    .line 149
    .line 150
    .line 151
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 152
    move-result-object v0

    .line 153
    goto :goto_1

    .line 154
    .line 155
    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 157
    move-result-object v0

    .line 158
    .line 159
    :goto_1
    if-eqz v0, :cond_b

    .line 160
    .line 161
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 162
    return-object v0

    .line 163
    .line 164
    .line 165
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 170
    move-result v2

    .line 171
    .line 172
    if-nez v2, :cond_10

    .line 173
    .line 174
    const-string v2, "null"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v2

    .line 179
    .line 180
    if-eqz v2, :cond_c

    .line 181
    goto :goto_2

    .line 182
    .line 183
    :cond_c
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    if-eqz v1, :cond_e

    .line 190
    .line 191
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 192
    .line 193
    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatHasHour:Z

    .line 194
    .line 195
    if-eqz v2, :cond_d

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 199
    move-result-object v0

    .line 200
    .line 201
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 202
    return-object v0

    .line 203
    .line 204
    .line 205
    :cond_d
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 206
    move-result-object v0

    .line 207
    return-object v0

    .line 208
    .line 209
    .line 210
    :cond_e
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 211
    move-result v1

    .line 212
    .line 213
    if-eqz v1, :cond_f

    .line 214
    .line 215
    .line 216
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 217
    move-result-wide v0

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 221
    move-result-object v0

    .line 222
    .line 223
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    .line 230
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 234
    .line 235
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 236
    return-object v0

    .line 237
    .line 238
    :cond_f
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 239
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    const-string v3, "not support input : "

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    .line 258
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 259
    throw v1

    .line 260
    :cond_10
    :goto_2
    return-object v1

    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;
.end method

.method public abstract readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;
.end method

.method public abstract readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;
.end method

.method public abstract readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;
.end method

.method public readLocalDateTime()Lcom/alibaba/fastjson2/time/LocalDateTime;
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 27
    return-object v0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isTypeRedirect()Z

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/16 v6, 0x6c

    .line 37
    .line 38
    const/16 v7, 0x22

    .line 39
    .line 40
    const/16 v3, 0x22

    .line 41
    .line 42
    const/16 v4, 0x76

    .line 43
    .line 44
    const/16 v5, 0x61

    .line 45
    move-object v2, p0

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatchIdent(CCCCC)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/16 v0, 0x3a

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->setTypeRedirect(Z)V

    .line 67
    return-object v0

    .line 68
    :cond_1
    move-object v2, p0

    .line 69
    .line 70
    :cond_2
    iget-object v0, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 71
    .line 72
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    .line 73
    const/4 v4, 0x0

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    .line 78
    .line 79
    if-nez v3, :cond_3

    .line 80
    .line 81
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    .line 82
    .line 83
    if-nez v3, :cond_3

    .line 84
    .line 85
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    .line 86
    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    .line 95
    move-result v0

    .line 96
    .line 97
    .line 98
    packed-switch v0, :pswitch_data_0

    .line 99
    :pswitch_0
    goto :goto_0

    .line 100
    .line 101
    .line 102
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTimeX(I)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    if-eqz v3, :cond_4

    .line 106
    return-object v3

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    if-eqz v0, :cond_7

    .line 113
    .line 114
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 118
    move-result-object v1

    .line 119
    .line 120
    iget-object v3, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->zone:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v3

    .line 125
    .line 126
    if-nez v3, :cond_5

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toInstant()Lcom/alibaba/fastjson2/time/Instant;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    .line 133
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 137
    return-object v0

    .line 138
    .line 139
    :cond_5
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 140
    return-object v0

    .line 141
    .line 142
    .line 143
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    if-eqz v3, :cond_6

    .line 147
    return-object v3

    .line 148
    .line 149
    .line 150
    :cond_6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 151
    move-result-object v0

    .line 152
    .line 153
    if-eqz v0, :cond_7

    .line 154
    .line 155
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 156
    return-object v0

    .line 157
    .line 158
    .line 159
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    if-eqz v0, :cond_7

    .line 163
    return-object v0

    .line 164
    .line 165
    .line 166
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime18()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 167
    move-result-object v0

    .line 168
    .line 169
    if-eqz v0, :cond_7

    .line 170
    return-object v0

    .line 171
    .line 172
    .line 173
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime17()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 174
    move-result-object v0

    .line 175
    .line 176
    if-eqz v0, :cond_7

    .line 177
    return-object v0

    .line 178
    .line 179
    .line 180
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 185
    move-result v3

    .line 186
    const/4 v5, 0x1

    .line 187
    .line 188
    if-nez v3, :cond_11

    .line 189
    .line 190
    const-string v3, "null"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v3

    .line 195
    .line 196
    if-eqz v3, :cond_8

    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_8
    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 204
    move-result-object v3

    .line 205
    .line 206
    if-eqz v3, :cond_a

    .line 207
    .line 208
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 209
    .line 210
    iget-boolean v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->formatHasHour:Z

    .line 211
    .line 212
    if-nez v1, :cond_9

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    sget-object v1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 222
    move-result-object v0

    .line 223
    return-object v0

    .line 224
    .line 225
    .line 226
    :cond_9
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 227
    move-result-object v0

    .line 228
    return-object v0

    .line 229
    .line 230
    .line 231
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 232
    move-result v3

    .line 233
    .line 234
    if-eqz v3, :cond_c

    .line 235
    .line 236
    .line 237
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 238
    move-result-wide v0

    .line 239
    .line 240
    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 241
    .line 242
    iget-boolean v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 243
    .line 244
    if-eqz v3, :cond_b

    .line 245
    .line 246
    const-wide/16 v3, 0x3e8

    .line 247
    mul-long/2addr v0, v3

    .line 248
    .line 249
    .line 250
    :cond_b
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 251
    move-result-object v0

    .line 252
    .line 253
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 257
    move-result-object v1

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 261
    move-result-object v0

    .line 262
    return-object v0

    .line 263
    .line 264
    :cond_c
    const-string v3, "/Date("

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 268
    move-result v3

    .line 269
    .line 270
    if-eqz v3, :cond_f

    .line 271
    .line 272
    const-string v3, ")/"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 276
    move-result v3

    .line 277
    .line 278
    if-eqz v3, :cond_f

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 282
    move-result v3

    .line 283
    .line 284
    add-int/lit8 v3, v3, -0x2

    .line 285
    const/4 v4, 0x6

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    .line 291
    const/16 v3, 0x2b

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 295
    move-result v3

    .line 296
    const/4 v4, -0x1

    .line 297
    .line 298
    if-ne v3, v4, :cond_d

    .line 299
    .line 300
    const/16 v3, 0x2d

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    .line 304
    move-result v3

    .line 305
    .line 306
    :cond_d
    if-eq v3, v4, :cond_e

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 311
    .line 312
    .line 313
    :cond_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 314
    move-result-wide v0

    .line 315
    .line 316
    .line 317
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 324
    move-result-object v1

    .line 325
    .line 326
    .line 327
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 328
    move-result-object v0

    .line 329
    return-object v0

    .line 330
    .line 331
    :cond_f
    const-string v1, "0000-00-00 00:00:00"

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    move-result v1

    .line 336
    .line 337
    if-eqz v1, :cond_10

    .line 338
    .line 339
    iput-boolean v5, v2, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 340
    return-object v4

    .line 341
    .line 342
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 343
    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    const-string v4, "read LocalDateTime error "

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    move-result-object v0

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    move-result-object v0

    .line 364
    .line 365
    .line 366
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 367
    throw v1

    .line 368
    .line 369
    :cond_11
    :goto_1
    iput-boolean v5, v2, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 370
    return-object v4

    .line 371
    .line 372
    .line 373
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime16()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 374
    move-result-object v0

    .line 375
    return-object v0

    .line 376
    .line 377
    .line 378
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 379
    move-result-object v0

    .line 380
    .line 381
    if-nez v0, :cond_12

    .line 382
    return-object v4

    .line 383
    .line 384
    :cond_12
    sget-object v1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 385
    .line 386
    .line 387
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 388
    move-result-object v0

    .line 389
    return-object v0

    .line 390
    .line 391
    .line 392
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 393
    move-result-object v0

    .line 394
    .line 395
    if-nez v0, :cond_13

    .line 396
    return-object v4

    .line 397
    .line 398
    :cond_13
    sget-object v1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 399
    .line 400
    .line 401
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 402
    move-result-object v0

    .line 403
    return-object v0

    .line 404
    .line 405
    .line 406
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 407
    move-result-object v0

    .line 408
    .line 409
    if-nez v0, :cond_14

    .line 410
    return-object v4

    .line 411
    .line 412
    :cond_14
    sget-object v1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 413
    .line 414
    .line 415
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 416
    move-result-object v0

    .line 417
    return-object v0

    .line 418
    .line 419
    .line 420
    :pswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 421
    move-result-object v0

    .line 422
    .line 423
    if-nez v0, :cond_15

    .line 424
    return-object v4

    .line 425
    .line 426
    :cond_15
    sget-object v1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 427
    .line 428
    .line 429
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 430
    move-result-object v0

    .line 431
    return-object v0

    .line 432
    nop

    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public abstract readLocalDateTime12()Lcom/alibaba/fastjson2/time/LocalDateTime;
.end method

.method public abstract readLocalDateTime14()Lcom/alibaba/fastjson2/time/LocalDateTime;
.end method

.method public abstract readLocalDateTime16()Lcom/alibaba/fastjson2/time/LocalDateTime;
.end method

.method public abstract readLocalDateTime17()Lcom/alibaba/fastjson2/time/LocalDateTime;
.end method

.method public abstract readLocalDateTime18()Lcom/alibaba/fastjson2/time/LocalDateTime;
.end method

.method public abstract readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;
.end method

.method public abstract readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;
.end method

.method public abstract readLocalDateTimeX(I)Lcom/alibaba/fastjson2/time/LocalDateTime;
.end method

.method public readLocalTime()Lcom/alibaba/fastjson2/time/LocalTime;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

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
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 37
    return-object v0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x5

    .line 43
    .line 44
    if-eq v0, v2, :cond_6

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    if-eq v0, v2, :cond_5

    .line 49
    .line 50
    .line 51
    packed-switch v0, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    packed-switch v0, :pswitch_data_1

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 62
    move-result v3

    .line 63
    .line 64
    if-nez v3, :cond_4

    .line 65
    .line 66
    const-string v3, "null"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    goto :goto_0

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 77
    move-result v1

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    .line 82
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 83
    move-result-wide v0

    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 93
    move-result-object v1

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 100
    .line 101
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 102
    return-object v0

    .line 103
    .line 104
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    const-string v3, "not support len : "

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    .line 124
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 125
    throw v1

    .line 126
    :cond_4
    :goto_0
    return-object v1

    .line 127
    .line 128
    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 130
    move-result-object v0

    .line 131
    .line 132
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 133
    return-object v0

    .line 134
    .line 135
    .line 136
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 140
    return-object v0

    .line 141
    .line 142
    .line 143
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime18()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 144
    move-result-object v0

    .line 145
    return-object v0

    .line 146
    .line 147
    .line 148
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime12()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 149
    move-result-object v0

    .line 150
    return-object v0

    .line 151
    .line 152
    .line 153
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime11()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 154
    move-result-object v0

    .line 155
    return-object v0

    .line 156
    .line 157
    .line 158
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime10()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 159
    move-result-object v0

    .line 160
    return-object v0

    .line 161
    .line 162
    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime8()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 164
    move-result-object v0

    .line 165
    return-object v0

    .line 166
    .line 167
    .line 168
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalTime5()Lcom/alibaba/fastjson2/time/LocalTime;

    .line 169
    move-result-object v0

    .line 170
    return-object v0

    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract readLocalTime10()Lcom/alibaba/fastjson2/time/LocalTime;
.end method

.method public abstract readLocalTime11()Lcom/alibaba/fastjson2/time/LocalTime;
.end method

.method public abstract readLocalTime12()Lcom/alibaba/fastjson2/time/LocalTime;
.end method

.method public abstract readLocalTime18()Lcom/alibaba/fastjson2/time/LocalTime;
.end method

.method public abstract readLocalTime5()Lcom/alibaba/fastjson2/time/LocalTime;
.end method

.method public abstract readLocalTime8()Lcom/alibaba/fastjson2/time/LocalTime;
.end method

.method public abstract readMillis19()J
.end method

.method public final readMillisFromString()J
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    const-wide/16 v4, 0x3e8

    .line 11
    const/4 v6, 0x0

    .line 12
    .line 13
    const-wide/16 v7, 0x0

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-boolean v9, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    .line 18
    .line 19
    if-nez v9, :cond_0

    .line 20
    .line 21
    iget-boolean v9, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    .line 22
    .line 23
    if-nez v9, :cond_0

    .line 24
    .line 25
    iget-boolean v9, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    .line 26
    .line 27
    if-nez v9, :cond_0

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    .line 30
    .line 31
    if-eqz v1, :cond_b

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    .line 35
    move-result v1

    .line 36
    .line 37
    const-string v9, "TODO : "

    .line 38
    .line 39
    .line 40
    packed-switch v1, :pswitch_data_0

    .line 41
    .line 42
    :pswitch_0
    goto/16 :goto_1

    .line 43
    .line 44
    .line 45
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 46
    move-result-object v9

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    .line 51
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readMillis19()J

    .line 52
    move-result-wide v9

    .line 53
    .line 54
    cmp-long v11, v9, v7

    .line 55
    .line 56
    if-nez v11, :cond_2

    .line 57
    .line 58
    iget-boolean v11, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 59
    .line 60
    if-nez v11, :cond_1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 65
    move-result-object v9

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    :cond_2
    :goto_0
    return-wide v9

    .line 69
    .line 70
    .line 71
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime18()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 72
    move-result-object v9

    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    .line 77
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime17()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 78
    move-result-object v9

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    .line 83
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime16()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 84
    move-result-object v9

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    .line 89
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime14()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 90
    move-result-object v9

    .line 91
    goto :goto_2

    .line 92
    .line 93
    .line 94
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime12()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 95
    move-result-object v9

    .line 96
    goto :goto_2

    .line 97
    .line 98
    .line 99
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 100
    move-result-object v9

    .line 101
    .line 102
    if-eqz v9, :cond_6

    .line 103
    .line 104
    sget-object v10, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 105
    .line 106
    .line 107
    invoke-static {v9, v10}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 108
    move-result-object v9

    .line 109
    goto :goto_2

    .line 110
    .line 111
    .line 112
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 113
    move-result-object v10

    .line 114
    .line 115
    if-nez v10, :cond_5

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    const-string v1, "0000-00-00"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v1

    .line 126
    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 130
    return-wide v7

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 134
    move-result v1

    .line 135
    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 140
    move-result-wide v0

    .line 141
    return-wide v0

    .line 142
    .line 143
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 162
    throw v1

    .line 163
    .line 164
    :cond_5
    sget-object v9, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 165
    .line 166
    .line 167
    invoke-static {v10, v9}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 168
    move-result-object v9

    .line 169
    goto :goto_2

    .line 170
    .line 171
    .line 172
    :pswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 173
    move-result-object v9

    .line 174
    .line 175
    if-eqz v9, :cond_6

    .line 176
    .line 177
    sget-object v10, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 178
    .line 179
    .line 180
    invoke-static {v9, v10}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 181
    move-result-object v9

    .line 182
    goto :goto_2

    .line 183
    :cond_6
    :goto_1
    move-object v9, v6

    .line 184
    goto :goto_2

    .line 185
    .line 186
    .line 187
    :pswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 188
    move-result-object v10

    .line 189
    .line 190
    if-eqz v10, :cond_1b

    .line 191
    .line 192
    sget-object v9, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 193
    .line 194
    .line 195
    invoke-static {v10, v9}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 196
    move-result-object v9

    .line 197
    .line 198
    :goto_2
    if-eqz v9, :cond_7

    .line 199
    .line 200
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    .line 207
    invoke-static {v9, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 208
    move-result-object v1

    .line 209
    goto :goto_3

    .line 210
    .line 211
    :cond_7
    const/16 v9, 0x14

    .line 212
    .line 213
    if-lt v1, v9, :cond_9

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 217
    move-result-object v9

    .line 218
    .line 219
    if-nez v9, :cond_8

    .line 220
    .line 221
    const/16 v10, 0x20

    .line 222
    .line 223
    if-lt v1, v10, :cond_8

    .line 224
    .line 225
    const/16 v10, 0x23

    .line 226
    .line 227
    if-gt v1, v10, :cond_8

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 231
    move-result-object v1

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 235
    move-result-object v1

    .line 236
    goto :goto_3

    .line 237
    :cond_8
    move-object v1, v9

    .line 238
    goto :goto_3

    .line 239
    :cond_9
    move-object v1, v6

    .line 240
    .line 241
    :goto_3
    if-eqz v1, :cond_b

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->toEpochSecond()J

    .line 245
    move-result-wide v2

    .line 246
    .line 247
    iget-object v0, v1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 250
    .line 251
    iget v0, v0, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 252
    .line 253
    cmp-long v1, v2, v7

    .line 254
    .line 255
    .line 256
    const v6, 0xf4240

    .line 257
    .line 258
    if-gez v1, :cond_a

    .line 259
    .line 260
    if-lez v0, :cond_a

    .line 261
    .line 262
    const-wide/16 v7, 0x1

    .line 263
    add-long/2addr v2, v7

    .line 264
    mul-long/2addr v2, v4

    .line 265
    div-int/2addr v0, v6

    .line 266
    .line 267
    add-int/lit16 v0, v0, -0x3e8

    .line 268
    :goto_4
    int-to-long v0, v0

    .line 269
    add-long/2addr v2, v0

    .line 270
    return-wide v2

    .line 271
    :cond_a
    mul-long/2addr v2, v4

    .line 272
    div-int/2addr v0, v6

    .line 273
    goto :goto_4

    .line 274
    .line 275
    .line 276
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 277
    move-result-object v1

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 281
    move-result v9

    .line 282
    .line 283
    if-nez v9, :cond_1a

    .line 284
    .line 285
    const-string v9, "null"

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    move-result v9

    .line 290
    .line 291
    if-eqz v9, :cond_c

    .line 292
    .line 293
    goto/16 :goto_7

    .line 294
    .line 295
    :cond_c
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 296
    .line 297
    iget-boolean v9, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatMillis:Z

    .line 298
    .line 299
    if-nez v9, :cond_18

    .line 300
    .line 301
    iget-boolean v3, v3, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 302
    .line 303
    if-eqz v3, :cond_d

    .line 304
    .line 305
    goto/16 :goto_6

    .line 306
    .line 307
    :cond_d
    const/16 v3, 0x2d

    .line 308
    .line 309
    if-eqz v2, :cond_11

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 313
    move-result v4

    .line 314
    .line 315
    if-nez v4, :cond_11

    .line 316
    .line 317
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    move-result v0

    .line 322
    .line 323
    if-eqz v0, :cond_10

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 327
    move-result v0

    .line 328
    const/4 v2, 0x4

    .line 329
    .line 330
    if-lt v0, v2, :cond_e

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 334
    move-result v0

    .line 335
    .line 336
    if-eq v0, v3, :cond_f

    .line 337
    .line 338
    .line 339
    :cond_e
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 340
    move-result v0

    .line 341
    .line 342
    if-eqz v0, :cond_f

    .line 343
    .line 344
    .line 345
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 346
    move-result-wide v0

    .line 347
    return-wide v0

    .line 348
    .line 349
    .line 350
    :cond_f
    invoke-static {v1, v6}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis19(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    .line 351
    move-result-wide v0

    .line 352
    return-wide v0

    .line 353
    .line 354
    :cond_10
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 355
    .line 356
    .line 357
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 361
    move-result-object v2

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 365
    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    return-wide v0

    .line 367
    .line 368
    :catch_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    .line 369
    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    const-string v4, "parse date error, "

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    const-string v1, ", expect format "

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 390
    move-result-object v0

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    move-result-object v0

    .line 398
    .line 399
    .line 400
    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 401
    throw v2

    .line 402
    .line 403
    :cond_11
    const-string v4, "0000-00-00T00:00:00"

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    move-result v4

    .line 408
    .line 409
    if-nez v4, :cond_17

    .line 410
    .line 411
    const-string v4, "0001-01-01T00:00:00+08:00"

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    move-result v4

    .line 416
    .line 417
    if-eqz v4, :cond_12

    .line 418
    goto :goto_5

    .line 419
    .line 420
    :cond_12
    const-string v4, "/Date("

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 424
    move-result v4

    .line 425
    .line 426
    if-eqz v4, :cond_15

    .line 427
    .line 428
    const-string v4, ")/"

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 432
    move-result v4

    .line 433
    .line 434
    if-eqz v4, :cond_15

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 438
    move-result v2

    .line 439
    .line 440
    add-int/lit8 v2, v2, -0x2

    .line 441
    const/4 v4, 0x6

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 445
    move-result-object v1

    .line 446
    .line 447
    const/16 v2, 0x2b

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 451
    move-result v2

    .line 452
    const/4 v4, -0x1

    .line 453
    .line 454
    if-ne v2, v4, :cond_13

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 458
    move-result v2

    .line 459
    .line 460
    :cond_13
    if-eq v2, v4, :cond_14

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 464
    move-result-object v1

    .line 465
    .line 466
    .line 467
    :cond_14
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 468
    move-result-wide v0

    .line 469
    return-wide v0

    .line 470
    .line 471
    .line 472
    :cond_15
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 473
    move-result v0

    .line 474
    .line 475
    if-eqz v0, :cond_16

    .line 476
    .line 477
    .line 478
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 479
    move-result-wide v0

    .line 480
    return-wide v0

    .line 481
    .line 482
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 483
    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    const-string v4, "format "

    .line 490
    .line 491
    .line 492
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    const-string v2, " not support, input "

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    move-result-object v1

    .line 508
    .line 509
    .line 510
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    move-result-object v1

    .line 512
    .line 513
    .line 514
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 515
    throw v0

    .line 516
    :cond_17
    :goto_5
    return-wide v7

    .line 517
    .line 518
    .line 519
    :cond_18
    :goto_6
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 520
    move-result-wide v0

    .line 521
    .line 522
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 523
    .line 524
    iget-boolean v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 525
    .line 526
    if-eqz v2, :cond_19

    .line 527
    mul-long/2addr v0, v4

    .line 528
    :cond_19
    return-wide v0

    .line 529
    .line 530
    :cond_1a
    :goto_7
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 531
    return-wide v7

    .line 532
    .line 533
    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 534
    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 545
    move-result-object v2

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    move-result-object v1

    .line 553
    .line 554
    .line 555
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 556
    throw v0

    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readNaN()D
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "not support"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public abstract readNull()V
.end method

.method public abstract readNullOrNewDate()Ljava/util/Date;
.end method

.method public readNumber()Ljava/lang/Number;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public abstract readNumber0()V
.end method

.method public readObject()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    .line 15
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    .line 16
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget v3, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->maxLevel:I

    if-ge v0, v3, :cond_13

    .line 17
    iget-object v0, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Lcom/alibaba/fastjson2/function/Supplier;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 18
    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v6, v8

    cmp-long v0, v6, v3

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    move-object v2, v5

    goto :goto_1

    .line 20
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    goto :goto_0

    .line 21
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson2/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 22
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getInnerMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    :goto_1
    const/4 v6, 0x0

    move v7, v6

    .line 23
    :goto_2
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    .line 25
    :cond_2
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_5

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 27
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_3

    move v6, v1

    :cond_3
    iput-boolean v6, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z

    if-eqz v6, :cond_4

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 29
    :cond_4
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    return-object v0

    .line 30
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_b

    .line 31
    iget-char v8, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_a

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_9

    const/16 v9, 0x30

    if-lt v8, v9, :cond_6

    const/16 v9, 0x39

    if-gt v8, v9, :cond_6

    goto :goto_3

    :cond_6
    const/16 v9, 0x7b

    if-ne v8, v9, :cond_7

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v8

    goto :goto_4

    :cond_7
    const/16 v9, 0x5b

    if-ne v8, v9, :cond_8

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v8

    goto :goto_4

    .line 34
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 35
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v8

    :goto_4
    const/16 v9, 0x3a

    .line 37
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(C)Z

    goto :goto_5

    .line 38
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input end"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_5
    if-nez v7, :cond_d

    .line 39
    iget-object v9, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->ErrorOnNotSupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v11, v11, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v9, v11

    cmp-long v9, v9, v3

    if-eqz v9, :cond_d

    const-string v9, "@type"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_6

    .line 40
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoType not support : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_d
    :goto_6
    iget-char v9, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const-string v10, "illegal input "

    sparse-switch v9, :sswitch_data_0

    packed-switch v9, :pswitch_data_0

    .line 43
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipComment()V

    goto/16 :goto_9

    .line 45
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v9

    invoke-virtual {p0, v0, v8, v9}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Map;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V

    :goto_7
    move-object v9, v5

    goto/16 :goto_8

    .line 47
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v9

    goto :goto_8

    .line 48
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    goto :goto_7

    .line 49
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_8

    .line 50
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v9

    goto :goto_8

    .line 51
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 52
    const-class v9, Ljava/util/Set;

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_8

    .line 53
    :cond_f
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfInfinity()Z

    move-result v9

    if-eqz v9, :cond_10

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 55
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_8

    .line 56
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_1
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v9

    goto :goto_8

    .line 59
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v9

    :goto_8
    if-nez v9, :cond_11

    .line 60
    iget-object v10, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v12, v12, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v10, v12

    cmp-long v10, v10, v3

    if-eqz v10, :cond_11

    goto :goto_9

    :cond_11
    if-eqz v2, :cond_12

    .line 61
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 62
    :cond_12
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 63
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level too large : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/fastjson2/JSONReader;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2b -> :sswitch_6
        0x2d -> :sswitch_6
        0x49 -> :sswitch_5
        0x53 -> :sswitch_4
        0x5b -> :sswitch_3
        0x66 -> :sswitch_2
        0x6e -> :sswitch_1
        0x74 -> :sswitch_2
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final readObject(Ljava/lang/Object;J)V
    .locals 6

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    or-long/2addr v2, p2

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    .line 9
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/Object;J)V

    return-void

    .line 10
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 11
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    return-void

    .line 12
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "read object not support"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "object is null"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs readObject(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 2
    aget-object v3, p2, v2

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->readObject(Ljava/lang/Object;J)V

    return-void
.end method

.method public abstract readPattern()Ljava/lang/String;
.end method

.method public abstract readReference()Ljava/lang/String;
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public readStringArray()[Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x6e

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    return-object v2

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_7

    .line 21
    const/4 v0, 0x0

    .line 22
    move v1, v0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    .line 26
    move-result v3

    .line 27
    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    new-array v2, v0, [Ljava/lang/String;

    .line 33
    :cond_1
    array-length v0, v2

    .line 34
    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    return-object v2

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, [Ljava/lang/String;

    .line 43
    return-object v0

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 47
    move-result v3

    .line 48
    .line 49
    if-nez v3, :cond_6

    .line 50
    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    const/16 v2, 0x10

    .line 54
    .line 55
    new-array v2, v2, [Ljava/lang/String;

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    array-length v3, v2

    .line 58
    .line 59
    if-ne v1, v3, :cond_5

    .line 60
    array-length v3, v2

    .line 61
    .line 62
    shl-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    check-cast v2, [Ljava/lang/String;

    .line 69
    .line 70
    :cond_5
    :goto_1
    add-int/lit8 v3, v1, 0x1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    aput-object v4, v2, v1

    .line 77
    move v1, v3

    .line 78
    goto :goto_0

    .line 79
    .line 80
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 81
    .line 82
    const-string v1, "input end"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0

    .line 91
    .line 92
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 93
    .line 94
    const/16 v1, 0x22

    .line 95
    .line 96
    if-eq v0, v1, :cond_9

    .line 97
    .line 98
    const/16 v1, 0x27

    .line 99
    .line 100
    if-ne v0, v1, :cond_8

    .line 101
    goto :goto_2

    .line 102
    .line 103
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 104
    .line 105
    const-string v1, "not support input"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    .line 112
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 113
    throw v0

    .line 114
    .line 115
    .line 116
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_a

    .line 124
    return-object v2

    .line 125
    .line 126
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 127
    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    const-string v3, "not support input "

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    .line 150
    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v1
.end method

.method public final readStringNotMatch()Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 3
    .line 4
    const/16 v1, 0x2b

    .line 5
    .line 6
    if-eq v0, v1, :cond_7

    .line 7
    .line 8
    const/16 v1, 0x2d

    .line 9
    .line 10
    if-eq v0, v1, :cond_7

    .line 11
    .line 12
    const/16 v1, 0x5b

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eq v0, v1, :cond_4

    .line 16
    .line 17
    const/16 v1, 0x66

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x6e

    .line 22
    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    const/16 v1, 0x74

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x7b

    .line 30
    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    .line 34
    packed-switch v0, :pswitch_data_0

    .line 35
    .line 36
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v2, "illegal input : "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    .line 65
    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toString(Ljava/util/Map;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    .line 76
    return-object v2

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->boolValue:Z

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const-string v0, "true"

    .line 87
    return-object v0

    .line 88
    .line 89
    :cond_3
    const-string v0, "false"

    .line 90
    return-object v0

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 98
    move-result v1

    .line 99
    const/4 v3, 0x1

    .line 100
    .line 101
    if-ne v1, v3, :cond_6

    .line 102
    const/4 v1, 0x0

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    if-nez v1, :cond_5

    .line 109
    return-object v2

    .line 110
    .line 111
    :cond_5
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 112
    .line 113
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    .line 114
    .line 115
    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->DisableStringArrayUnwrapping:Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 116
    .line 117
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    .line 118
    and-long/2addr v2, v4

    .line 119
    .line 120
    const-wide/16 v4, 0x0

    .line 121
    .line 122
    cmp-long v2, v2, v4

    .line 123
    .line 124
    if-nez v2, :cond_6

    .line 125
    .line 126
    instance-of v2, v1, Ljava/lang/String;

    .line 127
    .line 128
    if-eqz v2, :cond_6

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    return-object v0

    .line 134
    .line 135
    .line 136
    :cond_6
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->toString(Ljava/util/List;)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    return-object v0

    .line 139
    .line 140
    .line 141
    :cond_7
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    return-object v0

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public readTypeHashCode()J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readValueHashCode()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public abstract readUUID()Ljava/util/UUID;
.end method

.method public abstract readValueHashCode()J
.end method

.method public readZonedDateTime()Lcom/alibaba/fastjson2/time/ZonedDateTime;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isInt()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-wide/16 v1, 0x3e8

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    .line 12
    move-result-wide v3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    mul-long/2addr v3, v1

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-eqz v0, :cond_e

    .line 41
    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 43
    .line 44
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->dateFormat:Ljava/lang/String;

    .line 45
    const/4 v4, 0x0

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmss19:Z

    .line 50
    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMddhhmmssT19:Z

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatyyyyMMdd8:Z

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatISO8601:Z

    .line 62
    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->getStringLength()I

    .line 67
    move-result v0

    .line 68
    .line 69
    .line 70
    packed-switch v0, :pswitch_data_0

    .line 71
    .line 72
    .line 73
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    return-object v0

    .line 78
    :cond_3
    :goto_0
    move-object v0, v4

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime20()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 83
    move-result-object v0

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime19()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 88
    move-result-object v0

    .line 89
    goto :goto_1

    .line 90
    .line 91
    .line 92
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime18()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 93
    move-result-object v0

    .line 94
    goto :goto_1

    .line 95
    .line 96
    .line 97
    :pswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime17()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 98
    move-result-object v0

    .line 99
    goto :goto_1

    .line 100
    .line 101
    .line 102
    :pswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDateTime16()Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 103
    move-result-object v0

    .line 104
    goto :goto_1

    .line 105
    .line 106
    .line 107
    :pswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate11()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    sget-object v3, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 111
    .line 112
    .line 113
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 114
    move-result-object v0

    .line 115
    goto :goto_1

    .line 116
    .line 117
    .line 118
    :pswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate10()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    if-nez v0, :cond_4

    .line 122
    goto :goto_0

    .line 123
    .line 124
    :cond_4
    sget-object v3, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 128
    move-result-object v0

    .line 129
    goto :goto_1

    .line 130
    .line 131
    .line 132
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate9()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    if-nez v0, :cond_5

    .line 136
    goto :goto_0

    .line 137
    .line 138
    :cond_5
    sget-object v3, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 139
    .line 140
    .line 141
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 142
    move-result-object v0

    .line 143
    goto :goto_1

    .line 144
    .line 145
    .line 146
    :pswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readLocalDate8()Lcom/alibaba/fastjson2/time/LocalDate;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    if-nez v0, :cond_6

    .line 150
    goto :goto_0

    .line 151
    .line 152
    :cond_6
    sget-object v3, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 153
    .line 154
    .line 155
    invoke-static {v0, v3}, Lcom/alibaba/fastjson2/time/LocalDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    :goto_1
    if-eqz v0, :cond_7

    .line 159
    .line 160
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    .line 167
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofLocal(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 168
    move-result-object v0

    .line 169
    return-object v0

    .line 170
    .line 171
    .line 172
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 177
    move-result v3

    .line 178
    .line 179
    if-nez v3, :cond_d

    .line 180
    .line 181
    const-string v3, "null"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    move-result v3

    .line 186
    .line 187
    if-eqz v3, :cond_8

    .line 188
    goto :goto_2

    .line 189
    .line 190
    :cond_8
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 194
    move-result-object v3

    .line 195
    .line 196
    if-eqz v3, :cond_a

    .line 197
    .line 198
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 199
    .line 200
    iget-boolean v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->formatHasHour:Z

    .line 201
    .line 202
    if-nez v1, :cond_9

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDate;

    .line 206
    move-result-object v0

    .line 207
    .line 208
    sget-object v1, Lcom/alibaba/fastjson2/time/LocalTime;->MIN:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 209
    .line 210
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 214
    move-result-object v2

    .line 215
    .line 216
    .line 217
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDate;Lcom/alibaba/fastjson2/time/LocalTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 218
    move-result-object v0

    .line 219
    return-object v0

    .line 220
    .line 221
    .line 222
    :cond_9
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->parseLocalDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 223
    move-result-object v0

    .line 224
    .line 225
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 229
    move-result-object v1

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->of(Lcom/alibaba/fastjson2/time/LocalDateTime;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 233
    move-result-object v0

    .line 234
    return-object v0

    .line 235
    .line 236
    .line 237
    :cond_a
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 238
    move-result v3

    .line 239
    .line 240
    if-eqz v3, :cond_c

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 244
    move-result-wide v3

    .line 245
    .line 246
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 247
    .line 248
    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->formatUnixTime:Z

    .line 249
    .line 250
    if-eqz v0, :cond_b

    .line 251
    mul-long/2addr v3, v1

    .line 252
    .line 253
    .line 254
    :cond_b
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 255
    move-result-object v0

    .line 256
    .line 257
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 261
    move-result-object v1

    .line 262
    .line 263
    .line 264
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 265
    move-result-object v0

    .line 266
    return-object v0

    .line 267
    .line 268
    .line 269
    :cond_c
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseZonedDateTime(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 270
    move-result-object v0

    .line 271
    return-object v0

    .line 272
    :cond_d
    :goto_2
    return-object v4

    .line 273
    .line 274
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    const-string v2, "TODO : "

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    move-result-object v1

    .line 294
    .line 295
    .line 296
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 297
    throw v0

    .line 298
    nop

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public abstract readZonedDateTimeX(I)Lcom/alibaba/fastjson2/time/ZonedDateTime;
.end method

.method public reset(Lcom/alibaba/fastjson2/JSONReader$SavePoint;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->offset:I

    .line 3
    .line 4
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReader;->offset:I

    .line 5
    .line 6
    iget p1, p1, Lcom/alibaba/fastjson2/JSONReader$SavePoint;->current:I

    .line 7
    int-to-char p1, p1

    .line 8
    .line 9
    iput-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 10
    return-void
.end method

.method public final setTypeRedirect(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONReader;->typeRedirect:Z

    .line 3
    return-void
.end method

.method public abstract skipComment()V
.end method

.method public abstract skipName()Z
.end method

.method public abstract skipValue()V
.end method

.method public startArray()I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    const v0, 0x7fffffff

    .line 10
    return v0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v2, "illegal input, expect \'[\', but "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0
.end method

.method public final toInt(Ljava/util/List;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v1, v0, Ljava/lang/Number;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Ljava/lang/Number;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    .line 25
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    .line 36
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    const-string v2, "parseLong error, field : value "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0
.end method

.method public final toInt32(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x2c

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    move-result v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x4

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "parseInt error, value : "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toIntValue(Ljava/lang/Object;)I

    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method public final toInt64(Ljava/lang/String;)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    const/16 v0, 0x2c

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    move-result v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x4

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    move-result v0

    .line 26
    .line 27
    const/16 v1, 0xa

    .line 28
    .line 29
    if-le v0, v1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 33
    move-result v0

    .line 34
    .line 35
    const/16 v1, 0x28

    .line 36
    .line 37
    if-ge v0, v1, :cond_1

    .line 38
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;Lcom/alibaba/fastjson2/time/ZoneId;)J

    .line 45
    move-result-wide v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-wide v0

    .line 47
    .line 48
    :catch_0
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    const-string v2, "parseLong error, value : "

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v0

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toLongValue(Ljava/lang/Object;)J

    .line 73
    move-result-wide v0

    .line 74
    return-wide v0
.end method

.method public final toLong(Ljava/util/Map;)J
    .locals 3

    .line 1
    .line 2
    const-string v0, "val"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v1, v0, Ljava/lang/Number;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Ljava/lang/Number;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 16
    move-result p1

    .line 17
    int-to-long v0, p1

    .line 18
    return-wide v0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v2, "parseLong error, value : "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method public final toNumber(Ljava/util/List;)Ljava/lang/Number;
    .locals 2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 6
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Ljava/lang/Number;

    return-object p1

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 9
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toNumber(Ljava/util/Map;)Ljava/lang/Number;
    .locals 1

    .line 1
    const-string v0, "val"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Number;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->of()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    .line 5
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->of()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->setRootObject(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/Map;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final valueError()Lcom/alibaba/fastjson2/JSONException;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string v1, "illegal value"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method public wasNull()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    .line 3
    return v0
.end method
