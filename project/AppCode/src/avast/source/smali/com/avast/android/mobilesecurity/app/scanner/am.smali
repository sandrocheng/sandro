.class Lcom/avast/android/mobilesecurity/app/scanner/am;
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
    .line 215
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->f(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/scanner/h;->a()Lcom/avast/android/mobilesecurity/app/scanner/h;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->e(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/h;->b(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->g(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v1, Lcom/avast/android/mobilesecurity/app/locking/core/b;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/avast/android/mobilesecurity/app/locking/core/b;-><init>(Landroid/app/ActivityManager;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->g(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Lcom/avast/android/mobilesecurity/app/locking/core/App;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-virtual {v1, v0, v2}, Lcom/avast/android/mobilesecurity/app/locking/core/b;->a(Lcom/avast/android/mobilesecurity/app/locking/core/App;Landroid/content/Context;)V

    .line 228
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->finish()V

    .line 229
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->b(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/fileshield/e;->a()Lcom/avast/android/mobilesecurity/app/fileshield/e;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/e;->b(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->a()Lcom/avast/android/mobilesecurity/app/fileshield/v;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/am;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->c(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
