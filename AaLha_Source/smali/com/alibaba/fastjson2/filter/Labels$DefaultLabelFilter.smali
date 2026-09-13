.class public Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/LabelFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/filter/Labels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultLabelFilter"
.end annotation


# instance fields
.field final excludes:[Ljava/lang/String;

.field final includes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    array-length v2, p1

    .line 9
    .line 10
    new-array v2, v2, [Ljava/lang/String;

    .line 11
    .line 12
    iput-object v2, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    .line 13
    array-length v3, p1

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    if-eqz p2, :cond_1

    .line 25
    array-length p1, p2

    .line 26
    .line 27
    new-array p1, p1, [Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    .line 30
    array-length v0, p2

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 37
    return-void

    .line 38
    .line 39
    :cond_1
    iput-object v0, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    if-gez p1, :cond_0

    .line 13
    return v2

    .line 14
    :cond_0
    return v1

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/filter/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 22
    move-result p1

    .line 23
    .line 24
    if-ltz p1, :cond_2

    .line 25
    return v2

    .line 26
    :cond_2
    return v1
.end method
