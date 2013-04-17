.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->mTaskGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;Landroid/widget/AdapterView;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->mScaleAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66fb

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;)V

    return-void
.end method
