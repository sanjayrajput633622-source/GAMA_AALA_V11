.class public Lcom/alibaba/fastjson2/JSONPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONPath$Context;
    }
.end annotation


# static fields
.field static final PARSE_CONTEXT:Lcom/alibaba/fastjson2/JSONReader$Context;

.field static final PREVIOUS:Lcom/alibaba/fastjson2/JSONPath;

.field static final ROOT:Lcom/alibaba/fastjson2/JSONPath;


# instance fields
.field final path:Ljava/lang/String;

.field public final previous:Z

.field readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

.field final root:Z

.field final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/JSONPathSegment;",
            ">;"
        }
    .end annotation
.end field

.field writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONPath;

    .line 3
    .line 4
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    const-string v2, "$"

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 15
    .line 16
    sput-object v0, Lcom/alibaba/fastjson2/JSONPath;->ROOT:Lcom/alibaba/fastjson2/JSONPath;

    .line 17
    .line 18
    new-instance v0, Lcom/alibaba/fastjson2/JSONPath;

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    const-string v2, "#-1"

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v2, v1, v4, v3}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 29
    .line 30
    sput-object v0, Lcom/alibaba/fastjson2/JSONPath;->PREVIOUS:Lcom/alibaba/fastjson2/JSONPath;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    sput-object v0, Lcom/alibaba/fastjson2/JSONPath;->PARSE_CONTEXT:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/JSONPathSegment;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPath;->path:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPath;->segments:Ljava/util/List;

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONPath;->root:Z

    .line 10
    .line 11
    iput-boolean p4, p0, Lcom/alibaba/fastjson2/JSONPath;->previous:Z

    .line 12
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    .line 1
    .line 2
    const-string v0, "#-1"

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/alibaba/fastjson2/JSONPath;->PREVIOUS:Lcom/alibaba/fastjson2/JSONPath;

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathParser;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPathParser;->parse()Lcom/alibaba/fastjson2/JSONPath;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPath;->root:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->segments:Ljava/util/List;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    move-result v0

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    :goto_0
    return-object p1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v5, v1

    .line 18
    .line 19
    :goto_1
    if-ge v2, v0, :cond_4

    .line 20
    .line 21
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPath;->segments:Ljava/util/List;

    .line 22
    .line 23
    .line 24
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    move-object v6, v3

    .line 27
    .line 28
    check-cast v6, Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 29
    .line 30
    add-int/lit8 v10, v2, 0x1

    .line 31
    .line 32
    if-ge v10, v0, :cond_2

    .line 33
    .line 34
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPath;->segments:Ljava/util/List;

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    check-cast v3, Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 41
    move-object v7, v3

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move-object v7, v1

    .line 44
    .line 45
    :goto_2
    new-instance v3, Lcom/alibaba/fastjson2/JSONPath$Context;

    .line 46
    .line 47
    const-wide/16 v8, 0x0

    .line 48
    move-object v4, p0

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v3 .. v9}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    iput-object p1, v3, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 59
    move-object v5, v3

    .line 60
    move v2, v10

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_4
    iget-object p1, v5, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 64
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPath;->path:Ljava/lang/String;

    .line 3
    return-object v0
.end method
