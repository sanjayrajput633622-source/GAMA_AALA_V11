.class final Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelfSegment"
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$SelfSegment;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 10
    .line 11
    :goto_0
    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 12
    return-void
.end method
