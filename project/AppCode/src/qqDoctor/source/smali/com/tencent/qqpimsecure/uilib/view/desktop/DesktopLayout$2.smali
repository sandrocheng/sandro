.class Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$600(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->onPositionChanged()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$700(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$800(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setLastSelectedView(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$902(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
