.class Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$100(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$100(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->closeTipsView()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$200(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    :cond_0
    return-void
.end method
