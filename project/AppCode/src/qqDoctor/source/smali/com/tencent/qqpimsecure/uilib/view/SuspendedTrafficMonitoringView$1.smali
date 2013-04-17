.class Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosingDateReached()V
    .locals 0

    return-void
.end method

.method public onDayChanged()V
    .locals 0

    return-void
.end method

.method public onNormalChanged(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isMobileDataConnectivityActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
