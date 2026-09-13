.class public final synthetic Lcom/alibaba/fastjson2/filter/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)Lcom/alibaba/fastjson2/filter/PropertyPreFilter;
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Lcom/alibaba/fastjson2/filter/CompositePropertyPreFilter;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    .line 7
    check-cast v0, Lcom/alibaba/fastjson2/filter/CompositePropertyPreFilter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/filter/CompositePropertyPreFilter;->add(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/filter/CompositePropertyPreFilter;

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    new-array v1, v1, [Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    aput-object p0, v1, v2

    .line 20
    const/4 p0, 0x1

    .line 21
    .line 22
    aput-object p1, v1, p0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/filter/CompositePropertyPreFilter;-><init>([Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V

    .line 26
    return-object v0
.end method
