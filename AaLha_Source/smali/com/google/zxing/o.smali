.class public interface abstract Lcom/google/zxing/o;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lta/b;
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
.end method

.method public abstract b(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lta/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation
.end method
