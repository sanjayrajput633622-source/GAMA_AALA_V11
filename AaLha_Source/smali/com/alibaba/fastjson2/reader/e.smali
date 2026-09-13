.class public final synthetic Lcom/alibaba/fastjson2/reader/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/alibaba/fastjson2/codec/FieldInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/e;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/e;->b:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/e;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/e;->d:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/e;->f:Lcom/alibaba/fastjson2/codec/FieldInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/e;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/e;->b:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/e;->c:Ljava/lang/Class;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/e;->d:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/e;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/e;->f:Lcom/alibaba/fastjson2/codec/FieldInfo;

    move-object v6, p1

    check-cast v6, Ljava/lang/reflect/Method;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->d(Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/String;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V

    return-void
.end method
