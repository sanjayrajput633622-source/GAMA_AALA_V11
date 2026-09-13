.class public final synthetic Lcom/alibaba/fastjson2/reader/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Function;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Type;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/l;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/l;->a:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->i(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
