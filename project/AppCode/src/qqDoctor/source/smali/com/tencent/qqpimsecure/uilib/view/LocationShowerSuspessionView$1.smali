.class Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-wide/16 v5, 0x15e

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage1:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mFlashImage2:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    sget v0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->isinorout:I

    sget v1, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->out:I

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lvc;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/LocationShowerSuspessionView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
