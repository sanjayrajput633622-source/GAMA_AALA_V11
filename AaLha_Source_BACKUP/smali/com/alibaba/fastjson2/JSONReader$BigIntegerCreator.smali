.class final Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BigIntegerCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/fastjson2/function/BiFunction<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# static fields
.field static final BIG_INTEGER_CREATOR:Lcom/alibaba/fastjson2/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/BiFunction<",
            "Ljava/lang/Integer;",
            "[I",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->BIG_INTEGER_CREATOR:Lcom/alibaba/fastjson2/function/BiFunction;

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
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONReader$BigIntegerCreator;->apply(Ljava/lang/Integer;[I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Integer;[I)Ljava/math/BigInteger;
    .locals 11

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_3

    .line 4
    :cond_0
    aget v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 5
    array-length v3, p2

    sub-int/2addr v3, v2

    shl-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v0

    if-gez p1, :cond_4

    .line 6
    aget v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v4, v2

    .line 7
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_3

    if-eqz v0, :cond_3

    .line 8
    aget v0, p2, v4

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 9
    :cond_4
    :goto_3
    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v0, v3, 0x1

    .line 10
    new-array v0, v0, [B

    const/4 v4, 0x4

    move v6, v1

    move v7, v6

    move v5, v4

    :goto_4
    if-ltz v3, :cond_c

    if-ne v5, v4, :cond_b

    add-int/lit8 v5, v7, 0x1

    if-gez v7, :cond_6

    :cond_5
    move v6, v1

    goto :goto_6

    .line 11
    :cond_6
    array-length v6, p2

    if-lt v7, v6, :cond_7

    if-gez p1, :cond_5

    const/4 v6, -0x1

    goto :goto_6

    .line 12
    :cond_7
    array-length v6, p2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v2

    aget v6, p2, v6

    if-ltz p1, :cond_8

    goto :goto_6

    .line 13
    :cond_8
    array-length v8, p2

    add-int/lit8 v9, v8, -0x1

    :goto_5
    if-ltz v9, :cond_9

    .line 14
    aget v10, p2, v9

    if-nez v10, :cond_9

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_9
    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    if-gt v7, v8, :cond_a

    neg-int v6, v6

    goto :goto_6

    :cond_a
    not-int v6, v6

    :goto_6
    move v7, v5

    move v5, v2

    goto :goto_7

    :cond_b
    ushr-int/lit8 v6, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    :goto_7
    int-to-byte v8, v6

    .line 15
    aput-byte v8, v0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 16
    :cond_c
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p1
.end method
