.class public Lcom/alibaba/fastjson2/util/JDKUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANDROID_SDK_INT:I

.field public static final ARRAY_BYTE_BASE_OFFSET:J

.field public static final ARRAY_CHAR_BASE_OFFSET:J

.field public static final BIG_ENDIAN:Z

.field public static final GRAAL:Z

.field public static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    move v0, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    .line 15
    :goto_0
    sput-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    :try_start_0
    const-class v1, Lsun/misc/Unsafe;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 22
    move-result-object v1

    .line 23
    array-length v4, v1

    .line 24
    .line 25
    :goto_1
    if-ge v2, v4, :cond_2

    .line 26
    .line 27
    aget-object v5, v1, v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 32
    .line 33
    const-string v7, "theUnsafe"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v7

    .line 38
    .line 39
    if-nez v7, :cond_3

    .line 40
    .line 41
    const-string v7, "THE_ONE"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v6

    .line 46
    .line 47
    if-eqz v6, :cond_1

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v5, v0

    .line 53
    .line 54
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_3

    .line 65
    :catchall_0
    :cond_4
    move-object v1, v0

    .line 66
    .line 67
    :goto_3
    sput-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    .line 68
    const/4 v2, -0x1

    .line 69
    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    const-class v3, [B

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 76
    move-result v3

    .line 77
    .line 78
    const-class v4, [C

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v4}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 82
    move-result v1

    .line 83
    goto :goto_4

    .line 84
    :cond_5
    move v1, v2

    .line 85
    move v3, v1

    .line 86
    :goto_4
    int-to-long v3, v3

    .line 87
    .line 88
    sput-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    .line 89
    int-to-long v3, v1

    .line 90
    .line 91
    sput-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    .line 92
    .line 93
    :try_start_1
    const-string v1, "android.os.Build$VERSION"

    .line 94
    .line 95
    .line 96
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    const-string v3, "SDK_INT"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 107
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    .line 109
    :catchall_1
    sput v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    .line 110
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
