.class public abstract Lcom/alibaba/fastjson2/filter/BeforeFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/Filter;


# static fields
.field private static final serializerLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/filter/BeforeFilter;->serializerLocal:Ljava/lang/ThreadLocal;

    .line 8
    return-void
.end method

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
.method public writeBefore(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/alibaba/fastjson2/filter/BeforeFilter;->serializerLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/JSONWriter;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/filter/BeforeFilter;->writeBefore(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract writeBefore(Ljava/lang/Object;)V
.end method

.method public final writeKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/filter/BeforeFilter;->serializerLocal:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/alibaba/fastjson2/JSONWriter;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->containsReference(Ljava/lang/Object;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->removeReference(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    return-void
.end method
