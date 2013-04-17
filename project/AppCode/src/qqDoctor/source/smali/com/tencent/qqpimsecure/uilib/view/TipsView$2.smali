.class Lcom/tencent/qqpimsecure/uilib/view/TipsView$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/TipsView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TipsView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TipsView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTipsModelList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TipsView;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->getCloseTime()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    return-void
.end method
