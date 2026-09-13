.class final Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReferenceField;
.super Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final readOnly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 10

    .line 1
    .line 2
    const-wide/16 v5, 0x0

    .line 3
    const/4 v8, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v7, p5

    .line 10
    .line 11
    move-object/from16 v9, p6

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReference;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p6 .. p6}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 22
    move-result p1

    .line 23
    .line 24
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReferenceField;->readOnly:Z

    .line 25
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/reader/FieldReaderAtomicReferenceField;->readOnly:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->field:Ljava/lang/reflect/Field;

    .line 24
    .line 25
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-void

    .line 33
    .line 34
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    const-string v1, "set "

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldName:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, " error"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    throw p2
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
