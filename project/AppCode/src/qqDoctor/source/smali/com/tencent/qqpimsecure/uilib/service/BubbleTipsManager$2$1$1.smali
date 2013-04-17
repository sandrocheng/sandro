.class Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    const/16 v2, -0x2710

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$500(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$500(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$bubblePop:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$bubblePop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$bubblePop:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleDirectionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffXList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x4b

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffX:I
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$602(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffYList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$702(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$bubblePop:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffX:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$600(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$700(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$bubblePop:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$500(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$800(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTypeList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    #calls: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->countBubbleType(B)V
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$900(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;B)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->secondCount:I
    invoke-static {v0, v4}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$1002(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$MyTimeTask;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$MyTimeTask;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffXList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffX:I
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$602(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffYList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$702(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BubbleTipsManager Direction_Up_Bubble bubbleOffY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$700(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffXList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x4b

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffX:I
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$602(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffYList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$702(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BubbleTipsManager Direction_Down_Bubble bubbleOffY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$700(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffXList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffX:I
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$602(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleOffYList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3c

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$702(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BubbleTipsManager Direction_Down_Bubble bubbleOffY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;->this$2:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleOffY:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$700(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
