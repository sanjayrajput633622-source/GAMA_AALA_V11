.class public final synthetic Lcom/google/firebase/messaging/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic X:Lcom/google/firebase/messaging/s1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/s1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/q1;->X:Lcom/google/firebase/messaging/s1$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/q1;->X:Lcom/google/firebase/messaging/s1$a;

    invoke-static {v0}, Lcom/google/firebase/messaging/s1$a;->b(Lcom/google/firebase/messaging/s1$a;)V

    return-void
.end method
