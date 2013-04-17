.class Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liu;->e(Z)V

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;->a:Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;->a:Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;->getView()Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "switch_suspession_window"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v1, 0x3

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mCloseView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
