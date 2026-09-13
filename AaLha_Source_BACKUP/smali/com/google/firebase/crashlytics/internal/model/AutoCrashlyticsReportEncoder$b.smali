.class public final Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb9/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb9/d<",
        "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;

.field public static final b:Lb9/c;

.field public static final c:Lb9/c;

.field public static final d:Lb9/c;

.field public static final e:Lb9/c;

.field public static final f:Lb9/c;

.field public static final g:Lb9/c;

.field public static final h:Lb9/c;

.field public static final i:Lb9/c;

.field public static final j:Lb9/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->a:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;

    .line 7
    .line 8
    const-string v0, "pid"

    .line 9
    .line 10
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->b:Lb9/c;

    .line 15
    .line 16
    const-string v0, "processName"

    .line 17
    .line 18
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->c:Lb9/c;

    .line 23
    .line 24
    const-string v0, "reasonCode"

    .line 25
    .line 26
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->d:Lb9/c;

    .line 31
    .line 32
    const-string v0, "importance"

    .line 33
    .line 34
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->e:Lb9/c;

    .line 39
    .line 40
    const-string v0, "pss"

    .line 41
    .line 42
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->f:Lb9/c;

    .line 47
    .line 48
    const-string v0, "rss"

    .line 49
    .line 50
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->g:Lb9/c;

    .line 55
    .line 56
    const-string v0, "timestamp"

    .line 57
    .line 58
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->h:Lb9/c;

    .line 63
    .line 64
    const-string v0, "traceFile"

    .line 65
    .line 66
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->i:Lb9/c;

    .line 71
    .line 72
    const-string v0, "buildIdMappingForArch"

    .line 73
    .line 74
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->j:Lb9/c;

    .line 79
    .line 80
    return-void
.end method

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
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;

    .line 2
    .line 3
    check-cast p2, Lb9/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;Lb9/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;Lb9/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->b:Lb9/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->getPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {p2, v0, v1}, Lb9/e;->m(Lb9/c;I)Lb9/e;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->c:Lb9/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p2, v0, v1}, Lb9/e;->a(Lb9/c;Ljava/lang/Object;)Lb9/e;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->d:Lb9/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->getReasonCode()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {p2, v0, v1}, Lb9/e;->m(Lb9/c;I)Lb9/e;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->e:Lb9/c;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->getImportance()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-interface {p2, v0, v1}, Lb9/e;->m(Lb9/c;I)Lb9/e;

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->f:Lb9/c;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->getPss()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-interface {p2, v0, v1, v2}, Lb9/e;->n(Lb9/c;J)Lb9/e;

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->g:Lb9/c;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->getRss()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-interface {p2, v0, v1, v2}, Lb9/e;->n(Lb9/c;J)Lb9/e;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->h:Lb9/c;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->getTimestamp()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    invoke-interface {p2, v0, v1, v2}, Lb9/e;->n(Lb9/c;J)Lb9/e;

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->i:Lb9/c;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->getTraceFile()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {p2, v0, v1}, Lb9/e;->a(Lb9/c;Ljava/lang/Object;)Lb9/e;

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$b;->j:Lb9/c;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->getBuildIdMappingForArch()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p2, v0, p1}, Lb9/e;->a(Lb9/c;Ljava/lang/Object;)Lb9/e;

    .line 80
    .line 81
    .line 82
    return-void
.end method
