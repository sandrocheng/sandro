.class final Layx;
.super Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener",
        "<",
        "Lkv;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Layp;


# direct methods
.method constructor <init>(Layp;)V
    .locals 0

    iput-object p1, p0, Layx;->a:Layp;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDeleted(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onDeleted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final synthetic onFailed(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final synthetic onFinished(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final synthetic onPaused(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onPaused(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final synthetic onProgressChanged(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 5

    const/4 v4, 0x3

    check-cast p1, Lkv;

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Layx;->a:Layp;

    invoke-static {v2}, Layp;->v(Layp;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Layp;->a(Layp;J)J

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final synthetic onRunning(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final synthetic onWaiting(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final onWaiting(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->a(Layp;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layx;->a:Layp;

    invoke-static {v0}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layx;->a:Layp;

    invoke-static {v1}, Layp;->u(Layp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
