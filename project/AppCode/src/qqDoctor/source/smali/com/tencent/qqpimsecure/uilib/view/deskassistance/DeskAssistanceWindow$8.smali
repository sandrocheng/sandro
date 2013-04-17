.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/deskassistance/OnRocketMoveListener;


# instance fields
.field isin:Z

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->isin:Z

    return-void
.end method


# virtual methods
.method public onAnimationDone()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->isin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mhandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mhandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setRocketDone()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOptomoizeStarted:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->removeMinDeskView()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setColorEggGone()V

    return-void
.end method

.method public onMove()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->initWhilePoolview()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$700(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->poolAnimate(ZZ)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->getWhirlPoolViewRect()Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$800(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isInWhirlPool(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->showUseRocketTipMsg()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$900(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->poolAnimate(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->poolAnimate(ZZ)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    goto :goto_0
.end method

.method public onPutDown()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->getWhirlPoolViewRect()Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$800(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->isInWhirlPool(Landroid/graphics/Rect;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->isin:Z

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->isin:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mMinDeskAssistantWindow:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->setUp()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->poolAnimate(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mOptomoizeStarted:Z
    invoke-static {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$202(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;Z)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mConfigDao:Lho;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$1400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->df()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x669f

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->isin:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->onAnimationDone()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow$8;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->mWhirlPoolView:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->stopAnimation()V

    goto :goto_1
.end method

.method public onStandUp()V
    .locals 0

    return-void
.end method
