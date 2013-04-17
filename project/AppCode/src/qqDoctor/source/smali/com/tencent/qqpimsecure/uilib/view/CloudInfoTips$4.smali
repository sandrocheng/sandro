.class Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$100(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$400(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$100(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->closeTipsView()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$200(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqr;->a(Landroid/content/Context;)Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->d()V

    return-void
.end method
