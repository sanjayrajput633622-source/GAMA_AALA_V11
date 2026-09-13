.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    .line 12
    const/4 p3, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 16
    move-result p4

    .line 17
    .line 18
    if-ge p3, p4, :cond_2

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 27
    move-result-wide p4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 31
    .line 32
    add-int/lit8 p3, p3, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    .line 37
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeArrayNull()V

    .line 6
    return-void

    .line 7
    .line 8
    :cond_0
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 12
    move-result p3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 16
    const/4 p3, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    .line 20
    move-result p4

    .line 21
    .line 22
    if-ge p3, p4, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    .line 26
    move-result-wide p4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 30
    .line 31
    add-int/lit8 p3, p3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-void
.end method
