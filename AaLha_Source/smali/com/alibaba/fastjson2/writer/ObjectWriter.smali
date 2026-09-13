.class public interface abstract Lcom/alibaba/fastjson2/writer/ObjectWriter;
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


# virtual methods
.method public abstract getFeatures()J
.end method

.method public abstract getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
.end method

.method public abstract getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;
.end method

.method public abstract getFieldWriters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z
.end method

.method public abstract setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V
.end method

.method public abstract setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V
.end method

.method public abstract setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
.end method

.method public abstract setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
.end method

.method public abstract setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V
.end method

.method public varargs abstract toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Lcom/alibaba/fastjson2/JSONWriter$Feature;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
.end method

.method public abstract write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
.end method

.method public abstract writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
.end method

.method public abstract writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
.end method

.method public abstract writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
.end method

.method public abstract writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
.end method

.method public abstract writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z
.end method

.method public abstract writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
.end method

.method public abstract writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
.end method
