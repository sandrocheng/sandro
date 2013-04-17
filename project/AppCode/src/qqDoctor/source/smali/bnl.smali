.class final Lbnl;
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
.field private synthetic a:Lbnd;


# direct methods
.method constructor <init>(Lbnd;)V
    .locals 0

    iput-object p1, p0, Lbnl;->a:Lbnd;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDeleted(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final synthetic onFailed(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 4

    const/16 v3, 0x10

    check-cast p1, Lkv;

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p1, Lkv;->isOnChangeRetry:Z

    if-nez v0, :cond_3

    iget v0, p1, Lkv;->mErrorCode:I

    const/16 v1, -0xbee

    if-eq v0, v1, :cond_0

    iget v0, p1, Lkv;->mErrorCode:I

    const/16 v1, -0xbef

    if-eq v0, v1, :cond_0

    iget v0, p1, Lkv;->mErrorCode:I

    const/16 v1, -0xbf6

    if-ne v0, v1, :cond_3

    :cond_0
    new-instance v1, LQQPIM/ChangeUrlReqInfo;

    iget-object v0, p1, Lkv;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v0}, LQQPIM/ChangeUrlReqInfo;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getChangeUrl(LQQPIM/ChangeUrlReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkv;->isOnChangeRetry:Z

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ChangeUrlResInfo;

    iget-object v0, v0, LQQPIM/ChangeUrlResInfo;->changeurl:Ljava/lang/String;

    iput-object v0, p1, Lkv;->mChangeUrl:Ljava/lang/String;

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->w(Lbnd;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget v0, p1, Lkv;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final synthetic onFinished(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final synthetic onPaused(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final synthetic onProgressChanged(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    const/16 v1, 0xd

    check-cast p1, Lkv;

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final synthetic onRunning(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final synthetic onWaiting(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbnl;->a:Lbnd;

    invoke-static {v0}, Lbnd;->q(Lbnd;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
