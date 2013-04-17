.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->startScaleShortAnimation()V
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
