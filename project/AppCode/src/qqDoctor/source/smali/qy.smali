.class public final Lqy;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/ConnectionDetector;)V
    .locals 0

    iput-object p1, p0, Lqy;->a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lqy;->a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    iget-object v1, p0, Lqy;->a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/service/ConnectionDetector;->a(Lcom/tencent/qqpimsecure/service/ConnectionDetector;)Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/ConnectionDetector;->b(Lcom/tencent/qqpimsecure/service/ConnectionDetector;)V

    iget-object v0, p0, Lqy;->a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    iget-object v1, p0, Lqy;->a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/service/ConnectionDetector;->a(Lcom/tencent/qqpimsecure/service/ConnectionDetector;)Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/ConnectionDetector;->c(Lcom/tencent/qqpimsecure/service/ConnectionDetector;)V

    const-string v0, "kfc"

    const-string v1, "ConnectionDetector, connection become active, updateConfigsAsyn"

    invoke-static {v0, v1}, Lff;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lqy;->a:Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/ConnectionDetector;->a(Lcom/tencent/qqpimsecure/service/ConnectionDetector;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lwr;->a(Z)V

    return-void
.end method
