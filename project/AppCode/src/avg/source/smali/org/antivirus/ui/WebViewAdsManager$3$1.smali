.class Lorg/antivirus/ui/WebViewAdsManager$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/antivirus/ui/WebViewAdsManager$3;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/WebViewAdsManager$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/WebViewAdsManager$3$1;->b:Lorg/antivirus/ui/WebViewAdsManager$3;

    iput-object p2, p0, Lorg/antivirus/ui/WebViewAdsManager$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager$3$1;->b:Lorg/antivirus/ui/WebViewAdsManager$3;

    iget-object v0, v0, Lorg/antivirus/ui/WebViewAdsManager$3;->c:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-static {v0}, Lorg/antivirus/ui/WebViewAdsManager;->e(Lorg/antivirus/ui/WebViewAdsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/WebViewAdsManager$3$1;->b:Lorg/antivirus/ui/WebViewAdsManager$3;

    iget-object v0, v0, Lorg/antivirus/ui/WebViewAdsManager$3;->c:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-static {v0}, Lorg/antivirus/ui/WebViewAdsManager;->f(Lorg/antivirus/ui/WebViewAdsManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/WebViewAdsManager$3$1;->b:Lorg/antivirus/ui/WebViewAdsManager$3;

    iget-object v1, v1, Lorg/antivirus/ui/WebViewAdsManager$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/antivirus/ui/WebViewAdsManager$3$1;->a:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
