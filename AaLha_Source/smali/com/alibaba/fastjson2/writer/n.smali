.class public final synthetic Lcom/alibaba/fastjson2/writer/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    return p1
.end method
