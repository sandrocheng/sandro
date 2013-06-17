.class Lcom/antivirus/ui/help/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/help/HelpTabletActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/help/HelpTabletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->k()V

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->m()V

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->c(Lcom/antivirus/ui/help/HelpTabletActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/antivirus/ui/help/HelpTabletActivity;->a(Lcom/antivirus/ui/help/HelpTabletActivity;Z)Z

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->d(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->a(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->e(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->f(Lcom/antivirus/ui/help/HelpTabletActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->e(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v1}, Lcom/antivirus/ui/help/HelpTabletActivity;->f(Lcom/antivirus/ui/help/HelpTabletActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->g(Lcom/antivirus/ui/help/HelpTabletActivity;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->a(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->b(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/antivirus/ui/help/HelpTabletActivity;->a(Lcom/antivirus/ui/help/HelpTabletActivity;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->k()V

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->b(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    iget-object v1, v1, Lcom/antivirus/ui/help/HelpTabletActivity;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/help/b;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/antivirus/ui/help/HelpTabletActivity;->b(Lcom/antivirus/ui/help/HelpTabletActivity;Z)Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
