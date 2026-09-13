.class public Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "SourceFile"


# static fields
.field public static final DIRECT:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

.field public static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;


# instance fields
.field private final direct:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;-><init>(Z)V

    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    .line 9
    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;-><init>(Z)V

    .line 15
    .line 16
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->DIRECT:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->direct:Z

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    .line 6
    return-void

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->direct:Z

    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    .line 22
    return-void
.end method
