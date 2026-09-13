.class public Lcom/alibaba/fastjson2/JSONValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONValidator$Type;
    }
.end annotation


# instance fields
.field private final jsonReader:Lcom/alibaba/fastjson2/JSONReader;

.field private type:Lcom/alibaba/fastjson2/JSONValidator$Type;

.field private validateResult:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/JSONReader;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 6
    return-void
.end method

.method public static from(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONValidator;
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONValidator;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONValidator;-><init>(Lcom/alibaba/fastjson2/JSONReader;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONValidator;
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson2/JSONValidator;

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONValidator;-><init>(Lcom/alibaba/fastjson2/JSONReader;)V

    return-object v0
.end method

.method public static fromUtf8([B)Lcom/alibaba/fastjson2/JSONValidator;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONValidator;

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONValidator;-><init>(Lcom/alibaba/fastjson2/JSONReader;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public getType()Lcom/alibaba/fastjson2/JSONValidator$Type;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONValidator;->validate()Z

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    .line 10
    return-object v0
.end method

.method public validate()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->validateResult:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 26
    .line 27
    const/16 v1, 0x7b

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Object:Lcom/alibaba/fastjson2/JSONValidator$Type;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    const/16 v1, 0x5b

    .line 37
    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    sget-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Array:Lcom/alibaba/fastjson2/JSONValidator$Type;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/JSONValidator$Type;->Value:Lcom/alibaba/fastjson2/JSONValidator$Type;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->type:Lcom/alibaba/fastjson2/JSONValidator$Type;

    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    .line 53
    move-result v0

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONValidator;->validateResult:Ljava/lang/Boolean;

    .line 60
    return v0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    goto :goto_1

    .line 63
    .line 64
    :catch_0
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->validateResult:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 72
    const/4 v0, 0x0

    .line 73
    return v0

    .line 74
    .line 75
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONValidator;->jsonReader:Lcom/alibaba/fastjson2/JSONReader;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    .line 79
    throw v0
.end method
