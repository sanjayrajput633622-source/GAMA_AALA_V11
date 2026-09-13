.class final Lcom/alibaba/fastjson2/JSONFactory$FJ1OjbectBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FJ1OjbectBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alibaba/fastjson2/JSONFactory$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONFactory$FJ1OjbectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 3
    .line 4
    check-cast p1, Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 8
    return-object v0
.end method
