.class final Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectReaderCachePair"
.end annotation


# instance fields
.field final hashCode:J

.field volatile missCount:I

.field final reader:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public constructor <init>(JLcom/alibaba/fastjson2/reader/ObjectReader;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->hashCode:J

    .line 6
    .line 7
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 8
    return-void
.end method
