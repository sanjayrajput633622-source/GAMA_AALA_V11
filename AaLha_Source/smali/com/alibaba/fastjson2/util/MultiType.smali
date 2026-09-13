.class public final Lcom/alibaba/fastjson2/util/MultiType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/Type;


# instance fields
.field private final types:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/MultiType;->types:[Ljava/lang/reflect/Type;

    .line 6
    return-void
.end method


# virtual methods
.method public getType(I)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/MultiType;->types:[Ljava/lang/reflect/Type;

    .line 3
    .line 4
    aget-object p1, v0, p1

    .line 5
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/MultiType;->types:[Ljava/lang/reflect/Type;

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/MultiType;->types:[Ljava/lang/reflect/Type;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/alibaba/fastjson2/a;->B1(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
