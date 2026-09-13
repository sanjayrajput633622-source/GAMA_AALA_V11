.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field public static final HASH_TYPE:J

.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;

    .line 8
    .line 9
    const-string v0, "S"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;->HASH_TYPE:J

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/lang/Short;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;->getObjectClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

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
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32()Ljava/lang/Integer;

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
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
