.class Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$600(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v3, "/s"

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalafter:J
    invoke-static {v1, v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$702(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeGPRS:J
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$800(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-gtz v1, :cond_3

    const-wide/16 v1, -0x1

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalbefore:J
    invoke-static {v6}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$900(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSintervalDerifference:J

    :goto_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalafter:J
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$700(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v6

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalbefore:J
    invoke-static {v1, v6, v7}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$902(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeGPRS:J
    invoke-static {v1, v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$802(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isMobileDataConnectivityActive()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v2

    const v4, 0x7f020072

    invoke-static {v1, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v2, 0x1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v1, v1, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSintervalDerifference:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v1, v1, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSintervalDerifference:J

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->fillGPRSPercent(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1400(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeGPRS:J
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$800(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v1

    sub-long v1, v4, v1

    goto/16 :goto_1

    :cond_4
    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalafter:J
    invoke-static {v7}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$700(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSTotalbefore:J
    invoke-static {v9}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$900(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-double v7, v7

    long-to-double v1, v1

    div-double v1, v7, v1

    const-wide v7, 0x408f400000000000L

    mul-double/2addr v1, v7

    double-to-long v1, v1

    iput-wide v1, v6, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSintervalDerifference:J

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v2

    const v4, 0x7f020073

    invoke-static {v1, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v2, 0x2

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    new-instance v1, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Liu;->getUsedForMonth()J

    move-result-wide v1

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiActive()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v1, v1, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFIintervalDerifference:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v1, v1, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFIintervalDerifference:J

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)I

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f020077

    invoke-static {v2, v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v4, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    :cond_8
    :goto_6
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_9
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    new-instance v1, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Liu;->getUsedForMonth()J

    move-result-wide v1

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f020073

    invoke-static {v2, v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v4, 0x2

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    new-instance v1, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Liu;->getUsedForMonth()J

    move-result-wide v1

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020073

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v3, 0x2

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$600(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v2, "/s"

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v3, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalafter:J
    invoke-static {v1, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1502(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeWIFI:J
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1600(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_f

    const-wide/16 v0, -0x1

    :goto_7
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_d

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalbefore:J
    invoke-static {v5}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1700(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_10

    :cond_d
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const-wide/16 v5, -0x1

    iput-wide v5, v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFIintervalDerifference:J

    :goto_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeWIFI:J
    invoke-static {v0, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1602(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalafter:J
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1500(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v3

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalbefore:J
    invoke-static {v0, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1702(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;J)J

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isMobileDataConnectivityActive()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f020072

    invoke-static {v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v1, 0x1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    :cond_e
    :goto_9
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v0, v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSintervalDerifference:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v0, v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->GPRSintervalDerifference:J

    invoke-static {v0, v1}, La;->b(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mPreTimeWIFI:J
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1600(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v0

    sub-long v0, v3, v0

    goto/16 :goto_7

    :cond_10
    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalafter:J
    invoke-static {v6}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1500(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFITotalbefore:J
    invoke-static {v8}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1700(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    long-to-double v0, v0

    div-double v0, v6, v0

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v0, v6

    double-to-long v0, v0

    iput-wide v0, v5, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFIintervalDerifference:J

    goto/16 :goto_8

    :cond_11
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f020073

    invoke-static {v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v1, 0x2

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    goto :goto_9

    :cond_12
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->getUsedForMonth()J

    move-result-wide v0

    invoke-static {v0, v1}, La;->b(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->netSetManager:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiActive()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)I

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f020077

    invoke-static {v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    :cond_14
    :goto_a
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v0, v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFIintervalDerifference:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-wide v0, v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->WIFIintervalDerifference:J

    invoke-static {v0, v1}, La;->b(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f020073

    invoke-static {v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v1, 0x2

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    goto :goto_a

    :cond_16
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->getUsedForMonth()J

    move-result-wide v0

    invoke-static {v0, v1}, La;->b(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->getUsedForMonth()J

    move-result-wide v0

    invoke-static {v0, v1}, La;->b(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v2, 0x2

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isShow:Z
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1800(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mCloseView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v2, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isShow:Z
    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1802(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Z)Z

    :goto_b
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mFlowWindowBar:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1900(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mCloseView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v2, 0x1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isShow:Z
    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1802(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Z)Z

    goto :goto_b

    :cond_19
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mFlowWindowBar:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1900(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mCloseView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$600(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_1a
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->setVisibility(I)V

    new-instance v1, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Liu;->getUsedForMonth()J

    move-result-wide v1

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mLogoView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f020073

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v3, 0x2

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mShowingLogoType:I
    invoke-static {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$402(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;I)I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->fillGPRSPercent(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1400(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
