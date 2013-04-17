.class Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->getProgress()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mAnimToProgress:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;->onAnimationFinish()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mAnimToProgress:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I

    move-result v2

    if-le v2, v0, :cond_5

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mAnimToProgress:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I

    move-result v2

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mAnimToProgress:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I

    move-result v0

    :cond_3
    :goto_2
    if-gez v0, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mCurrentProgress:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mTargetProgress:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mCurrentProgress:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;->onAnimationFinish()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const/4 v2, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->access$102(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
