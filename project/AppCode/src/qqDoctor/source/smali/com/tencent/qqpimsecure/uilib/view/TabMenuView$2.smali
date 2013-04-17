.class Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$2;->this$0:Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView;->dismiss()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
