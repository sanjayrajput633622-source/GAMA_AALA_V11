.class Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/lang/Character;

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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readCharValue()C

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 16
    move-result-object p1

    .line 17
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
    if-nez p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const/4 p2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
