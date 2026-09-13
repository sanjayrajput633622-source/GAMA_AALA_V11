.class Lcom/alibaba/fastjson2/JSONReader$ResolveTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolveTask"
.end annotation


# instance fields
.field final fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final name:Ljava/lang/Object;

.field final object:Ljava/lang/Object;

.field final reference:Lcom/alibaba/fastjson2/JSONPath;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/reader/FieldReader;Ljava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONPath;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->object:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->name:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->reference:Lcom/alibaba/fastjson2/JSONPath;

    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader$ResolveTask;->reference:Lcom/alibaba/fastjson2/JSONPath;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPath;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
