.class public final synthetic Lcom/alibaba/fastjson2/writer/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcom/alibaba/fastjson2/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/function/ToLongFunction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/t;->a:Lcom/alibaba/fastjson2/function/ToLongFunction;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/t;->a:Lcom/alibaba/fastjson2/function/ToLongFunction;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->a(Lcom/alibaba/fastjson2/function/ToLongFunction;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
