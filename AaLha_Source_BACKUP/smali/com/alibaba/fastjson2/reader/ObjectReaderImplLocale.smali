.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/util/Locale;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    const-string p2, "_"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    array-length p2, p1

    .line 21
    const/4 p3, 0x0

    .line 22
    const/4 p4, 0x1

    .line 23
    .line 24
    if-ne p2, p4, :cond_1

    .line 25
    .line 26
    new-instance p2, Ljava/util/Locale;

    .line 27
    .line 28
    aget-object p1, p1, p3

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 32
    return-object p2

    .line 33
    :cond_1
    array-length p2, p1

    .line 34
    const/4 p5, 0x2

    .line 35
    .line 36
    if-ne p2, p5, :cond_2

    .line 37
    .line 38
    new-instance p2, Ljava/util/Locale;

    .line 39
    .line 40
    aget-object p3, p1, p3

    .line 41
    .line 42
    aget-object p1, p1, p4

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object p2

    .line 47
    .line 48
    :cond_2
    new-instance p2, Ljava/util/Locale;

    .line 49
    .line 50
    aget-object p3, p1, p3

    .line 51
    .line 52
    aget-object p4, p1, p4

    .line 53
    .line 54
    aget-object p1, p1, p5

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, p3, p4, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-object p2

    .line 59
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 60
    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    const-string p2, "_"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    array-length p2, p1

    .line 21
    const/4 p3, 0x0

    .line 22
    const/4 p4, 0x1

    .line 23
    .line 24
    if-ne p2, p4, :cond_1

    .line 25
    .line 26
    new-instance p2, Ljava/util/Locale;

    .line 27
    .line 28
    aget-object p1, p1, p3

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 32
    return-object p2

    .line 33
    :cond_1
    array-length p2, p1

    .line 34
    const/4 p5, 0x2

    .line 35
    .line 36
    if-ne p2, p5, :cond_2

    .line 37
    .line 38
    new-instance p2, Ljava/util/Locale;

    .line 39
    .line 40
    aget-object p3, p1, p3

    .line 41
    .line 42
    aget-object p1, p1, p4

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object p2

    .line 47
    .line 48
    :cond_2
    new-instance p2, Ljava/util/Locale;

    .line 49
    .line 50
    aget-object p3, p1, p3

    .line 51
    .line 52
    aget-object p4, p1, p4

    .line 53
    .line 54
    aget-object p1, p1, p5

    .line 55
    .line 56
    .line 57
    invoke-direct {p2, p3, p4, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-object p2

    .line 59
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 60
    return-object p1
.end method
