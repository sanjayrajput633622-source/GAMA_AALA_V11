.class public final synthetic Lcom/alibaba/fastjson2/reader/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/reflect/Constructor;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->a(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    move-result p1

    return p1
.end method
