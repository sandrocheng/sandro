.class Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqr;->a(Landroid/content/Context;)Lqr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lqr;->b(Ljava/lang/String;)LQQPIM/CloudInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    iget-object v5, v5, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    const-class v6, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "key_cloud_info"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "key_tips_warning"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    iget-object v3, v3, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {v2, v1}, Lqr;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$100(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$400(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$100(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->closeTipsView()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$200(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    :cond_1
    return-void
.end method
