.class public final Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$a;,
        Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    const v0, 0x7f0300eb

    invoke-direct {p0, p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f080306

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    const v0, 0x7f080307

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->c:Landroid/widget/ImageView;

    const v0, 0x7f080308

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->d:Landroid/widget/ImageView;

    const v0, 0x7f080309

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->e:Landroid/widget/ImageView;

    const v0, 0x7f08030a

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->f:Landroid/widget/ImageView;

    const v0, 0x7f080305

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->g:Landroid/widget/ProgressBar;

    new-instance v0, Lafn;

    invoke-direct {v0, p0}, Lafn;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    new-instance v2, Lafo;

    invoke-direct {v2, p0}, Lafo;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-static {}, Lde;->e()Lde$a;

    move-result-object v0

    sget-object v1, Lde$a;->a:Lde$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;

    invoke-direct {v1, p0, v4}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$a;

    invoke-direct {v1, p0, v4}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    goto :goto_0
.end method
