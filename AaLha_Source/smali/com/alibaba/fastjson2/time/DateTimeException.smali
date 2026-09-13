.class public Lcom/alibaba/fastjson2/time/DateTimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private final errorIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/alibaba/fastjson2/time/DateTimeException;->errorIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    iput p3, p0, Lcom/alibaba/fastjson2/time/DateTimeException;->errorIndex:I

    return-void
.end method
