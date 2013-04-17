.class public final Lbsj;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Landroid/content/Intent;

.field private synthetic b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iput-object p2, p0, Lbsj;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const v6, 0x7f0b06d4

    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v3

    iget-object v2, p0, Lbsj;->a:Landroid/content/Intent;

    const-string v4, "msg_position"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v0, 0x661f

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lbsj;->a:Landroid/content/Intent;

    const-string v4, "msg_position"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v2

    iget-object v4, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iget-object v4, v4, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    move-result v1

    if-eqz v2, :cond_3

    const/16 v0, 0x6621

    :goto_2
    invoke-virtual {v3, v0}, Lnd;->a(I)V

    if-eqz v1, :cond_5

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    if-eqz v2, :cond_4

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b065e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const/16 v0, 0x6620

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b065d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lbsj;->a:Landroid/content/Intent;

    const-string v4, "msg_position"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_c

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    const/16 v4, 0x9

    if-ge v2, v4, :cond_7

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfs;->a(Landroid/content/Context;)I

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_b

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    if-eqz v2, :cond_9

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0b0664

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v2, :cond_a

    const/16 v0, 0x6623

    :goto_6
    invoke-virtual {v3, v0}, Lnd;->a(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setMobileDataConnectivity(Z)Z

    move-result v0

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0b0663

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    const/16 v0, 0x6622

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfs;->a(Landroid/content/Context;)I

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lbsj;->a:Landroid/content/Intent;

    const-string v4, "msg_position"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_13

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    const/16 v4, 0xe

    if-le v2, v4, :cond_d

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    :try_start_0
    iget-object v2, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getApnState()Z
    :try_end_0
    .catch Lcom/tencent/tmsecure/exception/OperationSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_7
    if-nez v2, :cond_e

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0662

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/exception/OperationSecurityException;->printStackTrace()V

    move v2, v1

    goto :goto_7

    :cond_e
    :try_start_1
    iget-object v2, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getCurUsedApnType()I
    :try_end_1
    .catch Lcom/tencent/tmsecure/exception/OperationSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_8
    if-nez v2, :cond_10

    :try_start_2
    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->switchTo(I)Z
    :try_end_2
    .catch Lcom/tencent/tmsecure/exception/OperationSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    :goto_9
    if-eqz v1, :cond_f

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0660

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_a
    const/16 v0, 0x6624

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lcom/tencent/tmsecure/exception/OperationSecurityException;->printStackTrace()V

    move v2, v1

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/OperationSecurityException;->printStackTrace()V

    goto :goto_9

    :cond_f
    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    if-ne v2, v0, :cond_12

    :try_start_3
    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->switchTo(I)Z
    :try_end_3
    .catch Lcom/tencent/tmsecure/exception/OperationSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    :goto_b
    if-eqz v1, :cond_11

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b065f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/OperationSecurityException;->printStackTrace()V

    goto :goto_b

    :cond_11
    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    iget-object v0, p0, Lbsj;->a:Landroid/content/Intent;

    const-string v1, "msg_position"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbsj;->b:Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;->a(Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfs;->a(Landroid/content/Context;)I

    const/16 v0, 0x6625

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    goto/16 :goto_0
.end method
