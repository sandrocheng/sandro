.class final Laos;
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
.field private synthetic a:Laoq;


# direct methods
.method constructor <init>(Laoq;)V
    .locals 0

    iput-object p1, p0, Laos;->a:Laoq;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onFailed(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 3

    check-cast p1, Lkv;

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onFailed(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

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

    iget-object v0, p0, Laos;->a:Laoq;

    invoke-static {v0}, Laoq;->d(Laoq;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Lkv;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Laos;->a:Laoq;

    invoke-static {v0, p1}, Laoq;->a(Laoq;Lkv;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laos;->a:Laoq;

    invoke-static {v0, p1}, Laoq;->a(Laoq;Lkv;)V

    goto :goto_0
.end method

.method public final synthetic onFinished(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2

    iget-object v0, p0, Laos;->a:Laoq;

    invoke-static {}, Laoq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "QQSecureDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.qq.AppService.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Laos;->a:Laoq;

    invoke-virtual {v0}, Laoq;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public final bridge synthetic onPaused(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 0

    check-cast p1, Lkv;

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onPaused(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    return-void
.end method

.method public final bridge synthetic onRunning(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 0

    check-cast p1, Lkv;

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onRunning(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    return-void
.end method

.method public final bridge synthetic onWaiting(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 0

    check-cast p1, Lkv;

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onWaiting(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    return-void
.end method
