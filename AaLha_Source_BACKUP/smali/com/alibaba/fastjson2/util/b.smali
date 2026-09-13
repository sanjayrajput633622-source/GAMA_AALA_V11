.class public final synthetic Lcom/alibaba/fastjson2/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:C

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:[Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alibaba/fastjson2/util/b;->a:I

    iput p2, p0, Lcom/alibaba/fastjson2/util/b;->b:I

    iput-object p3, p0, Lcom/alibaba/fastjson2/util/b;->c:Ljava/lang/Class;

    iput-char p4, p0, Lcom/alibaba/fastjson2/util/b;->d:C

    iput-object p5, p0, Lcom/alibaba/fastjson2/util/b;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/fastjson2/util/b;->f:[Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson2/util/b;->a:I

    iget v1, p0, Lcom/alibaba/fastjson2/util/b;->b:I

    iget-object v2, p0, Lcom/alibaba/fastjson2/util/b;->c:Ljava/lang/Class;

    iget-char v3, p0, Lcom/alibaba/fastjson2/util/b;->d:C

    iget-object v4, p0, Lcom/alibaba/fastjson2/util/b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/fastjson2/util/b;->f:[Ljava/lang/reflect/Field;

    move-object v6, p1

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson2/util/BeanUtils;->b(IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    return-void
.end method
