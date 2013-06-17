.class Lcom/avg/toolkit/ads/a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/avg/toolkit/ads/WebViewAdsManager;


# direct methods
.method constructor <init>(Lcom/avg/toolkit/ads/WebViewAdsManager;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/toolkit/ads/a;->b:Lcom/avg/toolkit/ads/WebViewAdsManager;

    iput-object p2, p0, Lcom/avg/toolkit/ads/a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/toolkit/ads/a;->b:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-static {v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->d(Lcom/avg/toolkit/ads/WebViewAdsManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/ads/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    iget-object v0, p0, Lcom/avg/toolkit/ads/a;->b:Lcom/avg/toolkit/ads/WebViewAdsManager;

    iget-object v1, p0, Lcom/avg/toolkit/ads/a;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/a;->b:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;Z)Z

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/avg/toolkit/ads/a;->b:Lcom/avg/toolkit/ads/WebViewAdsManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avg/toolkit/ads/WebViewAdsManager;->b(Lcom/avg/toolkit/ads/WebViewAdsManager;Z)Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/avg/toolkit/ads/a;->b:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-static {v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->c(Lcom/avg/toolkit/ads/WebViewAdsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/avg/toolkit/ads/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
