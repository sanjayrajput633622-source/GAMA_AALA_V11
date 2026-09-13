.class public interface abstract Lcom/alibaba/fastjson2/JSONReader$AutoTypeBeforeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoTypeBeforeHandler"
.end annotation


# virtual methods
.method public abstract apply(JLjava/lang/Class;J)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
