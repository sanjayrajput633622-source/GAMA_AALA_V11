.class public final Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation runtime Lcom/alibaba/fastjson2/annotation/JSONType;
    deserializeFeatures = {
        .enum Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;
    }
    typeName = "java.lang.reflect.ParameterizedType"
.end annotation


# instance fields
.field private final actualTypeArguments:[Ljava/lang/reflect/Type;

.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
        parameterNames = {
            "actualTypeArguments",
            "ownerType",
            "rawType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 4
    iput-object p3, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_6

    .line 8
    .line 9
    const-class v2, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    return v1

    .line 30
    .line 31
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    iget-object v3, p1, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v2

    .line 40
    .line 41
    if-nez v2, :cond_4

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_3
    iget-object v2, p1, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 45
    .line 46
    if-eqz v2, :cond_4

    .line 47
    :goto_0
    return v1

    .line 48
    .line 49
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    .line 60
    :cond_5
    if-nez p1, :cond_6

    .line 61
    return v0

    .line 62
    :cond_6
    :goto_1
    return v1
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 3
    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 3
    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->actualTypeArguments:[Ljava/lang/reflect/Type;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    .line 13
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget-object v2, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-object v2, p0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    move-result v1

    .line 35
    :cond_2
    add-int/2addr v0, v1

    .line 36
    return v0
.end method
