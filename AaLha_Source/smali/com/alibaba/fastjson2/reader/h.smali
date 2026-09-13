.class public final synthetic Lcom/alibaba/fastjson2/reader/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

.field public final synthetic b:Lcom/alibaba/fastjson2/codec/FieldInfo;

.field public final synthetic c:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

.field public final synthetic d:Ljava/lang/Class;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Class;

.field public final synthetic g:Lcom/alibaba/fastjson2/codec/BeanInfo;

.field public final synthetic h:I

.field public final synthetic i:Ljava/util/Map;

.field public final synthetic j:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/h;->a:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/h;->b:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/h;->c:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/h;->d:Ljava/lang/Class;

    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/h;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/h;->f:Ljava/lang/Class;

    iput-object p7, p0, Lcom/alibaba/fastjson2/reader/h;->g:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iput p8, p0, Lcom/alibaba/fastjson2/reader/h;->h:I

    iput-object p9, p0, Lcom/alibaba/fastjson2/reader/h;->i:Ljava/util/Map;

    iput-object p10, p0, Lcom/alibaba/fastjson2/reader/h;->j:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/h;->a:Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/h;->b:Lcom/alibaba/fastjson2/codec/FieldInfo;

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/h;->c:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/h;->d:Ljava/lang/Class;

    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/h;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/h;->f:Ljava/lang/Class;

    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/h;->g:Lcom/alibaba/fastjson2/codec/BeanInfo;

    iget v7, p0, Lcom/alibaba/fastjson2/reader/h;->h:I

    iget-object v8, p0, Lcom/alibaba/fastjson2/reader/h;->i:Ljava/util/Map;

    iget-object v9, p0, Lcom/alibaba/fastjson2/reader/h;->j:Ljava/lang/reflect/Type;

    move-object v10, p1

    check-cast v10, Ljava/lang/reflect/Method;

    invoke-static/range {v0 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->c(Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)V

    return-void
.end method
