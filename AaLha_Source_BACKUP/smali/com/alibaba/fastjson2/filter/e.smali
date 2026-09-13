.class public final synthetic Lcom/alibaba/fastjson2/filter/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/NameFilter;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/e;->a:Lcom/alibaba/fastjson2/function/Function;

    return-void
.end method


# virtual methods
.method public final process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/e;->a:Lcom/alibaba/fastjson2/function/Function;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/f;->d(Lcom/alibaba/fastjson2/function/Function;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
