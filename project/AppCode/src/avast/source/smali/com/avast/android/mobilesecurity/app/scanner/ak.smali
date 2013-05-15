.class Lcom/avast/android/mobilesecurity/app/scanner/ak;
.super Ljava/lang/Object;
.source "VirusShieldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 170
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 173
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->b(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/f;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-direct {v1, v2}, Lcom/avast/android/mobilesecurity/app/scanner/f;-><init>(Landroid/content/Context;)V

    .line 175
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->a()Lcom/avast/android/mobilesecurity/app/fileshield/v;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->c(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ar()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->as()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->at()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->au()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->d(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)V

    .line 192
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->finish()V

    .line 193
    return-void

    .line 183
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->e(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 185
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-virtual {v2, v1}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ar()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->as()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->at()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->au()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ak;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->d(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)V

    goto :goto_0
.end method
