.class public final Lafp;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)V
    .locals 0

    iput-object p1, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Z

    iget-object v0, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {}, Ldi;->c()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    sget-object v1, Ldi;->d:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    iget-object v0, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    iget-object v1, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->b(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    sget-object v0, Ldi;->d:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    if-eqz v0, :cond_1

    sget-object v0, Ldi;->d:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v2, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->b:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->c:Landroid/webkit/WebView;

    :goto_1
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->d(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->c(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->d(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->d(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lafp;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;->d(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lafq;

    invoke-direct {v1, p0}, Lafq;-><init>(Lafp;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
