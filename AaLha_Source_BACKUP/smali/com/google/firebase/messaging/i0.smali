.class public final synthetic Lcom/google/firebase/messaging/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li8/l;


# instance fields
.field public final synthetic a:Li8/g0;


# direct methods
.method public synthetic constructor <init>(Li8/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/i0;->a:Li8/g0;

    return-void
.end method


# virtual methods
.method public final a(Li8/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/i0;->a:Li8/g0;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->a(Li8/g0;Li8/i;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    return-object p1
.end method
