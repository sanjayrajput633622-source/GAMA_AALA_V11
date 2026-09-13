.class public final synthetic Lcom/alibaba/fastjson2/writer/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field public final synthetic b:Ljava/lang/annotation/Annotation;

.field public final synthetic c:Lcom/alibaba/fastjson2/codec/FieldInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/j;->a:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/j;->b:Ljava/lang/annotation/Annotation;

    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/j;->c:Lcom/alibaba/fastjson2/codec/FieldInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/j;->a:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/j;->b:Ljava/lang/annotation/Annotation;

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/j;->c:Lcom/alibaba/fastjson2/codec/FieldInfo;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->a(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V

    return-void
.end method
