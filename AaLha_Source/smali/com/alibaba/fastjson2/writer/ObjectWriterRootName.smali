.class public final Lcom/alibaba/fastjson2/writer/ObjectWriterRootName;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final rootName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-wide v4, p5

    .line 6
    move-object v6, p7

    .line 7
    .line 8
    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 10
    .line 11
    iput-object p4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterRootName;->rootName:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public toJSONObject(Ljava/lang/Object;J)Lcom/alibaba/fastjson2/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)",
            "Lcom/alibaba/fastjson2/JSONObject;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterRootName;->rootName:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->toJSONObject(Ljava/lang/Object;J)Lcom/alibaba/fastjson2/JSONObject;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSONObject;->of(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterRootName;->rootName:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 12
    .line 13
    .line 14
    invoke-super/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 18
    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterRootName;->rootName:Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    .line 15
    return-void
.end method
