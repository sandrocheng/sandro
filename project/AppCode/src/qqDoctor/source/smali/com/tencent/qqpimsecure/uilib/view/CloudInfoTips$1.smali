.class Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->access$000(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
