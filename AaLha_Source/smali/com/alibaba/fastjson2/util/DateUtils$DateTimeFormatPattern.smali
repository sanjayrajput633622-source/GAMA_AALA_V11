.class public final enum Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DateTimeFormatPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

.field public static final enum DATE_TIME_FORMAT_19_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;


# instance fields
.field public final length:I

.field public final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 3
    .line 4
    const-string v1, "DATE_FORMAT_10_DASH"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    const-string v3, "yyyy-MM-dd"

    .line 8
    .line 9
    const/16 v4, 0xa

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 13
    .line 14
    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 15
    .line 16
    new-instance v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 17
    .line 18
    const-string v3, "yyyy/MM/dd"

    .line 19
    .line 20
    const-string v5, "DATE_FORMAT_10_SLASH"

    .line 21
    const/4 v6, 0x1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v5, v6, v3, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 25
    .line 26
    sput-object v1, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 27
    .line 28
    new-instance v3, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 29
    .line 30
    const-string v5, "dd.MM.yyyy"

    .line 31
    .line 32
    const-string v7, "DATE_FORMAT_10_DOT"

    .line 33
    const/4 v8, 0x2

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v7, v8, v5, v4}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    .line 38
    sput-object v3, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_FORMAT_10_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 39
    .line 40
    new-instance v4, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 41
    .line 42
    const-string v5, "DATE_TIME_FORMAT_19_DASH"

    .line 43
    const/4 v7, 0x3

    .line 44
    .line 45
    const-string v9, "yyyy-MM-dd HH:mm:ss"

    .line 46
    .line 47
    const/16 v10, 0x13

    .line 48
    .line 49
    .line 50
    invoke-direct {v4, v5, v7, v9, v10}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 51
    .line 52
    sput-object v4, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 53
    .line 54
    new-instance v5, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 55
    .line 56
    const-string v9, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 57
    .line 58
    const-string v11, "DATE_TIME_FORMAT_19_DASH_T"

    .line 59
    const/4 v12, 0x4

    .line 60
    .line 61
    .line 62
    invoke-direct {v5, v11, v12, v9, v10}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 63
    .line 64
    sput-object v5, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DASH_T:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 65
    .line 66
    new-instance v9, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 67
    .line 68
    const-string v11, "yyyy/MM/dd HH:mm:ss"

    .line 69
    .line 70
    const-string v13, "DATE_TIME_FORMAT_19_SLASH"

    .line 71
    const/4 v14, 0x5

    .line 72
    .line 73
    .line 74
    invoke-direct {v9, v13, v14, v11, v10}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 75
    .line 76
    sput-object v9, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_SLASH:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 77
    .line 78
    new-instance v11, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 79
    .line 80
    const-string v13, "dd.MM.yyyy HH:mm:ss"

    .line 81
    .line 82
    const-string v15, "DATE_TIME_FORMAT_19_DOT"

    .line 83
    .line 84
    move/from16 v16, v2

    .line 85
    const/4 v2, 0x6

    .line 86
    .line 87
    .line 88
    invoke-direct {v11, v15, v2, v13, v10}, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 89
    .line 90
    sput-object v11, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->DATE_TIME_FORMAT_19_DOT:Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 91
    const/4 v10, 0x7

    .line 92
    .line 93
    new-array v10, v10, [Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 94
    .line 95
    aput-object v0, v10, v16

    .line 96
    .line 97
    aput-object v1, v10, v6

    .line 98
    .line 99
    aput-object v3, v10, v8

    .line 100
    .line 101
    aput-object v4, v10, v7

    .line 102
    .line 103
    aput-object v5, v10, v12

    .line 104
    .line 105
    aput-object v9, v10, v14

    .line 106
    .line 107
    aput-object v11, v10, v2

    .line 108
    .line 109
    sput-object v10, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->$VALUES:[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 110
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    iput-object p3, p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->pattern:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->length:I

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    check-cast p0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->$VALUES:[Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, [Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, [Lcom/alibaba/fastjson2/util/DateUtils$DateTimeFormatPattern;

    .line 9
    return-object v0
.end method
