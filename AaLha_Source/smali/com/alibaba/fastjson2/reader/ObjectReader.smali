.class public interface abstract Lcom/alibaba/fastjson2/reader/ObjectReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final HASH_TYPE:J = 0x6570797440L


# virtual methods
.method public abstract accept(Ljava/lang/Object;Ljava/util/Map;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation
.end method

.method public abstract acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
.end method

.method public abstract autoType(Lcom/alibaba/fastjson2/JSONReader$Context;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
.end method

.method public abstract autoType(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
.end method

.method public abstract createInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract createInstance(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation
.end method

.method public abstract createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createInstance(Ljava/util/Collection;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            "J)TT;"
        }
    .end annotation
.end method

.method public varargs abstract createInstance(Ljava/util/Collection;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createInstance(Ljava/util/Map;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation
.end method

.method public varargs abstract createInstance(Ljava/util/Map;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createInstanceNoneDefaultConstructor(Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract getBuildFunction()Lcom/alibaba/fastjson2/function/Function;
.end method

.method public abstract getFeatures()J
.end method

.method public abstract getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;
.end method

.method public abstract getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;
.end method

.method public abstract getFieldReaderLCase(J)Lcom/alibaba/fastjson2/reader/FieldReader;
.end method

.method public abstract getObjectClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getTypeKey()Ljava/lang/String;
.end method

.method public abstract getTypeKeyHash()J
.end method

.method public abstract readArrayMappingJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation
.end method

.method public abstract readArrayMappingObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation
.end method

.method public abstract readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation
.end method

.method public abstract readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract readObject(Lcom/alibaba/fastjson2/JSONReader;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "J)TT;"
        }
    .end annotation
.end method

.method public abstract readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation
.end method

.method public varargs abstract readObject(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
.end method
