.class public final Lafv;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;)V
    .locals 0

    iput-object p1, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b059d

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0045

    new-instance v2, Lafw;

    invoke-direct {v2, p4, v0}, Lafw;-><init>(Landroid/webkit/JsResult;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_0
    return v3
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b059e

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0045

    new-instance v2, Lafx;

    invoke-direct {v2, p4, v0}, Lafx;-><init>(Landroid/webkit/JsResult;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lafy;

    invoke-direct {v2, p4, v0}, Lafy;-><init>(Landroid/webkit/JsResult;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_0
    return v4
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v2, v2, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b059f

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b0045

    new-instance v2, Lafz;

    invoke-direct {v2, p5, v0}, Lafz;-><init>(Landroid/webkit/JsPromptResult;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Laga;

    invoke-direct {v2, p5, v0}, Laga;-><init>(Landroid/webkit/JsPromptResult;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_0
    return v4
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    iget-object v0, p0, Lafv;->a:Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog$b;->i:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    return-void
.end method
