.class Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$3;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$3;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$1300(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager$3;->this$0:Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;

    #getter for: Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->pop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;->access$1300(Lcom/tencent/qqpimsecure/uilib/service/BubbleTipsManager;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

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
