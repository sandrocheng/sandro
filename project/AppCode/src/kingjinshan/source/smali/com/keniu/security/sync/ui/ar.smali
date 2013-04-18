.class final Lcom/keniu/security/sync/ui/ar;
.super Landroid/webkit/WebViewClient;
.source "WebViewAct.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/WebViewAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/WebViewAct;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ar;->a:Lcom/keniu/security/sync/ui/WebViewAct;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ar;->a:Lcom/keniu/security/sync/ui/WebViewAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/WebViewAct;->a(Lcom/keniu/security/sync/ui/WebViewAct;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ar;->a:Lcom/keniu/security/sync/ui/WebViewAct;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/WebViewAct;->b(Lcom/keniu/security/sync/ui/WebViewAct;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 62
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x1

    return v0
.end method
