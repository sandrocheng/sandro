.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

.field final synthetic val$end:I

.field final synthetic val$left:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;III)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->val$start:I

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->val$end:I

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->val$left:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mColorEggManager:Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/service/ColorEggManager;->startCheckLottery()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setIsReadyToShow(Z)V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->val$start:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setFlying(Z)V

    new-instance v2, Landroid/media/AsyncPlayer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/media/AsyncPlayer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mConfigDao:Lho;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->cw()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.resource://com.tencent.qqpimsecure/2131099650"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v3, v7, v5}, Landroid/media/AsyncPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    :cond_0
    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->val$end:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    :cond_1
    :goto_0
    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->val$end:I

    if-lt v1, v4, :cond_2

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mhandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    iput v7, v4, Landroid/os/Message;->what:I

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->val$left:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    iput v1, v4, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->hasAddToWindow()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v0, v0, 0x3

    sub-int/2addr v1, v0

    const-wide/16 v4, 0x1e

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-gt v1, v3, :cond_1

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRocketRunning(Z)V
    invoke-static {v4, v7}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1800(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;Z)V

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setFlying(Z)V

    invoke-virtual {v2}, Landroid/media/AsyncPlayer;->stop()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    const/16 v2, 0x3e8

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->rocketDelay:I
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1902(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mhandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$2;->val$left:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
