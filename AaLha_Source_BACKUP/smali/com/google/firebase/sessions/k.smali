.class public final Lcom/google/firebase/sessions/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/k$$a;,
        Lcom/google/firebase/sessions/k$$b;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/k$$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/sessions/k$$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/k$$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/k;->Companion:Lcom/google/firebase/sessions/k$$b;

    return-void
.end method

.method public synthetic constructor <init>(IJJJLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p8, :cond_0

    .line 1
    sget-object p8, Lcom/google/firebase/sessions/k$$a;->a:Lcom/google/firebase/sessions/k$$a;

    invoke-virtual {p8}, Lcom/google/firebase/sessions/k$$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/firebase/sessions/k;->a:J

    and-int/lit8 p8, p1, 0x2

    const/16 v0, 0x3e8

    if-nez p8, :cond_1

    int-to-long p4, v0

    mul-long/2addr p4, p2

    :cond_1
    iput-wide p4, p0, Lcom/google/firebase/sessions/k;->b:J

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    int-to-long p4, v0

    .line 2
    div-long/2addr p2, p4

    .line 3
    iput-wide p2, p0, Lcom/google/firebase/sessions/k;->c:J

    return-void

    :cond_2
    iput-wide p6, p0, Lcom/google/firebase/sessions/k;->c:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/firebase/sessions/k;->a:J

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long v2, p1, v0

    .line 5
    iput-wide v2, p0, Lcom/google/firebase/sessions/k;->b:J

    .line 6
    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/firebase/sessions/k;->c:J

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/sessions/k;JILjava/lang/Object;)Lcom/google/firebase/sessions/k;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    iget-wide p1, p0, Lcom/google/firebase/sessions/k;->a:J

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/k;->b(J)Lcom/google/firebase/sessions/k;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/google/firebase/sessions/k;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-wide v1, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 3
    .line 4
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x3e8

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v3, p0, Lcom/google/firebase/sessions/k;->b:J

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 20
    .line 21
    int-to-long v7, v2

    .line 22
    mul-long/2addr v5, v7

    .line 23
    cmp-long v1, v3, v5

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :goto_0
    iget-wide v3, p0, Lcom/google/firebase/sessions/k;->b:J

    .line 28
    .line 29
    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x2

    .line 33
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-wide v3, p0, Lcom/google/firebase/sessions/k;->c:J

    .line 41
    .line 42
    iget-wide v5, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 43
    .line 44
    int-to-long v1, v2

    .line 45
    div-long/2addr v5, v1

    .line 46
    cmp-long v1, v3, v5

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    :goto_1
    iget-wide v1, p0, Lcom/google/firebase/sessions/k;->c:J

    .line 51
    .line 52
    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->a:J

    return-wide v0
.end method

.method public final b(J)Lcom/google/firebase/sessions/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/k;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/sessions/k;-><init>(J)V

    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/k;

    iget-wide v3, p0, Lcom/google/firebase/sessions/k;->a:J

    iget-wide v5, p1, Lcom/google/firebase/sessions/k;->a:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final g(Lcom/google/firebase/sessions/k;)J
    .locals 4
    .param p1    # Lcom/google/firebase/sessions/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "time"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 7
    .line 8
    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->a:J

    .line 9
    .line 10
    iget-wide v2, p1, Lcom/google/firebase/sessions/k;->a:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/sessions/k;->a:J

    invoke-static {v0, v1}, Landroidx/camera/camera2/internal/compat/params/d;->a(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time(ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/sessions/k;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
