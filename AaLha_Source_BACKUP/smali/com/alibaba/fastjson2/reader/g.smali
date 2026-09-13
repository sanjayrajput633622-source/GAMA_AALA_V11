.class public final synthetic Lcom/alibaba/fastjson2/reader/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/g;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/g;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->a(Ljava/util/List;Ljava/lang/reflect/Constructor;)V

    return-void
.end method
