.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLowSmokeImg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHighSmokeImg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->setUp()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V

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
