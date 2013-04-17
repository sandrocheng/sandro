.class Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const/4 v1, 0x0

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mDoingAnim:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->access$002(Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const/4 v1, 0x1

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->mDoingAnim:Z
    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->access$002(Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Z)Z

    return-void
.end method
