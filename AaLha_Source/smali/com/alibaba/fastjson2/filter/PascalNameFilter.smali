.class public Lcom/alibaba/fastjson2/filter/PascalNameFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/NameFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    sget-object p1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
