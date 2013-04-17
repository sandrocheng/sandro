.class Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$6;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$6;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$6;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$6;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->isChangingLogo:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$1002(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Z)Z

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
