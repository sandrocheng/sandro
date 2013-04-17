.class Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mIsDoAnim:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLightIndex:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)I

    move-result v1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLastLightIndex:I
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->access$102(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->access$212(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLightIndex:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mArrowList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->mLightIndex:I
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;I)I

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->doAnim()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/button/SleekButtonView;)V

    goto :goto_0
.end method
