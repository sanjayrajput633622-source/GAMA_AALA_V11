.class public final synthetic Lcom/alibaba/fastjson2/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic b:Ljava/lang/annotation/Annotation;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/a;->a:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/a;->b:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/a;->a:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v1, p0, Lcom/alibaba/fastjson2/util/a;->b:Ljava/lang/annotation/Annotation;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->a(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    return-void
.end method
