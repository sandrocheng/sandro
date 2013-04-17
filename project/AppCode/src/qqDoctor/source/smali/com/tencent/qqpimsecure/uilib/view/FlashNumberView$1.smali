.class Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_Showing:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_ToBeShow:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mIsDoingAnim:Z
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->doSetNumber(I)V
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mNum_ToBeShow:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mIsDoingAnim:Z
    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;Z)Z

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->doSetNumber(I)V
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->mIsDoingAnim:Z
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/FlashNumberView;Z)Z

    goto :goto_0
.end method
