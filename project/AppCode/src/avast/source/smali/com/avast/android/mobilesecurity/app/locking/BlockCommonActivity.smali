.class public abstract Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;
.super Lcom/avast/android/generic/ui/BaseActivity;
.source "BlockCommonActivity.java"


# instance fields
.field protected a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

.field protected b:Landroid/os/Handler;

.field protected c:Lcom/avast/android/mobilesecurity/app/locking/core/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseActivity;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method protected d()V
    .locals 8

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/locking/core/h;->b(Lcom/avast/android/mobilesecurity/app/locking/core/App;)V

    .line 83
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iget-boolean v0, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->l:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->c:Lcom/avast/android/mobilesecurity/app/locking/core/b;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    invoke-virtual {v0, v1, p0}, Lcom/avast/android/mobilesecurity/app/locking/core/b;->a(Lcom/avast/android/mobilesecurity/app/locking/core/App;Landroid/content/Context;)V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 91
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->o:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    const/4 v2, 0x0

    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->finish()V

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v0, "BlockCommonActivity"

    const-string v1, "Can\'t find app name."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->c()V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a(Z)V

    .line 45
    new-instance v1, Lcom/avast/android/mobilesecurity/app/locking/core/b;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->b:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/avast/android/mobilesecurity/app/locking/core/b;-><init>(Landroid/app/ActivityManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->c:Lcom/avast/android/mobilesecurity/app/locking/core/b;

    .line 47
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    .line 48
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a()V

    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iget-boolean v0, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->l:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->c:Lcom/avast/android/mobilesecurity/app/locking/core/b;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/b;->a(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;

    .line 60
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iget-boolean v0, v0, Lcom/avast/android/mobilesecurity/app/locking/core/App;->l:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->c:Lcom/avast/android/mobilesecurity/app/locking/core/b;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->a:Lcom/avast/android/mobilesecurity/app/locking/core/App;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/locking/core/App;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/locking/core/b;->a(Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method
