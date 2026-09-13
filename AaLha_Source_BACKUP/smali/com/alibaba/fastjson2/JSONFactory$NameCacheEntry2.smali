.class final Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NameCacheEntry2"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final value0:J

.field final value1:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value0:J

    .line 8
    .line 9
    iput-wide p4, p0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value1:J

    .line 10
    return-void
.end method
