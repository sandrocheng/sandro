.class Lcom/avast/android/mobilesecurity/app/webshield/e;
.super Ljava/lang/Object;
.source "SiteCorrectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->c(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b(Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    const-class v2, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string v1, "redirect_browser"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    const-string v1, "browser_type"

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->d(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Lcom/avast/android/mobilesecurity/app/webshield/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->e(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "tab_id"

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->e(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->c(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/e;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->finish()V

    .line 115
    return-void
.end method
