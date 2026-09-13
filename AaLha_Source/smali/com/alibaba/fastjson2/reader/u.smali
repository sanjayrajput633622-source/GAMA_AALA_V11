.class public final synthetic Lcom/alibaba/fastjson2/reader/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Function;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/u;->a:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/u;->a:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->g(Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
