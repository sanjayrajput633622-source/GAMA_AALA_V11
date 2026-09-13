.class public final Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;
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
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb9/d<",
        "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;

.field public static final b:Lb9/c;

.field public static final c:Lb9/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;->a:Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;

    .line 7
    .line 8
    const-string v0, "filename"

    .line 9
    .line 10
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;->b:Lb9/c;

    .line 15
    .line 16
    const-string v0, "contents"

    .line 17
    .line 18
    invoke-static {v0}, Lb9/c;->d(Ljava/lang/String;)Lb9/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;->c:Lb9/c;

    .line 23
    .line 24
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
    check-cast p1, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;

    .line 2
    .line 3
    check-cast p2, Lb9/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;->b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;Lb9/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;Lb9/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;->b:Lb9/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;->getFilename()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Lb9/e;->a(Lb9/c;Ljava/lang/Object;)Lb9/e;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/google/firebase/crashlytics/internal/model/AutoCrashlyticsReportEncoder$f;->c:Lb9/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;->getContents()[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p2, v0, p1}, Lb9/e;->a(Lb9/c;Ljava/lang/Object;)Lb9/e;

    .line 17
    .line 18
    .line 19
    return-void
.end method
