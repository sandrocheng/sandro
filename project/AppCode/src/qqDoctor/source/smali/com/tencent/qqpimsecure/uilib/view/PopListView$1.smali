.class Lcom/tencent/qqpimsecure/uilib/view/PopListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/PopListView;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/PopListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/PopListView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PopListView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/PopListView;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/PopListView;->mPopWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/PopListView;->access$000(Lcom/tencent/qqpimsecure/uilib/view/PopListView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
