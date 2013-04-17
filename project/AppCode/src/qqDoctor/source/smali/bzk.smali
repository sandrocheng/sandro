.class final Lbzk;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final synthetic a:Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;

.field private final synthetic b:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lbzk;->a:Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;

    iput-object p2, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://qqwx.qq.com/cw.html"

    sput-object v0, Lcom/tencent/tmsecure/utils/WifiUtil;->sRedirectLocation:Ljava/lang/String;

    iget-object v0, p0, Lbzk;->a:Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;->onWifiApproveCheckFinished(ZZ)V

    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, ".qq."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p2, Lcom/tencent/tmsecure/utils/WifiUtil;->sRedirectLocation:Ljava/lang/String;

    iget-object v0, p0, Lbzk;->a:Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;

    invoke-interface {v0, v2, v1}, Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;->onWifiApproveCheckFinished(ZZ)V

    :goto_0
    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lbzk;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return v2

    :cond_0
    iget-object v0, p0, Lbzk;->a:Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;

    invoke-interface {v0, v1, v1}, Lcom/tencent/tmsecure/utils/WifiUtil$IWifiApproveCheckCallBack;->onWifiApproveCheckFinished(ZZ)V

    goto :goto_0
.end method
