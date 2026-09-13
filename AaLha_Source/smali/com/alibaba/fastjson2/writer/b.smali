.class public final synthetic Lcom/alibaba/fastjson2/writer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

.field public final synthetic b:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:J

.field public final synthetic e:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field public final synthetic f:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/b;->a:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/b;->b:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/b;->c:Ljava/lang/Class;

    iput-wide p4, p0, Lcom/alibaba/fastjson2/writer/b;->d:J

    iput-object p6, p0, Lcom/alibaba/fastjson2/writer/b;->e:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iput-object p7, p0, Lcom/alibaba/fastjson2/writer/b;->f:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p8, p0, Lcom/alibaba/fastjson2/writer/b;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/b;->a:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/b;->b:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/b;->c:Ljava/lang/Class;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/writer/b;->d:J

    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/b;->e:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v6, p0, Lcom/alibaba/fastjson2/writer/b;->f:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v7, p0, Lcom/alibaba/fastjson2/writer/b;->g:Ljava/util/Map;

    move-object v8, p1

    check-cast v8, Ljava/lang/reflect/Field;

    invoke-static/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->c(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;Ljava/lang/reflect/Field;)V

    return-void
.end method
