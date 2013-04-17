.class Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

.field final synthetic val$parentKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->val$parentKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #setter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isShowDone:Z
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$002(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Z)Z

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleModelList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$100(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->bubbleModelList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$100(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;

    iget-object v2, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->parentKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->val$parentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #calls: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->getNextBubble(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;)Landroid/widget/PopupWindow;
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$200(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;)Landroid/widget/PopupWindow;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bubblePop BubbleTipsManager tempBubbleModel.bubbleTypeList "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->bubbleTypeList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;->currentIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    #calls: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->isBubbleTypeOut(B)Z
    invoke-static {v3, v1}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$300(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;B)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2$1;-><init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$2;Landroid/widget/PopupWindow;Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$BubbleModel;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
