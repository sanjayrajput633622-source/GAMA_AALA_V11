.class final Lcom/alibaba/fastjson2/reader/ConstructorSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/Supplier;


# instance fields
.field final constructor:Ljava/lang/reflect/Constructor;

.field final objectClass:Ljava/lang/Class;

.field final parameterCount:I

.field final useClassNewInstance:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 8
    .line 9
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->constructor:Ljava/lang/reflect/Constructor;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->objectClass:Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 19
    move-result-object v2

    .line 20
    array-length v2, v2

    .line 21
    .line 22
    iput v2, p0, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->parameterCount:I

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    .line 28
    move-result p1

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 32
    move-result p1

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    .line 38
    move-result p1

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    .line 48
    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->useClassNewInstance:Z

    .line 49
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .line 1
    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->useClassNewInstance:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->objectClass:Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->parameterCount:I

    .line 16
    const/4 v1, 0x1

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->constructor:Ljava/lang/reflect/Constructor;

    .line 21
    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorSupplier;->constructor:Ljava/lang/reflect/Constructor;

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    return-object v0

    .line 36
    .line 37
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    .line 38
    .line 39
    const-string v2, "create instance error"

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    throw v1
.end method
