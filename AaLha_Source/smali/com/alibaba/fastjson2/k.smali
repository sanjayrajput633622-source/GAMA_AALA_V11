.class public final synthetic Lcom/alibaba/fastjson2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/k;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson2/k;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONObject;->d([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
