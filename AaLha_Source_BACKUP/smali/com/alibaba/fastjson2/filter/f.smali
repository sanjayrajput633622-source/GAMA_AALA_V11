.class public final synthetic Lcom/alibaba/fastjson2/filter/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)Lcom/alibaba/fastjson2/filter/NameFilter;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/filter/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p0}, Lcom/alibaba/fastjson2/filter/c;-><init>(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)V

    .line 6
    return-object v0
.end method

.method public static synthetic b(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/filter/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p2, p1, p4}, Lcom/alibaba/fastjson2/filter/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static synthetic c(Lcom/alibaba/fastjson2/PropertyNamingStrategy;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static synthetic d(Lcom/alibaba/fastjson2/function/Function;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p2}, Lcom/alibaba/fastjson2/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/String;

    .line 7
    return-object p0
.end method

.method public static e(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)Lcom/alibaba/fastjson2/filter/NameFilter;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/filter/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/filter/d;-><init>(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V

    .line 6
    return-object v0
.end method

.method public static f(Lcom/alibaba/fastjson2/function/Function;)Lcom/alibaba/fastjson2/filter/NameFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson2/filter/NameFilter;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/filter/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/filter/e;-><init>(Lcom/alibaba/fastjson2/function/Function;)V

    .line 6
    return-object v0
.end method
