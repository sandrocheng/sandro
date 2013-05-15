.class Lcom/avast/android/mobilesecurity/app/webshield/h;
.super Ljava/lang/Object;
.source "WebshieldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    const-class v2, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    const-string v1, "redirect_browser"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    const-string v1, "browser_type"

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->b(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Lcom/avast/android/mobilesecurity/app/webshield/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    const-string v1, "tab_id"

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Ljava/lang/String;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/h;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldActivity;->finish()V

    .line 118
    return-void
.end method
