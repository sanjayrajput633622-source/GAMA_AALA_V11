.class public Lcom/alibaba/fastjson2/filter/BeanContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final beanClass:Ljava/lang/Class;

.field private final features:J

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldClass:Ljava/lang/Class;

.field private final fieldType:Ljava/lang/reflect/Type;

.field private final format:Ljava/lang/String;

.field private final label:Ljava/lang/String;

.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;JLjava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->beanClass:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->method:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->field:Ljava/lang/reflect/Field;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->name:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->label:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->fieldClass:Ljava/lang/Class;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->fieldType:Ljava/lang/reflect/Type;

    .line 18
    .line 19
    iput-wide p8, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->features:J

    .line 20
    .line 21
    iput-object p10, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->format:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->method:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->field:Ljava/lang/reflect/Field;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    return-object v0
.end method

.method public getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->beanClass:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public getFeatures()J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->features:J

    .line 3
    return-wide v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->field:Ljava/lang/reflect/Field;

    .line 3
    return-object v0
.end method

.method public getFieldClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->fieldClass:Ljava/lang/Class;

    .line 3
    return-object v0
.end method

.method public getFieldType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->fieldType:Ljava/lang/reflect/Type;

    .line 3
    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->format:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->label:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->method:Ljava/lang/reflect/Method;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public isJsonDirect()Z
    .locals 4

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/filter/BeanContext;->features:J

    .line 3
    .line 4
    const-wide/high16 v2, 0x4000000000000L

    .line 5
    and-long/2addr v0, v2

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method
