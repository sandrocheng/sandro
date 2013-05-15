.class public Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "UninstallCheckActivity.java"


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    .line 20
    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 25
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.avast.android.antitheft"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 27
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/Application;->b(Ljava/lang/String;)V

    .line 28
    const-string v1, "/system/app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/Application;->d(Z)V

    .line 38
    :cond_1
    :goto_0
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/q;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    .line 40
    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    :goto_1
    return-void

    .line 30
    :cond_2
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.avast.android.at_play"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/Application;->b(Ljava/lang/String;)V

    .line 33
    invoke-static {v4}, Lcom/avast/android/mobilesecurity/Application;->d(Z)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;->a(Landroid/content/Context;)V

    goto :goto_1
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckActivity;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;

    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckActivity;->a:Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 56
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->a()V

    .line 65
    return-void
.end method
