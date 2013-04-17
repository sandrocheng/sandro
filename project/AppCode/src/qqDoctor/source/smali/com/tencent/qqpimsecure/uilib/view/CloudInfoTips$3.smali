.class Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$100(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->getCloseTime()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$300(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->getCloseTime()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    return-void
.end method
