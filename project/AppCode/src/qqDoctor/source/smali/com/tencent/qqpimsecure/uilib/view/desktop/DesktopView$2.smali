.class Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/16 v3, 0x63

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$010(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimCount:I
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mPositionListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mPositionListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;->positionChange(II)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)I

    move-result v1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTouchMode:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I
    invoke-static {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$202(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;I)I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I
    invoke-static {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$302(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;I)I

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimPlaying:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->access$502(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;Z)Z

    :cond_2
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
