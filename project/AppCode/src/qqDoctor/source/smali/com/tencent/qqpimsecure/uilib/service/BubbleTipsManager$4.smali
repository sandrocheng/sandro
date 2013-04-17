.class Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$1008(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " handleMessage secondCount "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->secondCount:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$1000(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->secondCount:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$1000(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->popShowTime:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$1400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #calls: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->dismissPOP()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$1500(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$4;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
