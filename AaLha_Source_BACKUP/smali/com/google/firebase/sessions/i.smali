.class public final Lcom/google/firebase/sessions/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/i$$a;,
        Lcom/google/firebase/sessions/i$$b;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/sessions/i$$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/firebase/sessions/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/google/firebase/sessions/k;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/i$$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/i$$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/i;->Companion:Lcom/google/firebase/sessions/i$$b;

    .line 8
    .line 9
    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    .line 10
    .line 11
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 12
    .line 13
    sget-object v3, Lcom/google/firebase/sessions/h$$a;->a:Lcom/google/firebase/sessions/h$$a;

    .line 14
    .line 15
    invoke-direct {v0, v2, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v1, v2, v3

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    aput-object v1, v2, v3

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    aput-object v0, v2, v1

    .line 29
    .line 30
    sput-object v2, Lcom/google/firebase/sessions/i;->d:[Lkotlinx/serialization/KSerializer;

    .line 31
    .line 32
    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p5, :cond_0

    .line 1
    sget-object p5, Lcom/google/firebase/sessions/i$$a;->a:Lcom/google/firebase/sessions/i$$a;

    invoke-virtual {p5}, Lcom/google/firebase/sessions/i$$a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    and-int/lit8 p2, p1, 0x2

    const/4 p5, 0x0

    if-nez p2, :cond_1

    iput-object p5, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object p5, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    return-void

    :cond_2
    iput-object p4, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/google/firebase/sessions/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/sessions/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/j;",
            "Lcom/google/firebase/sessions/k;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/sessions/i;-><init>(Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic a()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/i;->d:[Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic f(Lcom/google/firebase/sessions/i;Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/i;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/sessions/i;->e(Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;)Lcom/google/firebase/sessions/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/google/firebase/sessions/i;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/i;->d:[Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    sget-object v1, Lcom/google/firebase/sessions/j$$a;->a:Lcom/google/firebase/sessions/j$$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    :goto_0
    sget-object v2, Lcom/google/firebase/sessions/k$$a;->a:Lcom/google/firebase/sessions/k$$a;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    .line 26
    .line 27
    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 v1, 0x2

    .line 31
    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    :goto_1
    aget-object v0, v0, v1

    .line 43
    .line 44
    iget-object p0, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/firebase/sessions/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    return-object v0
.end method

.method public final c()Lcom/google/firebase/sessions/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final e(Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;)Lcom/google/firebase/sessions/i;
    .locals 1
    .param p1    # Lcom/google/firebase/sessions/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/sessions/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/j;",
            "Lcom/google/firebase/sessions/k;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/h;",
            ">;)",
            "Lcom/google/firebase/sessions/i;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/sessions/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/sessions/i;-><init>(Lcom/google/firebase/sessions/j;Lcom/google/firebase/sessions/k;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/i;

    iget-object v1, p0, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    iget-object v3, p1, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    iget-object v3, p1, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final g()Lcom/google/firebase/sessions/k;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/sessions/h;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/j;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/sessions/k;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final i()Lcom/google/firebase/sessions/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionData(sessionDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/i;->a:Lcom/google/firebase/sessions/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/i;->b:Lcom/google/firebase/sessions/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processDataMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/i;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
