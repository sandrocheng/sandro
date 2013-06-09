.class Lorg/antivirus/ui/WebViewAdsManager$1;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lorg/antivirus/ui/WebViewAdsManager;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/WebViewAdsManager;Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->c:Lorg/antivirus/ui/WebViewAdsManager;

    iput-object p2, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->c:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-static {v0}, Lorg/antivirus/ui/WebViewAdsManager;->b(Lorg/antivirus/ui/WebViewAdsManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->c:Lorg/antivirus/ui/WebViewAdsManager;

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Lorg/antivirus/ui/WebViewAdsManager;->a(Lorg/antivirus/ui/WebViewAdsManager;Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->c:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-static {v0}, Lorg/antivirus/ui/WebViewAdsManager;->c(Lorg/antivirus/ui/WebViewAdsManager;)Z

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->c:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-static {v0}, Lorg/antivirus/ui/WebViewAdsManager;->d(Lorg/antivirus/ui/WebViewAdsManager;)Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->c:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-static {v0}, Lorg/antivirus/ui/WebViewAdsManager;->a(Lorg/antivirus/ui/WebViewAdsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager$1;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
