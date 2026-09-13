.class public final synthetic Lcom/alibaba/fastjson2/writer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

.field public final synthetic b:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final synthetic c:J

.field public final synthetic d:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic e:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field public final synthetic f:Ljava/lang/Class;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;JLcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/d;->a:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/d;->b:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-wide p3, p0, Lcom/alibaba/fastjson2/writer/d;->c:J

    iput-object p5, p0, Lcom/alibaba/fastjson2/writer/d;->d:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p6, p0, Lcom/alibaba/fastjson2/writer/d;->e:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iput-object p7, p0, Lcom/alibaba/fastjson2/writer/d;->f:Ljava/lang/Class;

    iput-object p8, p0, Lcom/alibaba/fastjson2/writer/d;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/d;->a:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/d;->b:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/writer/d;->c:J

    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/d;->d:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/d;->e:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/d;->f:Ljava/lang/Class;

    iget-object v7, p0, Lcom/alibaba/fastjson2/writer/d;->g:Ljava/util/Map;

    move-object v8, p1

    check-cast v8, Ljava/lang/reflect/Method;

    invoke-static/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->b(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;JLcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/reflect/Method;)V

    return-void
.end method
