.class final Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;
.super Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;


# instance fields
.field final referenceType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;

    .line 3
    .line 4
    const-class v1, Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    .line 9
    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 1
    .line 2
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderPrimitive;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;->referenceType:Ljava/lang/reflect/Type;

    .line 8
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
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;->referenceType:Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 20
    return-object p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
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
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;->referenceType:Ljava/lang/reflect/Type;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 20
    return-object p2
.end method
