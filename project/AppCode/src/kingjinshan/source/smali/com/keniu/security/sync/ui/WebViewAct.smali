.class public Lcom/keniu/security/sync/ui/WebViewAct;
.super Lcom/keniu/security/main/BaseTitleActivity;
.source "WebViewAct.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/keniu/security/main/BaseTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/ui/WebViewAct;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/ui/WebViewAct;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 20
    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/WebViewAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 24
    packed-switch v0, :pswitch_data_0

    move v0, v2

    .line 36
    :goto_0
    const v2, 0x7f030084

    invoke-super {p0, p1, v2, v0}, Lcom/keniu/security/main/BaseTitleActivity;->a(Landroid/os/Bundle;II)V

    .line 44
    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/WebViewAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->b:Landroid/widget/ProgressBar;

    .line 46
    const v0, 0x7f08023c

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/ui/WebViewAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->a:Landroid/webkit/WebView;

    .line 47
    iget-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 50
    iget-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/keniu/security/sync/ui/ar;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/ar;-><init>(Lcom/keniu/security/sync/ui/WebViewAct;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 66
    iget-object v0, p0, Lcom/keniu/security/sync/ui/WebViewAct;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/keniu/security/sync/ui/as;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/ui/as;-><init>(Lcom/keniu/security/sync/ui/WebViewAct;)V

    const-string v2, "sync"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    return-void

    .line 26
    :pswitch_0
    const v0, 0x7f0b0864

    .line 27
    const-string v1, "http://i.ijinshan.com/jump.php?act=modify&source=mosecurity"

    goto :goto_0

    .line 30
    :pswitch_1
    const v0, 0x7f0b0866

    .line 31
    const-string v1, "http://i.ijinshan.com/jump.php?act=forget_mobile&source=mosecurity&mobile="

    goto :goto_0

    .line 34
    :pswitch_2
    const v0, 0x7f0b0843

    .line 35
    const-string v1, "file:///android_asset/html/private_protect.html"

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
