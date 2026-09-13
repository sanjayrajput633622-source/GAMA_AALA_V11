.class final Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LRUAutoTypeCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private final maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    .line 2
    const/high16 v0, 0x3f400000    # 0.75f

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 9
    .line 10
    iput p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;->maxSize:I

    .line 11
    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$LRUAutoTypeCache;->maxSize:I

    .line 7
    .line 8
    if-le p1, v0, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method
