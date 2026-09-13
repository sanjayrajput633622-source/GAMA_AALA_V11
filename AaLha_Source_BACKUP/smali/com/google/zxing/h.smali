.class public final Lcom/google/zxing/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lta/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lta/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/h$a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    new-instance p3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string p4, "No encoder available for format "

    .line 20
    .line 21
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :pswitch_0
    new-instance v0, Loa/c;

    .line 36
    .line 37
    invoke-direct {v0}, Loa/c;-><init>()V

    .line 38
    .line 39
    .line 40
    :goto_0
    move-object v2, p1

    .line 41
    move-object v3, p2

    .line 42
    move v4, p3

    .line 43
    move v5, p4

    .line 44
    move-object v6, p5

    .line 45
    move-object v1, v0

    .line 46
    goto :goto_1

    .line 47
    :pswitch_1
    new-instance v0, Lwa/b;

    .line 48
    .line 49
    invoke-direct {v0}, Lwa/b;-><init>()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_2
    new-instance v0, Lfb/b;

    .line 54
    .line 55
    invoke-direct {v0}, Lfb/b;-><init>()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_3
    new-instance v0, Ljb/d;

    .line 60
    .line 61
    invoke-direct {v0}, Ljb/d;-><init>()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_4
    new-instance v0, Lfb/o;

    .line 66
    .line 67
    invoke-direct {v0}, Lfb/o;-><init>()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_5
    new-instance v0, Lfb/d;

    .line 72
    .line 73
    invoke-direct {v0}, Lfb/d;-><init>()V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_6
    new-instance v0, Lfb/h;

    .line 78
    .line 79
    invoke-direct {v0}, Lfb/h;-><init>()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_7
    new-instance v0, Lfb/f;

    .line 84
    .line 85
    invoke-direct {v0}, Lfb/f;-><init>()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_8
    new-instance v0, Lob/b;

    .line 90
    .line 91
    invoke-direct {v0}, Lob/b;-><init>()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_9
    new-instance v0, Lfb/u;

    .line 96
    .line 97
    invoke-direct {v0}, Lfb/u;-><init>()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_a
    new-instance v0, Lfb/j;

    .line 102
    .line 103
    invoke-direct {v0}, Lfb/j;-><init>()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_b
    new-instance v0, Lfb/b0;

    .line 108
    .line 109
    invoke-direct {v0}, Lfb/b0;-><init>()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_c
    new-instance v0, Lfb/l;

    .line 114
    .line 115
    invoke-direct {v0}, Lfb/l;-><init>()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :goto_1
    invoke-interface/range {v1 .. v6}, Lcom/google/zxing/o;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lta/b;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lta/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/h;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lta/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
