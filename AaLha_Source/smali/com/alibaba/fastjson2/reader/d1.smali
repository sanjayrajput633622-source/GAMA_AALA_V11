.class public final synthetic Lcom/alibaba/fastjson2/reader/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/annotation/Annotation;

.field public final synthetic b:Lcom/alibaba/fastjson2/codec/BeanInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/d1;->a:Ljava/lang/annotation/Annotation;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/d1;->b:Lcom/alibaba/fastjson2/codec/BeanInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/d1;->a:Ljava/lang/annotation/Annotation;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/d1;->b:Lcom/alibaba/fastjson2/codec/BeanInfo;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->h(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V

    return-void
.end method
