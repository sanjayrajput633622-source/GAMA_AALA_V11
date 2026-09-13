.class public abstract Lcom/alibaba/fastjson2/JSONWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONWriter$Path;,
        Lcom/alibaba/fastjson2/JSONWriter$Feature;,
        Lcom/alibaba/fastjson2/JSONWriter$Context;
    }
.end annotation


# static fields
.field static final DIGITS:[C

.field static final NONE_DIRECT_FEATURES:J

.field static final PRETTY_2_SPACE:B = 0x2t

.field static final PRETTY_4_SPACE:B = 0x4t

.field static final PRETTY_NON:B = 0x0t

.field static final PRETTY_TAB:B = 0x1t


# instance fields
.field protected final charset:Ljava/nio/charset/Charset;

.field public final context:Lcom/alibaba/fastjson2/JSONWriter$Context;

.field protected indent:I

.field public final jsonb:Z

.field protected lastReference:Ljava/lang/String;

.field protected level:I

.field protected final maxArraySize:I

.field protected off:I

.field protected path:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field protected pretty:B

.field protected final quote:C

.field protected refs:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson2/JSONWriter$Path;",
            ">;"
        }
    .end annotation
.end field

.field protected rootObject:Ljava/lang/Object;

.field protected startObject:Z

.field public final symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

.field public final useSingleQuote:Z

.field public final utf16:Z

.field public final utf8:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    const/16 v0, 0x10

    .line 3
    .line 4
    new-array v0, v0, [C

    .line 5
    .line 6
    .line 7
    fill-array-data v0, :array_0

    .line 8
    .line 9
    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter;->DIGITS:[C

    .line 10
    .line 11
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 12
    .line 13
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 14
    .line 15
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 16
    .line 17
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 18
    or-long/2addr v0, v2

    .line 19
    .line 20
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 21
    .line 22
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 23
    or-long/2addr v0, v2

    .line 24
    .line 25
    sput-wide v0, Lcom/alibaba/fastjson2/JSONWriter;->NONE_DIRECT_FEATURES:J

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
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
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;ZLjava/nio/charset/Charset;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/alibaba/fastjson2/JSONWriter;->charset:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 12
    const/4 p2, 0x0

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    if-ne p4, v1, :cond_0

    .line 20
    move v1, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, p2

    .line 23
    .line 24
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    .line 25
    .line 26
    if-nez p3, :cond_1

    .line 27
    .line 28
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 29
    .line 30
    if-ne p4, v1, :cond_1

    .line 31
    move p4, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move p4, p2

    .line 34
    .line 35
    :goto_1
    iput-boolean p4, p0, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    .line 36
    .line 37
    const-wide/16 v1, 0x0

    .line 38
    .line 39
    if-nez p3, :cond_2

    .line 40
    .line 41
    iget-wide p3, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 42
    .line 43
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UseSingleQuotes:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 44
    .line 45
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 46
    and-long/2addr p3, v3

    .line 47
    .line 48
    cmp-long p3, p3, v1

    .line 49
    .line 50
    if-eqz p3, :cond_2

    .line 51
    move p3, v0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    move p3, p2

    .line 54
    .line 55
    :goto_2
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->useSingleQuote:Z

    .line 56
    .line 57
    if-eqz p3, :cond_3

    .line 58
    .line 59
    const/16 p3, 0x27

    .line 60
    goto :goto_3

    .line 61
    .line 62
    :cond_3
    const/16 p3, 0x22

    .line 63
    .line 64
    :goto_3
    iput-char p3, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    .line 65
    .line 66
    iget-wide p3, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 67
    .line 68
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->LargeObject:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 69
    .line 70
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 71
    and-long/2addr v3, p3

    .line 72
    .line 73
    cmp-long p1, v3, v1

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    const/high16 p1, 0x40000000    # 2.0f

    .line 78
    goto :goto_4

    .line 79
    .line 80
    :cond_4
    const/high16 p1, 0x4000000

    .line 81
    .line 82
    :goto_4
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->maxArraySize:I

    .line 83
    .line 84
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormatWith4Space:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 85
    .line 86
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 87
    and-long/2addr v3, p3

    .line 88
    .line 89
    cmp-long p1, v3, v1

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    const/4 p1, 0x4

    .line 93
    .line 94
    iput-byte p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 95
    return-void

    .line 96
    .line 97
    :cond_5
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormatWith2Space:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 98
    .line 99
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 100
    and-long/2addr v3, p3

    .line 101
    .line 102
    cmp-long p1, v3, v1

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    const/4 p1, 0x2

    .line 106
    .line 107
    iput-byte p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 108
    return-void

    .line 109
    .line 110
    :cond_6
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 111
    .line 112
    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 113
    and-long/2addr p3, v3

    .line 114
    .line 115
    cmp-long p1, p3, v1

    .line 116
    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 120
    return-void

    .line 121
    .line 122
    :cond_7
    iput-byte p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 123
    return-void
.end method

.method private static isWriteTypeInfoGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Class;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public static of()Lcom/alibaba/fastjson2/JSONWriter;
    .locals 5

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 2
    sget-wide v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->OptimizedForAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriterUTF16;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-object v1
.end method

.method public static of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 4

    if-nez p0, :cond_0

    .line 8
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p0

    .line 9
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->OptimizedForAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-object v0

    .line 11
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-object v0
.end method

.method public static varargs of(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 1

    .line 5
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 7
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 4

    .line 12
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p0

    .line 13
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->OptimizedForAscii:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-object v0
.end method

.method public static ofJSONB()Lcom/alibaba/fastjson2/JSONWriter;
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    return-object v0
.end method

.method public static ofJSONB(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 2

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    return-object v0
.end method

.method public static ofJSONB(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 1

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    return-object v0
.end method

.method public static ofJSONB(Lcom/alibaba/fastjson2/SymbolTable;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 3

    .line 5
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    return-object v0
.end method

.method public static varargs ofJSONB([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 3

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterJSONB;

    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v1, v2, p0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONWriterJSONB;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;Lcom/alibaba/fastjson2/SymbolTable;)V

    return-object v0
.end method

.method public static ofPretty()Lcom/alibaba/fastjson2/JSONWriter;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->of([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPretty(Lcom/alibaba/fastjson2/JSONWriter;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 5

    .line 2
    iget-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-byte v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->pretty:B

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    :cond_0
    return-object p0
.end method

.method public static varargs ofUTF16([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterUTF16;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterUTF16;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    .line 10
    return-object v0
.end method

.method public static ofUTF8()Lcom/alibaba/fastjson2/JSONWriter;
    .locals 2

    .line 1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-object v1
.end method

.method public static ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 1

    .line 3
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-object v0
.end method

.method public static varargs ofUTF8([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;
    .locals 1

    .line 4
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriterUTF8;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONWriterUTF8;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Context;)V

    return-object v0
.end method

.method private setPath0(ILjava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    if-nez p1, :cond_2

    .line 9
    .line 10
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->child0:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3, p1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;I)V

    .line 21
    .line 22
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->child0:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v2, 0x1

    .line 25
    .line 26
    if-ne p1, v2, :cond_4

    .line 27
    .line 28
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->child1:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3, p1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;I)V

    .line 39
    .line 40
    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->child1:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;I)V

    .line 49
    .line 50
    :goto_0
    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 53
    .line 54
    if-ne p2, p1, :cond_5

    .line 55
    .line 56
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    .line 60
    .line 61
    if-eqz p1, :cond_7

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    check-cast p1, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 68
    .line 69
    if-nez p1, :cond_6

    .line 70
    goto :goto_2

    .line 71
    .line 72
    .line 73
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter$Path;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    .line 77
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    .line 78
    .line 79
    if-nez p1, :cond_8

    .line 80
    .line 81
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 82
    .line 83
    const/16 v0, 0x8

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 87
    .line 88
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    .line 89
    .line 90
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-object v1
.end method


# virtual methods
.method public final checkAndWriteTypeName(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    and-long/2addr v2, v0

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v2, v2, v4

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    if-nez p1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    if-ne v2, p2, :cond_2

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_2
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 29
    .line 30
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 31
    and-long/2addr v6, v0

    .line 32
    .line 33
    cmp-long p2, v6, v4

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    const-class p2, Ljava/util/HashMap;

    .line 38
    .line 39
    if-eq v2, p2, :cond_4

    .line 40
    .line 41
    const-class p2, Ljava/util/ArrayList;

    .line 42
    .line 43
    if-ne v2, p2, :cond_3

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 47
    .line 48
    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 49
    and-long/2addr v0, v6

    .line 50
    .line 51
    cmp-long p2, v0, v4

    .line 52
    .line 53
    if-eqz p2, :cond_5

    .line 54
    .line 55
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 56
    .line 57
    if-ne p1, p2, :cond_5

    .line 58
    :cond_4
    :goto_0
    return-void

    .line 59
    .line 60
    .line 61
    :cond_5
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public abstract close()V
.end method

.method public final config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    return-void
.end method

.method public final varargs config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    return-void
.end method

.method public final containsReference(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public abstract endArray()V
.end method

.method public abstract endObject()V
.end method

.method public abstract flushTo(Ljava/io/OutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flushTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public flushTo(Ljava/io/Writer;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->off:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "flushTo error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract getBytes()[B
.end method

.method public abstract getBytes(Ljava/nio/charset/Charset;)[B
.end method

.method public final getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->charset:Ljava/nio/charset/Charset;

    .line 3
    return-object v0
.end method

.method public final getContext()Lcom/alibaba/fastjson2/JSONWriter$Context;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    return-object v0
.end method

.method public final getFeatures()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    return-wide v0
.end method

.method public final getFeatures(J)J
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

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
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v0, p1, p1, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public final getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter$Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter$Path;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :goto_0
    const-string p1, "$"

    return-object p1
.end method

.method public final getSymbolTable()Lcom/alibaba/fastjson2/SymbolTable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    .line 3
    return-object v0
.end method

.method public final hasFilter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    return v0
.end method

.method public final hasFilter(J)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    if-nez v1, :cond_1

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hasFilter(Z)Z
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isBeanToArray()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

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

.method public final isEnabled(J)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

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

.method public final isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isIgnoreErrorGetter()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

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

.method public final isIgnoreNoneSerializable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

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

.method public final isIgnoreNoneSerializable(Ljava/lang/Object;)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-class v0, Ljava/io/Serializable;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isRefDetect()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x400000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRefDetect(Ljava/lang/Object;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x400000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isUTF16()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->utf16:Z

    .line 3
    return v0
.end method

.method public final isUTF8()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->utf8:Z

    .line 3
    return v0
.end method

.method public final isUseSingleQuotes()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->useSingleQuote:Z

    .line 3
    return v0
.end method

.method public final isWriteMapTypeInfo(Ljava/lang/Object;Ljava/lang/Class;J)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    if-ne v1, p2, :cond_1

    .line 11
    return v0

    .line 12
    .line 13
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 14
    .line 15
    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 16
    or-long/2addr p3, v2

    .line 17
    .line 18
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 19
    .line 20
    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 21
    and-long/2addr v2, p3

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long p2, v2, v4

    .line 26
    .line 27
    if-nez p2, :cond_2

    .line 28
    return v0

    .line 29
    .line 30
    :cond_2
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 31
    .line 32
    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 33
    and-long/2addr v2, p3

    .line 34
    .line 35
    cmp-long p2, v2, v4

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    const-class p2, Ljava/util/HashMap;

    .line 40
    .line 41
    if-ne v1, p2, :cond_3

    .line 42
    return v0

    .line 43
    .line 44
    :cond_3
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 45
    .line 46
    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 47
    and-long/2addr p3, v1

    .line 48
    .line 49
    cmp-long p2, p3, v4

    .line 50
    .line 51
    if-eqz p2, :cond_5

    .line 52
    .line 53
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 54
    .line 55
    if-eq p1, p2, :cond_4

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    return v0

    .line 58
    :cond_5
    :goto_0
    const/4 p1, 0x1

    .line 59
    return p1
.end method

.method public final isWriteNulls()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

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

.method public final isWriteTypeInfo(Ljava/lang/Object;)Z
    .locals 8

    .line 21
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 22
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 23
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 25
    const-class v6, Ljava/util/HashMap;

    if-eq v2, v6, :cond_1

    const-class v6, Ljava/util/ArrayList;

    if-ne v2, v6, :cond_2

    :cond_1
    return v3

    .line 26
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isWriteTypeInfo(Ljava/lang/Object;J)Z
    .locals 6

    .line 49
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    or-long/2addr p2, v0

    .line 50
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 51
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, p2

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-class v4, Ljava/util/HashMap;

    if-eq v0, v4, :cond_1

    const-class v4, Ljava/util/ArrayList;

    if-ne v0, v4, :cond_2

    :cond_1
    return v1

    .line 54
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p2, v4

    cmp-long p2, p2, v2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    if-eq p1, p2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 2
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_2

    return v3

    .line 4
    :cond_2
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v6, v0

    cmp-long p2, v6, v4

    if-eqz p2, :cond_4

    .line 5
    const-class p2, Ljava/util/HashMap;

    if-eq v2, p2, :cond_3

    const-class p2, Ljava/util/ArrayList;

    if-ne v2, p2, :cond_4

    :cond_3
    return v3

    .line 6
    :cond_4
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v6

    cmp-long p2, v0, v4

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    if-eq p1, p2, :cond_5

    goto :goto_0

    :cond_5
    return v3

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;J)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_1

    return v0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    or-long/2addr p3, v2

    .line 43
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, p3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    return v0

    .line 44
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 45
    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_4

    if-eqz p2, :cond_3

    .line 46
    const-class v1, Ljava/lang/Object;

    if-eq p2, v1, :cond_3

    const-class v1, Ljava/util/Map;

    if-eq p2, v1, :cond_3

    const-class v1, Ljava/util/AbstractMap;

    if-ne p2, v1, :cond_5

    :cond_3
    return v0

    .line 47
    :cond_4
    const-class p2, Ljava/util/ArrayList;

    if-ne v1, p2, :cond_5

    return v0

    .line 48
    :cond_5
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p3, v1

    cmp-long p2, p3, v4

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    if-eq p1, p2, :cond_6

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 8
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    if-nez p1, :cond_0

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 10
    instance-of v6, p2, Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 11
    check-cast p2, Ljava/lang/Class;

    goto :goto_0

    .line 12
    :cond_1
    instance-of v6, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_2

    .line 13
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfoGenericArray(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v3

    .line 14
    :cond_2
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_3

    .line 15
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 16
    instance-of v6, p2, Ljava/lang/Class;

    if-eqz v6, :cond_3

    .line 17
    check-cast p2, Ljava/lang/Class;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-ne v2, p2, :cond_4

    return v3

    .line 18
    :cond_4
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v6, v0

    cmp-long p2, v6, v4

    if-eqz p2, :cond_6

    .line 19
    const-class p2, Ljava/util/HashMap;

    if-eq v2, p2, :cond_5

    const-class p2, Ljava/util/ArrayList;

    if-ne v2, p2, :cond_6

    :cond_5
    return v3

    .line 20
    :cond_6
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v6

    cmp-long p2, v0, v4

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    if-eq p1, p2, :cond_7

    goto :goto_1

    :cond_7
    return v3

    :cond_8
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_2
    return v3
.end method

.method public final isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    or-long/2addr p3, v0

    .line 28
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    instance-of v4, p2, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 31
    check-cast p2, Ljava/lang/Class;

    goto :goto_0

    .line 32
    :cond_2
    instance-of v4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_3

    .line 33
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 34
    instance-of v4, p2, Ljava/lang/Class;

    if-eqz v4, :cond_3

    .line 35
    check-cast p2, Ljava/lang/Class;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-ne v0, p2, :cond_4

    return v1

    .line 36
    :cond_4
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, p3

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    .line 37
    const-class v4, Ljava/util/HashMap;

    if-ne v0, v4, :cond_6

    if-eqz p2, :cond_5

    .line 38
    const-class v0, Ljava/lang/Object;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/util/Map;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/util/AbstractMap;

    if-ne p2, v0, :cond_7

    :cond_5
    return v1

    .line 39
    :cond_6
    const-class p2, Ljava/util/ArrayList;

    if-ne v0, p2, :cond_7

    return v1

    .line 40
    :cond_7
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p3, v4

    cmp-long p2, p3, v2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    if-eq p1, p2, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final level()I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 3
    return v0
.end method

.method public final newCapacity(II)I
    .locals 1

    .line 1
    .line 2
    shr-int/lit8 v0, p2, 0x1

    .line 3
    add-int/2addr p2, v0

    .line 4
    .line 5
    sub-int v0, p2, p1

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    move p2, p1

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->maxArraySize:I

    .line 11
    .line 12
    if-le p2, v0, :cond_2

    .line 13
    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    return v0

    .line 16
    .line 17
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    .line 18
    .line 19
    const-string p2, "try enabling LargeObject feature instead"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 23
    throw p1

    .line 24
    :cond_2
    return p2
.end method

.method public final overflowLevel()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "level too large : "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->level:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public final popPath(Ljava/lang/Object;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 7
    .line 8
    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 9
    .line 10
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 11
    .line 12
    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 13
    and-long/2addr v1, v3

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v1, v1, v3

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 22
    .line 23
    if-eq p1, v1, :cond_1

    .line 24
    .line 25
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 26
    .line 27
    if-ne p1, v1, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final removeReference(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final setPath(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 20
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath0(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setPath(Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 10
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-ne v0, v2, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getRootParentPath()Lcom/alibaba/fastjson2/JSONWriter$Path;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getPath(Lcom/alibaba/fastjson2/JSONWriter$Path;)Lcom/alibaba/fastjson2/JSONWriter$Path;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 14
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    if-ne p2, p1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-nez v2, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONWriter$Path;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_5

    .line 18
    new-instance p1, Ljava/util/IdentityHashMap;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final setPath(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Path;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    invoke-direct {v0, v2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    if-ne p2, p1, :cond_1

    .line 4
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-nez p1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter$Path;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_4

    .line 8
    new-instance p1, Ljava/util/IdentityHashMap;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->refs:Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final setRootObject(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 3
    .line 4
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 7
    return-void
.end method

.method public abstract size()I
.end method

.method public abstract startArray()V
.end method

.method public startArray(I)V
    .locals 1

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startArray(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract startObject()V
.end method

.method public write(Lcom/alibaba/fastjson2/JSONObject;)V
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write(Ljava/util/Map;)V

    return-void
.end method

.method public write(Ljava/util/List;)V
    .locals 10

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->PrettyFormat:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 5
    invoke-interface/range {v3 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_1
    move-object v4, p0

    move-object v5, p1

    const/16 p1, 0x5b

    .line 6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write0(C)V

    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 8
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_2

    const/16 v1, 0x2c

    .line 9
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->write0(C)V

    .line 10
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/16 p1, 0x5d

    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write0(C)V

    return-void
.end method

.method public write(Ljava/util/Map;)V
    .locals 11

    if-nez p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 p1, 0x7b

    const/16 v0, 0x7d

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(CC)V

    .line 15
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-wide v4, Lcom/alibaba/fastjson2/JSONWriter;->NONE_DIRECT_FEATURES:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 18
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    move-object v3, p0

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 20
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 24
    iget-object v7, v3, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v7, v9

    cmp-long v7, v7, v4

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 26
    :cond_4
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 28
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    .line 29
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method

.method public abstract write0(C)V
.end method

.method public writeAny(Ljava/lang/Object;)V
    .locals 9

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 16
    move-result-object v2

    .line 17
    const/4 v6, 0x0

    .line 18
    .line 19
    const-wide/16 v7, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v3, p0

    .line 22
    move-object v4, p1

    .line 23
    .line 24
    .line 25
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 26
    return-void
.end method

.method public writeArrayNull()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "[]"

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "null"

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeArrayNull(J)V
    .locals 4

    .line 5
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 6
    const-string p1, "[]"

    goto :goto_0

    .line 7
    :cond_0
    const-string p1, "null"

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public final writeAs(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 8

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 12
    move-result-object v1

    .line 13
    const/4 v5, 0x0

    .line 14
    .line 15
    const-wide/16 v6, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v2, p0

    .line 18
    move-object v3, p1

    .line 19
    .line 20
    .line 21
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 22
    return-void
.end method

.method public abstract writeBase64([B)V
.end method

.method public final writeBigInt(Ljava/math/BigInteger;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBigInt(Ljava/math/BigInteger;J)V

    return-void
.end method

.method public abstract writeBigInt(Ljava/math/BigInteger;J)V
.end method

.method public writeBinary([B)V
    .locals 4

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 9
    .line 10
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    and-long/2addr v0, v2

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBase64([B)V

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    array-length v1, p1

    .line 31
    .line 32
    if-ge v0, v1, :cond_3

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 38
    .line 39
    :cond_2
    aget-byte v1, p1, v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 49
    return-void
.end method

.method public writeBool(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBooleanAsNumber:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x31

    goto :goto_0

    :cond_0
    const/16 p1, 0x30

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->write0(C)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    const-string p1, "true"

    goto :goto_1

    :cond_2
    const-string p1, "false"

    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeBool([Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 8
    :cond_1
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public final writeBooleanNull()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    .line 10
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 11
    .line 12
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 13
    or-long/2addr v2, v4

    .line 14
    and-long/2addr v0, v2

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 29
    return-void
.end method

.method public abstract writeChar(C)V
.end method

.method public abstract writeColon()V
.end method

.method public abstract writeComma()V
.end method

.method public abstract writeDateTime14(IIIIII)V
.end method

.method public abstract writeDateTime19(IIIIII)V
.end method

.method public abstract writeDateTimeISO8601(IIIIIIIIZ)V
.end method

.method public abstract writeDateYYYMMDD10(III)V
.end method

.method public abstract writeDateYYYMMDD8(III)V
.end method

.method public final writeDecimal(Ljava/math/BigDecimal;)V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void
.end method

.method public final writeDecimal(Ljava/math/BigDecimal;J)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void
.end method

.method public abstract writeDecimal(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V
.end method

.method public final writeDecimalNull()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    and-long/2addr v2, v0

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v2, v2, v4

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 24
    .line 25
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 26
    and-long/2addr v0, v2

    .line 27
    .line 28
    cmp-long v0, v0, v4

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    const/4 v0, 0x0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 35
    return-void

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 39
    return-void
.end method

.method public abstract writeDouble(D)V
.end method

.method public final writeDouble(DLjava/text/DecimalFormat;)V
    .locals 1

    if-eqz p3, :cond_3

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void
.end method

.method public abstract writeDouble([D)V
.end method

.method public final writeDouble([DLjava/text/DecimalFormat;)V
    .locals 3

    if-eqz p2, :cond_4

    .line 7
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 10
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 12
    :cond_2
    aget-wide v1, p1, v0

    invoke-virtual {p2, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble([D)V

    return-void
.end method

.method public writeDoubleArray(DD)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 16
    return-void
.end method

.method public writeEnum(Ljava/lang/Enum;)V
    .locals 6

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 9
    .line 10
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 11
    .line 12
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 13
    .line 14
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 15
    and-long/2addr v2, v0

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v2, v2, v4

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 32
    .line 33
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 34
    and-long/2addr v0, v2

    .line 35
    .line 36
    cmp-long v0, v0, v4

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 46
    return-void

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    move-result p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 54
    return-void
.end method

.method public abstract writeFloat(F)V
.end method

.method public final writeFloat(FLjava/text/DecimalFormat;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v0, p1

    .line 3
    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    return-void
.end method

.method public final writeFloat(Ljava/lang/Float;)V
    .locals 2

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNumberNull()V

    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDouble(D)V

    return-void
.end method

.method public writeFloat([F)V
    .locals 2

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 11
    :cond_1
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public final writeFloat([FLjava/text/DecimalFormat;)V
    .locals 3

    if-eqz p2, :cond_4

    .line 13
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 16
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 18
    :cond_2
    aget v1, p1, v0

    float-to-double v1, v1

    invoke-virtual {p2, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void

    .line 21
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeFloat([F)V

    return-void
.end method

.method public abstract writeHex([B)V
.end method

.method public writeInstant(JI)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    .line 3
    .line 4
    const-string p2, "TODO"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public abstract writeInt16(S)V
.end method

.method public writeInt16([S)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 5
    :cond_1
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt16(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public abstract writeInt32(I)V
.end method

.method public final writeInt32(ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method

.method public writeInt32(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method

.method public abstract writeInt32([I)V
.end method

.method public abstract writeInt64(J)V
.end method

.method public writeInt64(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64Null()V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public abstract writeInt64([J)V
.end method

.method public final writeInt64Null()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    .line 10
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 11
    .line 12
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 13
    or-long/2addr v2, v4

    .line 14
    and-long/2addr v0, v2

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 28
    return-void
.end method

.method public abstract writeInt8(B)V
.end method

.method public abstract writeLocalDateTime(Lcom/alibaba/fastjson2/time/LocalDateTime;)V
.end method

.method public writeMillis(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 4
    return-void
.end method

.method public final writeName(I)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method

.method public final writeName(J)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public writeName(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UnquoteFieldName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_3

    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public abstract writeName10Raw(JJ)V
.end method

.method public abstract writeName11Raw(JJ)V
.end method

.method public abstract writeName12Raw(JJ)V
.end method

.method public abstract writeName13Raw(JJ)V
.end method

.method public abstract writeName14Raw(JJ)V
.end method

.method public abstract writeName15Raw(JJ)V
.end method

.method public abstract writeName16Raw(JJ)V
.end method

.method public abstract writeName2Raw(J)V
.end method

.method public abstract writeName3Raw(J)V
.end method

.method public abstract writeName4Raw(J)V
.end method

.method public abstract writeName5Raw(J)V
.end method

.method public abstract writeName6Raw(J)V
.end method

.method public abstract writeName7Raw(J)V
.end method

.method public abstract writeName8Raw(J)V
.end method

.method public abstract writeName9Raw(JI)V
.end method

.method public writeNameAny(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->startObject:Z

    .line 8
    goto :goto_0

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public abstract writeNameRaw([B)V
.end method

.method public writeNameRaw([BII)V
    .locals 0

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeNameRaw([BJ)V
    .locals 0

    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract writeNameRaw([C)V
.end method

.method public abstract writeNameRaw([CII)V
.end method

.method public final writeNameValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public writeNull()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "null"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final writeNumberNull()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    .line 10
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 11
    .line 12
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 13
    or-long/2addr v2, v4

    .line 14
    and-long/2addr v0, v2

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 25
    return-void

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 29
    return-void
.end method

.method public writeObjectNull(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

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
    const-class v0, Ljava/lang/Character;

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    const-string p1, "\u0000"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_0
    const/16 p1, 0x7b

    .line 28
    .line 29
    const/16 v0, 0x7d

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(CC)V

    .line 33
    return-void

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 37
    return-void
.end method

.method public writeRaw(B)V
    .locals 1

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract writeRaw(C)V
.end method

.method public writeRaw(CC)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    return-void
.end method

.method public abstract writeRaw(Ljava/lang/String;)V
.end method

.method public abstract writeRaw([B)V
.end method

.method public final writeRaw([C)V
    .locals 2

    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([CII)V

    return-void
.end method

.method public writeRaw([CII)V
    .locals 0

    .line 3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract writeReference(Ljava/lang/String;)V
.end method

.method public final writeReference(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract writeString(B)V
.end method

.method public writeString(D)V
    .locals 0

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(F)V
    .locals 0

    .line 49
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public abstract writeString(I)V
.end method

.method public abstract writeString(J)V
.end method

.method public final writeString(Ljava/io/Reader;)V
    .locals 4

    .line 1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    const/16 v0, 0x800

    .line 2
    :try_start_0
    new-array v1, v0, [C

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/Reader;->read([CII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v3, :cond_1

    .line 4
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONWriter;->quote:C

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    return-void

    :cond_1
    if-lez v3, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p0, v1, v2, v3, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString([CIIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "read string from reader error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 54
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public abstract writeString(S)V
.end method

.method public abstract writeString(Z)V
.end method

.method public writeString([B)V
    .locals 2

    if-nez p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 15
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 17
    :cond_1
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public abstract writeString([C)V
.end method

.method public abstract writeString([CII)V
.end method

.method public abstract writeString([CIIZ)V
.end method

.method public writeString([D)V
    .locals 3

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 45
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 47
    :cond_1
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeString([F)V
    .locals 2

    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 39
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 41
    :cond_1
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeString([I)V
    .locals 2

    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 27
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 29
    :cond_1
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeString([J)V
    .locals 3

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 33
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 35
    :cond_1
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public abstract writeString([Ljava/lang/String;)V
.end method

.method public writeString([S)V
    .locals 2

    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 21
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 23
    :cond_1
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeString([Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 11
    :cond_1
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public abstract writeStringLatin1([B)V
.end method

.method public writeStringNull()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 3
    .line 4
    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 5
    .line 6
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NullAsDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 7
    .line 8
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 9
    .line 10
    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 11
    .line 12
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 13
    or-long/2addr v2, v4

    .line 14
    and-long/2addr v2, v0

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UseSingleQuotes:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 23
    .line 24
    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 25
    and-long/2addr v0, v2

    .line 26
    .line 27
    cmp-long v0, v0, v4

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "\'\'"

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    const-string v0, "\"\""

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    const-string v0, "null"

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public abstract writeStringUTF16([B)V
.end method

.method public writeSymbol(I)V
    .locals 1

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeSymbol(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public abstract writeTimeHHMMSS8(III)V
.end method

.method public writeTypeName(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTypeName([BJ)Z
    .locals 0

    .line 2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract writeUUID(Ljava/util/UUID;)V
.end method
