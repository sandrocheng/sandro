.class final Laft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lafs;


# direct methods
.method constructor <init>(Lafs;I)V
    .locals 0

    iput-object p1, p0, Laft;->b:Lafs;

    iput p2, p0, Laft;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWifiApproveCheckFinished(ZZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Laft;->b:Lafs;

    iget-object v2, v2, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    if-eqz v2, :cond_0

    iget v2, p0, Laft;->a:I

    const v3, 0x7f080079

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Laft;->b:Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->finish()V

    iget-object v0, p0, Laft;->b:Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iput-object v9, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Laft;->a:I

    const v3, 0x7f08007a

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v2, p0, Laft;->b:Lafs;

    iget-object v2, v2, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->f(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Laft;->b:Lafs;

    iget-object v2, v2, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->k(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Laft;->b:Lafs;

    iget-object v2, v2, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->f(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Laft;->b:Lafs;

    iget-object v3, v3, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->l(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Laft;->b:Lafs;

    iget-object v2, v2, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->m(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Laft;->b:Lafs;

    iget-object v1, v1, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->f(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Laft;->b:Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    const v1, 0x7f0b059b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    :goto_1
    iget-object v0, p0, Laft;->b:Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->finish()V

    iget-object v0, p0, Laft;->b:Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iput-object v9, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Laft;->b:Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    const v1, 0x7f0b059c

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Laft;->b:Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "Location"

    iget-object v3, p0, Laft;->b:Lafs;

    iget-object v3, v3, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "FromInternalUI"

    iget-object v3, p0, Laft;->b:Lafs;

    iget-object v3, v3, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->i(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "HasApproved"

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "ReceiveError"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "WifiSsid"

    iget-object v3, p0, Laft;->b:Lafs;

    iget-object v3, v3, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->f(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "needWifiApprove="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Lov$a;

    iget-object v0, p0, Laft;->b:Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v4, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    iget-object v0, p0, Laft;->b:Lafs;

    iget-object v0, v0, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    const-string v5, "notification"

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {v3, v4, v0}, Lov$a;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const v4, 0x7f020241

    iput v4, v0, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    const/16 v4, 0x10

    iput v4, v0, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Laft;->b:Lafs;

    iget-object v4, v4, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v4, v4, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    const v5, 0x7f0b0597

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p0, Laft;->b:Lafs;

    iget-object v4, v4, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v4, v4, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    iget-object v5, p0, Laft;->b:Lafs;

    iget-object v5, v5, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v5, v5, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b03ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v7, p0, Laft;->b:Lafs;

    iget-object v7, v7, Lafs;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v7, v7, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    const/high16 v8, 0x1000

    invoke-static {v7, v1, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x15

    invoke-virtual {v3, v1, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2
.end method
