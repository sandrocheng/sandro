.class Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onHandlerMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onLoadDataStart()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1$1;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->access$002(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->startLoading()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/BaseView;->mViewDestroy:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->refreshListData()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->stopLoading()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
