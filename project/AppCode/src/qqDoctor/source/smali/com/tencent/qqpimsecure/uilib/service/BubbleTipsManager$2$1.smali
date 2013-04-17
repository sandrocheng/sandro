.class Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

.field final synthetic val$bubblePop:Landroid/widget/PopupWindow;

.field final synthetic val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;Landroid/widget/PopupWindow;Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$bubblePop:Landroid/widget/PopupWindow;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->val$tempBubbleModel:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isShowDone:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$000(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isShowDone:Z
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$002(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Z)Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BubbleTipsManager tempIBinder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bubbleView.getTop() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$500(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bubbleView.getBottom() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleView:Landroid/view/View;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$500(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->anchorView:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$400(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$1200(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1$1;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isShowDone:Z
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$002(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Z)Z

    :cond_3
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;->this$1:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isShowDone:Z
    invoke-static {v0, v2}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$002(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Z)Z

    goto/16 :goto_0
.end method
