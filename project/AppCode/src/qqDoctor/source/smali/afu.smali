.class public final Lafu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;)V
    .locals 0

    iput-object p1, p0, Lafu;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080072

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lafu;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafu;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080073

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lafu;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lafu;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080070

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lafu;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafu;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method
