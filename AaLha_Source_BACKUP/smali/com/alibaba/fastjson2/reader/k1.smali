.class public final synthetic Lcom/alibaba/fastjson2/reader/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field public final synthetic b:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic c:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/k1;->a:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/k1;->b:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/k1;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/k1;->a:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/k1;->b:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/k1;->c:Ljava/lang/Class;

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->a(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    return-void
.end method
