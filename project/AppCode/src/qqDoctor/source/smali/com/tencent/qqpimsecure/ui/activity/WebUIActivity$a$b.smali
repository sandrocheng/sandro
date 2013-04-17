.class final Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;-><init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :try_start_0
    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a$b;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
