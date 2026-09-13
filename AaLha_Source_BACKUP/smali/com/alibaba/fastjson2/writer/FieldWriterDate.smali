.class abstract Lcom/alibaba/fastjson2/writer/FieldWriterDate;
.super Lcom/alibaba/fastjson2/writer/FieldWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriter<",
        "TT;>;"
    }
.end annotation


# static fields
.field static CACHE_UTF16_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/writer/FieldWriterDate;",
            "[C>;"
        }
    .end annotation
.end field

.field static CACHE_UTF8_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/writer/FieldWriterDate;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field volatile cacheFormat19UTF16:[C

.field volatile cacheFormat19UTF8:[B

.field protected dateWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

.field final formatISO8601:Z

.field final formatMillis:Z

.field final formatUnixTime:Z

.field protected formatter:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

.field final formatyyyyMMdd8:Z

.field final formatyyyyMMddhhmmss14:Z

.field final formatyyyyMMddhhmmss19:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    const-class v0, [B

    .line 3
    .line 4
    const-string v1, "cacheFormat19UTF8"

    .line 5
    .line 6
    const-class v2, Lcom/alibaba/fastjson2/writer/FieldWriterDate;

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->CACHE_UTF8_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 13
    .line 14
    const-class v0, [C

    .line 15
    .line 16
    const-string v1, "cacheFormat19UTF16"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sput-object v0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->CACHE_UTF16_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p10}, Lcom/alibaba/fastjson2/writer/FieldWriter;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 4
    move-object p1, p0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    if-eqz p5, :cond_6

    .line 8
    .line 9
    .line 10
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result p3

    .line 12
    const/4 p4, 0x1

    .line 13
    const/4 p6, -0x1

    .line 14
    .line 15
    .line 16
    sparse-switch p3, :sswitch_data_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :sswitch_0
    const-string p3, "iso8601"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p3

    .line 24
    .line 25
    if-nez p3, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p6, 0x5

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :sswitch_1
    const-string p3, "yyyyMMddHHmmss"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p3

    .line 35
    .line 36
    if-nez p3, :cond_1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p6, 0x4

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :sswitch_2
    const-string p3, "yyyy-MM-dd HH:mm:ss"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p3

    .line 46
    .line 47
    if-nez p3, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 p6, 0x3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :sswitch_3
    const-string p3, "yyyyMMdd"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p3

    .line 57
    .line 58
    if-nez p3, :cond_3

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 p6, 0x2

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :sswitch_4
    const-string p3, "unixtime"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p3

    .line 68
    .line 69
    if-nez p3, :cond_4

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move p6, p4

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :sswitch_5
    const-string p3, "millis"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p3

    .line 79
    .line 80
    if-nez p3, :cond_5

    .line 81
    goto :goto_0

    .line 82
    :cond_5
    move p6, p2

    .line 83
    .line 84
    .line 85
    :goto_0
    packed-switch p6, :pswitch_data_0

    .line 86
    goto :goto_3

    .line 87
    :pswitch_0
    move p3, p2

    .line 88
    move p5, p3

    .line 89
    :goto_1
    move p6, p5

    .line 90
    move p7, p6

    .line 91
    goto :goto_4

    .line 92
    :pswitch_1
    move p3, p2

    .line 93
    move p5, p3

    .line 94
    move p7, p5

    .line 95
    move p6, p4

    .line 96
    :goto_2
    move p4, p7

    .line 97
    goto :goto_4

    .line 98
    :pswitch_2
    move p3, p2

    .line 99
    move p5, p3

    .line 100
    move p6, p5

    .line 101
    move p7, p4

    .line 102
    move p4, p6

    .line 103
    goto :goto_4

    .line 104
    :pswitch_3
    move p3, p2

    .line 105
    move p6, p3

    .line 106
    move p7, p6

    .line 107
    move p5, p4

    .line 108
    goto :goto_2

    .line 109
    :pswitch_4
    move p5, p2

    .line 110
    move p6, p5

    .line 111
    move p7, p6

    .line 112
    move p3, p4

    .line 113
    goto :goto_2

    .line 114
    :pswitch_5
    move p3, p2

    .line 115
    move p5, p3

    .line 116
    move p6, p5

    .line 117
    move p7, p6

    .line 118
    move p2, p4

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    :goto_3
    move p3, p2

    .line 121
    move p4, p3

    .line 122
    move p5, p4

    .line 123
    goto :goto_1

    .line 124
    .line 125
    :goto_4
    iput-boolean p2, p1, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatMillis:Z

    .line 126
    .line 127
    iput-boolean p4, p1, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatISO8601:Z

    .line 128
    .line 129
    iput-boolean p3, p1, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatUnixTime:Z

    .line 130
    .line 131
    iput-boolean p5, p1, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatyyyyMMdd8:Z

    .line 132
    .line 133
    iput-boolean p6, p1, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatyyyyMMddhhmmss14:Z

    .line 134
    .line 135
    iput-boolean p7, p1, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatyyyyMMddhhmmss19:Z

    .line 136
    return-void

    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    :sswitch_data_0
    .sparse-switch
        -0x400565ba -> :sswitch_5
        -0x112ad7ab -> :sswitch_4
        -0x10781ba0 -> :sswitch_3
        0x4f76f1a0 -> :sswitch_2
        0x5069d960 -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatter:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatMillis:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatISO8601:Z

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatUnixTime:Z

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatter:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatter:Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 29
    return-object v0
.end method

.method public getObjectWriter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    .line 3
    .line 4
    if-ne p2, v0, :cond_3

    .line 5
    .line 6
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->dateWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-wide v0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    .line 15
    .line 16
    const-wide/16 v2, 0x10

    .line 17
    and-long/2addr v0, v2

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->dateWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 34
    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    sget-object p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->dateWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    .line 43
    .line 44
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    .line 50
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->dateWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 51
    return-object p1

    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->dateWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 54
    return-object p1

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public isDateFormatISO8601()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatISO8601:Z

    .line 3
    return v0
.end method

.method public isDateFormatMillis()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatMillis:Z

    .line 3
    return v0
.end method

.method public writeDate(Lcom/alibaba/fastjson2/JSONWriter;J)V
    .locals 34

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-wide/from16 v2, p2

    .line 7
    .line 8
    iget-boolean v4, v1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeMillis(J)V

    .line 17
    return-void

    .line 18
    .line 19
    :cond_0
    iget-object v4, v1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 20
    .line 21
    iget-boolean v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatUnixTime:Z

    .line 22
    .line 23
    const-wide/16 v6, 0x3e8

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v5, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatUnixTime()Z

    .line 33
    move-result v5

    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    :cond_1
    move-wide v6, v2

    .line 37
    move-object v2, v1

    .line 38
    .line 39
    goto/16 :goto_e

    .line 40
    .line 41
    :cond_2
    iget-boolean v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatMillis:Z

    .line 42
    .line 43
    if-nez v5, :cond_3

    .line 44
    .line 45
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v5, :cond_4

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatMillis()Z

    .line 51
    move-result v5

    .line 52
    .line 53
    if-nez v5, :cond_3

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    :goto_0
    move-wide v6, v2

    .line 56
    move-object v2, v1

    .line 57
    .line 58
    goto/16 :goto_d

    .line 59
    .line 60
    :cond_4
    :goto_1
    iget-wide v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v8, v9}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    .line 64
    move-result-wide v8

    .line 65
    .line 66
    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriterUtilDateAsMillis:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 67
    .line 68
    iget-wide v10, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    .line 69
    and-long/2addr v8, v10

    .line 70
    .line 71
    const-wide/16 v10, 0x0

    .line 72
    .line 73
    cmp-long v5, v8, v10

    .line 74
    .line 75
    if-eqz v5, :cond_5

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :cond_5
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 80
    move-result-object v5

    .line 81
    .line 82
    iget-object v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v8, :cond_6

    .line 85
    goto :goto_2

    .line 86
    .line 87
    .line 88
    :cond_6
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormat()Ljava/lang/String;

    .line 89
    move-result-object v8

    .line 90
    .line 91
    :goto_2
    iget-boolean v9, v0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatyyyyMMddhhmmss19:Z

    .line 92
    const/4 v12, 0x1

    .line 93
    .line 94
    if-nez v9, :cond_8

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isFormatyyyyMMddhhmmss19()Z

    .line 98
    move-result v9

    .line 99
    .line 100
    if-eqz v9, :cond_7

    .line 101
    .line 102
    iget-object v9, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 103
    .line 104
    if-nez v9, :cond_7

    .line 105
    goto :goto_3

    .line 106
    :cond_7
    const/4 v9, 0x0

    .line 107
    goto :goto_4

    .line 108
    :cond_8
    :goto_3
    move v9, v12

    .line 109
    .line 110
    :goto_4
    if-eqz v8, :cond_a

    .line 111
    .line 112
    iget-boolean v8, v0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatyyyyMMddhhmmss14:Z

    .line 113
    .line 114
    if-nez v8, :cond_a

    .line 115
    .line 116
    if-eqz v9, :cond_9

    .line 117
    goto :goto_5

    .line 118
    :cond_9
    move-wide v6, v2

    .line 119
    .line 120
    goto/16 :goto_9

    .line 121
    .line 122
    .line 123
    :cond_a
    :goto_5
    invoke-static {v2, v3, v6, v7}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 124
    move-result-wide v14

    .line 125
    .line 126
    sget-object v8, Lcom/alibaba/fastjson2/time/ZoneId;->SHANGHAI_ZONE_ID:Lcom/alibaba/fastjson2/time/ZoneId;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v8

    .line 131
    .line 132
    if-eqz v8, :cond_b

    .line 133
    .line 134
    .line 135
    invoke-static {v14, v15}, Lcom/alibaba/fastjson2/util/DateUtils;->getShanghaiZoneOffsetTotalSeconds(J)I

    .line 136
    move-result v8

    .line 137
    .line 138
    :goto_6
    move-wide/from16 v16, v10

    .line 139
    goto :goto_7

    .line 140
    .line 141
    .line 142
    :cond_b
    invoke-static {v2, v3}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 143
    move-result-object v8

    .line 144
    .line 145
    .line 146
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    .line 147
    move-result v8

    .line 148
    goto :goto_6

    .line 149
    :goto_7
    int-to-long v10, v8

    .line 150
    add-long/2addr v14, v10

    .line 151
    .line 152
    .line 153
    const-wide/32 v10, 0x15180

    .line 154
    .line 155
    .line 156
    invoke-static {v14, v15, v10, v11}, Lcom/alibaba/fastjson2/util/IOUtils;->floorDiv(JJ)J

    .line 157
    move-result-wide v18

    .line 158
    .line 159
    .line 160
    invoke-static {v14, v15, v10, v11}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    .line 161
    move-result-wide v10

    .line 162
    long-to-int v8, v10

    .line 163
    .line 164
    .line 165
    const-wide/32 v10, 0xafa6c

    .line 166
    .line 167
    add-long v10, v18, v10

    .line 168
    .line 169
    cmp-long v14, v10, v16

    .line 170
    .line 171
    const-wide/16 v20, 0x1

    .line 172
    .line 173
    .line 174
    const-wide/32 v22, 0x23ab1

    .line 175
    .line 176
    const-wide/16 v24, 0x190

    .line 177
    .line 178
    if-gez v14, :cond_c

    .line 179
    .line 180
    .line 181
    const-wide/32 v14, 0xafa6d

    .line 182
    .line 183
    add-long v18, v18, v14

    .line 184
    .line 185
    div-long v18, v18, v22

    .line 186
    .line 187
    sub-long v14, v18, v20

    .line 188
    .line 189
    mul-long v18, v14, v24

    .line 190
    neg-long v14, v14

    .line 191
    .line 192
    mul-long v14, v14, v22

    .line 193
    add-long/2addr v10, v14

    .line 194
    goto :goto_8

    .line 195
    .line 196
    :cond_c
    move-wide/from16 v18, v16

    .line 197
    .line 198
    :goto_8
    mul-long v14, v10, v24

    .line 199
    .line 200
    const-wide/16 v26, 0x24f

    .line 201
    .line 202
    add-long v14, v14, v26

    .line 203
    .line 204
    div-long v14, v14, v22

    .line 205
    .line 206
    const-wide/16 v22, 0x16d

    .line 207
    .line 208
    mul-long v26, v14, v22

    .line 209
    .line 210
    const-wide/16 v28, 0x4

    .line 211
    .line 212
    div-long v30, v14, v28

    .line 213
    .line 214
    add-long v26, v26, v30

    .line 215
    .line 216
    const-wide/16 v30, 0x64

    .line 217
    .line 218
    div-long v32, v14, v30

    .line 219
    .line 220
    sub-long v26, v26, v32

    .line 221
    .line 222
    div-long v32, v14, v24

    .line 223
    .line 224
    add-long v26, v26, v32

    .line 225
    .line 226
    sub-long v26, v10, v26

    .line 227
    .line 228
    cmp-long v32, v26, v16

    .line 229
    .line 230
    if-gez v32, :cond_d

    .line 231
    .line 232
    sub-long v14, v14, v20

    .line 233
    .line 234
    mul-long v22, v22, v14

    .line 235
    .line 236
    div-long v20, v14, v28

    .line 237
    .line 238
    add-long v22, v22, v20

    .line 239
    .line 240
    div-long v20, v14, v30

    .line 241
    .line 242
    sub-long v22, v22, v20

    .line 243
    .line 244
    div-long v20, v14, v24

    .line 245
    .line 246
    add-long v22, v22, v20

    .line 247
    .line 248
    sub-long v26, v10, v22

    .line 249
    .line 250
    :cond_d
    move-wide/from16 v10, v26

    .line 251
    .line 252
    add-long v14, v14, v18

    .line 253
    long-to-int v10, v10

    .line 254
    .line 255
    mul-int/lit8 v11, v10, 0x5

    .line 256
    .line 257
    add-int/lit8 v11, v11, 0x2

    .line 258
    .line 259
    div-int/lit16 v11, v11, 0x99

    .line 260
    .line 261
    add-int/lit8 v18, v11, 0x2

    .line 262
    .line 263
    rem-int/lit8 v18, v18, 0xc

    .line 264
    .line 265
    add-int/lit8 v18, v18, 0x1

    .line 266
    .line 267
    move/from16 v19, v12

    .line 268
    .line 269
    mul-int/lit16 v12, v11, 0x132

    .line 270
    .line 271
    add-int/lit8 v12, v12, 0x5

    .line 272
    .line 273
    div-int/lit8 v12, v12, 0xa

    .line 274
    sub-int/2addr v10, v12

    .line 275
    .line 276
    add-int/lit8 v10, v10, 0x1

    .line 277
    .line 278
    div-int/lit8 v11, v11, 0xa

    .line 279
    int-to-long v11, v11

    .line 280
    add-long/2addr v14, v11

    .line 281
    .line 282
    .line 283
    invoke-static {v14, v15}, Lcom/alibaba/fastjson2/time/LocalDateTime;->checkYear(J)I

    .line 284
    move-result v11

    .line 285
    int-to-long v14, v8

    .line 286
    .line 287
    cmp-long v8, v14, v16

    .line 288
    .line 289
    if-ltz v8, :cond_16

    .line 290
    .line 291
    .line 292
    const-wide/32 v16, 0x1517f

    .line 293
    .line 294
    cmp-long v8, v14, v16

    .line 295
    .line 296
    if-gtz v8, :cond_16

    .line 297
    .line 298
    const-wide/16 v16, 0xe10

    .line 299
    .line 300
    div-long v6, v14, v16

    .line 301
    long-to-int v6, v6

    .line 302
    .line 303
    mul-int/lit16 v7, v6, 0xe10

    .line 304
    int-to-long v7, v7

    .line 305
    sub-long/2addr v14, v7

    .line 306
    .line 307
    const-wide/16 v7, 0x3c

    .line 308
    .line 309
    div-long v7, v14, v7

    .line 310
    long-to-int v7, v7

    .line 311
    .line 312
    mul-int/lit8 v8, v7, 0x3c

    .line 313
    .line 314
    move-wide/from16 v16, v14

    .line 315
    int-to-long v13, v8

    .line 316
    .line 317
    sub-long v13, v16, v13

    .line 318
    long-to-int v8, v13

    .line 319
    .line 320
    if-ltz v11, :cond_9

    .line 321
    .line 322
    const/16 v12, 0x270f

    .line 323
    .line 324
    if-gt v11, v12, :cond_9

    .line 325
    .line 326
    iget-boolean v5, v0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatyyyyMMddhhmmss14:Z

    .line 327
    .line 328
    if-eqz v5, :cond_e

    .line 329
    .line 330
    .line 331
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 332
    move v5, v6

    .line 333
    move v6, v7

    .line 334
    move v7, v8

    .line 335
    move v4, v10

    .line 336
    move v2, v11

    .line 337
    .line 338
    move/from16 v3, v18

    .line 339
    .line 340
    .line 341
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime14(IIIIII)V

    .line 342
    return-void

    .line 343
    :cond_e
    move v5, v6

    .line 344
    move v1, v7

    .line 345
    move-wide v6, v2

    .line 346
    move v3, v8

    .line 347
    move v2, v11

    .line 348
    .line 349
    if-eqz v9, :cond_f

    .line 350
    .line 351
    .line 352
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 353
    move v6, v1

    .line 354
    move v7, v3

    .line 355
    move v4, v10

    .line 356
    .line 357
    move/from16 v3, v18

    .line 358
    .line 359
    move-object/from16 v1, p1

    .line 360
    .line 361
    .line 362
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    .line 363
    return-void

    .line 364
    :cond_f
    move v8, v3

    .line 365
    .line 366
    move/from16 v3, v18

    .line 367
    .line 368
    const-wide/16 v11, 0x3e8

    .line 369
    .line 370
    .line 371
    invoke-static {v6, v7, v11, v12}, Lcom/alibaba/fastjson2/util/IOUtils;->floorMod(JJ)J

    .line 372
    move-result-wide v11

    .line 373
    long-to-int v9, v11

    .line 374
    .line 375
    if-eqz v9, :cond_10

    .line 376
    .line 377
    .line 378
    invoke-static {v6, v7}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 379
    move-result-object v6

    .line 380
    .line 381
    .line 382
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 383
    move-result-object v4

    .line 384
    .line 385
    .line 386
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson2/time/ZoneId;->getOffsetTotalSeconds(Lcom/alibaba/fastjson2/time/Instant;)I

    .line 387
    move-result v4

    .line 388
    .line 389
    .line 390
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 391
    move v7, v8

    .line 392
    move v8, v9

    .line 393
    move v9, v4

    .line 394
    move v4, v10

    .line 395
    const/4 v10, 0x0

    .line 396
    move v6, v1

    .line 397
    .line 398
    move-object/from16 v1, p1

    .line 399
    .line 400
    .line 401
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    .line 402
    return-void

    .line 403
    :cond_10
    move v6, v1

    .line 404
    move v7, v8

    .line 405
    move v4, v10

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 409
    .line 410
    move-object/from16 v1, p1

    .line 411
    .line 412
    .line 413
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTime19(IIIIII)V

    .line 414
    return-void

    .line 415
    .line 416
    .line 417
    :goto_9
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 418
    .line 419
    .line 420
    invoke-static {v6, v7}, Lcom/alibaba/fastjson2/time/Instant;->ofEpochMilli(J)Lcom/alibaba/fastjson2/time/Instant;

    .line 421
    move-result-object v1

    .line 422
    .line 423
    .line 424
    invoke-static {v1, v5}, Lcom/alibaba/fastjson2/time/ZonedDateTime;->ofInstant(Lcom/alibaba/fastjson2/time/Instant;Lcom/alibaba/fastjson2/time/ZoneId;)Lcom/alibaba/fastjson2/time/ZonedDateTime;

    .line 425
    move-result-object v1

    .line 426
    .line 427
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatISO8601:Z

    .line 428
    .line 429
    if-nez v2, :cond_12

    .line 430
    .line 431
    .line 432
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isDateFormatISO8601()Z

    .line 433
    move-result v2

    .line 434
    .line 435
    if-eqz v2, :cond_11

    .line 436
    .line 437
    iget-object v2, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    .line 438
    .line 439
    if-nez v2, :cond_11

    .line 440
    goto :goto_a

    .line 441
    .line 442
    :cond_11
    move-object/from16 v2, p1

    .line 443
    goto :goto_b

    .line 444
    .line 445
    :cond_12
    :goto_a
    iget-object v2, v1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 446
    .line 447
    iget-object v3, v2, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 448
    .line 449
    iget v5, v3, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 450
    .line 451
    if-ltz v5, :cond_11

    .line 452
    .line 453
    const/16 v12, 0x270f

    .line 454
    .line 455
    if-gt v5, v12, :cond_11

    .line 456
    .line 457
    iget-short v4, v3, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 458
    .line 459
    iget-short v3, v3, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 460
    .line 461
    iget-object v2, v2, Lcom/alibaba/fastjson2/time/LocalDateTime;->time:Lcom/alibaba/fastjson2/time/LocalTime;

    .line 462
    move v6, v5

    .line 463
    .line 464
    iget-byte v5, v2, Lcom/alibaba/fastjson2/time/LocalTime;->hour:B

    .line 465
    move v7, v6

    .line 466
    .line 467
    iget-byte v6, v2, Lcom/alibaba/fastjson2/time/LocalTime;->minute:B

    .line 468
    move v8, v7

    .line 469
    .line 470
    iget-byte v7, v2, Lcom/alibaba/fastjson2/time/LocalTime;->second:B

    .line 471
    .line 472
    iget v2, v2, Lcom/alibaba/fastjson2/time/LocalTime;->nano:I

    .line 473
    .line 474
    .line 475
    const v9, 0xf4240

    .line 476
    div-int/2addr v2, v9

    .line 477
    .line 478
    iget v9, v1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->offsetSeconds:I

    .line 479
    const/4 v10, 0x1

    .line 480
    move v1, v8

    .line 481
    move v8, v2

    .line 482
    move v2, v1

    .line 483
    move v1, v4

    .line 484
    move v4, v3

    .line 485
    move v3, v1

    .line 486
    .line 487
    move-object/from16 v1, p1

    .line 488
    .line 489
    .line 490
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateTimeISO8601(IIIIIIIIZ)V

    .line 491
    return-void

    .line 492
    .line 493
    :goto_b
    iget-boolean v3, v0, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->formatyyyyMMdd8:Z

    .line 494
    .line 495
    if-eqz v3, :cond_13

    .line 496
    .line 497
    iget-object v1, v1, Lcom/alibaba/fastjson2/time/ZonedDateTime;->dateTime:Lcom/alibaba/fastjson2/time/LocalDateTime;

    .line 498
    .line 499
    iget-object v1, v1, Lcom/alibaba/fastjson2/time/LocalDateTime;->date:Lcom/alibaba/fastjson2/time/LocalDate;

    .line 500
    .line 501
    iget v3, v1, Lcom/alibaba/fastjson2/time/LocalDate;->year:I

    .line 502
    .line 503
    if-ltz v3, :cond_13

    .line 504
    .line 505
    const/16 v12, 0x270f

    .line 506
    .line 507
    if-gt v3, v12, :cond_13

    .line 508
    .line 509
    iget-short v4, v1, Lcom/alibaba/fastjson2/time/LocalDate;->monthValue:S

    .line 510
    .line 511
    iget-short v1, v1, Lcom/alibaba/fastjson2/time/LocalDate;->dayOfMonth:S

    .line 512
    .line 513
    .line 514
    invoke-virtual {v2, v3, v4, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeDateYYYMMDD8(III)V

    .line 515
    return-void

    .line 516
    .line 517
    .line 518
    :cond_13
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/writer/FieldWriterDate;->getFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 519
    move-result-object v1

    .line 520
    .line 521
    if-nez v1, :cond_14

    .line 522
    .line 523
    .line 524
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Lcom/alibaba/fastjson2/time/DateTimeFormatter;

    .line 525
    move-result-object v1

    .line 526
    .line 527
    :cond_14
    new-instance v3, Ljava/util/Date;

    .line 528
    .line 529
    .line 530
    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 531
    .line 532
    if-eqz v1, :cond_15

    .line 533
    .line 534
    .line 535
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/time/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 536
    move-result-object v1

    .line 537
    goto :goto_c

    .line 538
    .line 539
    :cond_15
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getZoneId()Lcom/alibaba/fastjson2/time/ZoneId;

    .line 543
    move-result-object v1

    .line 544
    .line 545
    .line 546
    invoke-static {v3, v1}, Lcom/alibaba/fastjson2/util/DateUtils;->formatYMDHMS19(Ljava/util/Date;Lcom/alibaba/fastjson2/time/ZoneId;)Ljava/lang/String;

    .line 547
    move-result-object v1

    .line 548
    .line 549
    .line 550
    :goto_c
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 551
    return-void

    .line 552
    .line 553
    :cond_16
    new-instance v1, Lcom/alibaba/fastjson2/time/DateTimeException;

    .line 554
    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .line 560
    const-string v3, "Invalid secondOfDay "

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    move-result-object v2

    .line 571
    .line 572
    .line 573
    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 574
    throw v1

    .line 575
    .line 576
    .line 577
    :goto_d
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual/range {p1 .. p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 581
    return-void

    .line 582
    .line 583
    .line 584
    :goto_e
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 585
    .line 586
    const-wide/16 v19, 0x3e8

    .line 587
    .line 588
    div-long v3, v6, v19

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    .line 592
    return-void
.end method
