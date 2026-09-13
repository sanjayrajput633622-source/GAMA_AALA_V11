.class final Lcom/alibaba/fastjson2/filter/CompositePropertyFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/PropertyFilter;


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/filter/PropertyFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson2/filter/CompositePropertyFilter;->filters:Ljava/util/List;

    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-object v2, p1, v1

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Lcom/alibaba/fastjson2/filter/CompositePropertyFilter;->filters:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/CompositePropertyFilter;->filters:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    return-void
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/CompositePropertyFilter;->filters:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x1

    .line 28
    return p1
.end method
