.class public final Lafr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)V
    .locals 0

    iput-object p1, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWifiApproveCheckFinished(ZZ)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->e(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/tmsecure/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->f(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->g(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->h(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p1, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    iget-object v1, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->i(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->finish()V

    goto :goto_0

    :cond_2
    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    iput v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    const v1, 0x7f0b0598

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->finish()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    const v1, 0x7f0b059b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lafr;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->finish()V

    goto :goto_0
.end method
