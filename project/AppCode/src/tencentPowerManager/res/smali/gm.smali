.class public final Lgm;
.super Landroid/os/Handler;


# instance fields
.field private final synthetic a:Lgp;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lgp;)V
    .locals 0

    iput-object p2, p0, Lgm;->a:Lgp;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    const-string v1, "http://qqwx.qq.com/cw.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v1, Lgn;

    iget-object v2, p0, Lgm;->a:Lgp;

    invoke-direct {v1, v2, v0}, Lgn;-><init>(Lgp;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lgo;

    iget-object v2, p0, Lgm;->a:Lgp;

    invoke-direct {v1, v2, v0}, Lgo;-><init>(Lgp;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
