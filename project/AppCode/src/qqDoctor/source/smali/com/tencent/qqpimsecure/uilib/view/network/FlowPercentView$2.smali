.class Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;F)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->val$to:F

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->prePercent:F
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;)F

    move-result v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->val$to:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->prePercent:F
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    cmpl-float v1, v2, v5

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_2

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->val$to:F

    :goto_1
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->val$to:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    invoke-virtual {v3, v2, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->sendChangeOnSpeed(FFF)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->val$to:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sub-float/2addr v0, v4

    goto :goto_1

    :cond_1
    add-float/2addr v0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$2;->cancel()Z

    return-void
.end method
