.class final Log;
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
.field private synthetic a:Lof;


# direct methods
.method constructor <init>(Lof;)V
    .locals 0

    iput-object p1, p0, Log;->a:Lof;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDeleted(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Log;->a:Lof;

    invoke-static {v0}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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

    iget-object v0, p0, Log;->a:Lof;

    invoke-static {v0}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final synthetic onFailed(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 4

    const/4 v3, 0x5

    check-cast p1, Lkv;

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

    invoke-static {}, Lof;->b()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Log;->a:Lof;

    invoke-static {v0}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget v0, p1, Lkv;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Log;->a:Lof;

    invoke-static {v0}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final synthetic onFinished(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Log;->a:Lof;

    invoke-static {v0}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final synthetic onPaused(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Log;->a:Lof;

    invoke-static {v0}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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

    iget-object v0, p0, Log;->a:Lof;

    invoke-static {v0}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final synthetic onProgressChanged(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 5

    const/4 v4, 0x2

    check-cast p1, Lkv;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Log;->a:Lof;

    invoke-static {v2}, Lof;->b(Lof;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Lkv;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Log;->a:Lof;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lof;->a(Lof;J)J

    iget-object v0, p0, Log;->a:Lof;

    invoke-static {v0}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final synthetic onRunning(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    check-cast p1, Lkv;

    iget-object v0, p0, Log;->a:Lof;

    invoke-static {v0}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Log;->a:Lof;

    invoke-static {v1}, Lof;->a(Lof;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
