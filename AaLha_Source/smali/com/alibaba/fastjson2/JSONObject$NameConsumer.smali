.class Lcom/alibaba/fastjson2/JSONObject$NameConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson2/function/Consumer<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final annotation:Ljava/lang/annotation/Annotation;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONObject$NameConsumer;->annotation:Ljava/lang/annotation/Annotation;

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONObject$NameConsumer;->accept(Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public accept(Ljava/lang/reflect/Method;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONObject$NameConsumer;->annotation:Ljava/lang/annotation/Annotation;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONObject$NameConsumer;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
