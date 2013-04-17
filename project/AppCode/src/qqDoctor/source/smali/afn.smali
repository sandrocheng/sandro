.class public final Lafn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)V
    .locals 0

    iput-object p1, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->a(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->c(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->d(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->e(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->b(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->f(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lafn;->a:Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;->g(Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity$a;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b08a7

    invoke-static {v1, v2}, Lha;->b(Landroid/content/Context;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
