.class public final synthetic Lcom/alibaba/fastjson2/filter/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/ValueFilter;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson2/filter/k;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/k;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson2/filter/k;->b:Ljava/util/Map;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/m;->d(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
