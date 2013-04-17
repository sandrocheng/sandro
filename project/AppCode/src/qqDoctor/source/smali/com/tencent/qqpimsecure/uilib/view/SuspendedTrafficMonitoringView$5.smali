.class Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$newDrawableResId:I


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;->val$imageView:Landroid/widget/ImageView;

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;->val$newDrawableResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;->val$imageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;->val$newDrawableResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;->this$0:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;->val$imageView:Landroid/widget/ImageView;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->startInAnimation(Landroid/widget/ImageView;)V
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->access$2000(Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView$5;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
