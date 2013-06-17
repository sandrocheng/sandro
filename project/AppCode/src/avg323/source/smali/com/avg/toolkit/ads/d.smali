.class Lcom/avg/toolkit/ads/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avg/toolkit/ads/c;


# direct methods
.method constructor <init>(Lcom/avg/toolkit/ads/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/toolkit/ads/d;->b:Lcom/avg/toolkit/ads/c;

    iput-object p2, p0, Lcom/avg/toolkit/ads/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/avg/toolkit/ads/d;->b:Lcom/avg/toolkit/ads/c;

    iget-boolean v0, v0, Lcom/avg/toolkit/ads/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/ads/d;->b:Lcom/avg/toolkit/ads/c;

    iget-object v0, v0, Lcom/avg/toolkit/ads/c;->b:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-static {v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Lcom/avg/toolkit/ads/WebViewAdsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/ads/d;->b:Lcom/avg/toolkit/ads/c;

    iget-object v0, v0, Lcom/avg/toolkit/ads/c;->b:Lcom/avg/toolkit/ads/WebViewAdsManager;

    invoke-static {v0}, Lcom/avg/toolkit/ads/WebViewAdsManager;->b(Lcom/avg/toolkit/ads/WebViewAdsManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/toolkit/ads/d;->b:Lcom/avg/toolkit/ads/c;

    invoke-static {v1}, Lcom/avg/toolkit/ads/c;->a(Lcom/avg/toolkit/ads/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avg/toolkit/ads/d;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
