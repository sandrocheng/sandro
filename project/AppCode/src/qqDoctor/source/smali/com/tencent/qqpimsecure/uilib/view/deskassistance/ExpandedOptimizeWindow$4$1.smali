.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4$1;
.super Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;


# instance fields
.field final synthetic this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinish()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->mStopRecu:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->access$1300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4$1;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$4;->proceAnimationFinish()V

    :cond_0
    return-void
.end method
