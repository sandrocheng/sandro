.class public Lcom/tencent/tmsecure/module/networkload/BasicDownloadService;
.super Lcom/tencent/tmsecure/common/BaseService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;",
        ">",
        "Lcom/tencent/tmsecure/common/BaseService;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;-><init>()V

    return-object v0
.end method

.method public onDestory()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tmsecure/module/networkload/BasicDownloadService;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->clearData()V

    return-void
.end method
