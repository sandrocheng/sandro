.class Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mCurrentProgress:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mTargetProgress:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;->onAnimationFinish()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mTargetProgress:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)I

    move-result v2

    if-le v2, v0, :cond_3

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mTargetProgress:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)I

    move-result v2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mTargetProgress:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)I

    move-result v0

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->setProgress(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
