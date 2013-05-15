.class public Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;
.super Lcom/avast/android/generic/ui/CheckerFragment;
.source "UninstallCheckFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avast/android/generic/ui/CheckerFragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 44
    invoke-static {}, Lcom/avast/android/mobilesecurity/Application;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-static {p0}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    const-string v2, "android.intent.action.DELETE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.packageinstaller"

    const-string v4, "com.android.packageinstaller.UninstallerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodActivity;->call(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 20
    invoke-static {}, Lcom/avast/android/mobilesecurity/Application;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 23
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 29
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 30
    const-string v2, "android.intent.action.DELETE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.packageinstaller"

    const-string v4, "com.android.packageinstaller.UninstallerActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 39
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/RootMethodActivity;->call(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public b()Lcom/avast/android/generic/ui/b/a;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/q;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/UninstallCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avast/android/mobilesecurity/app/home/antitheft/uninstaller/q;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f0c01cf

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0c03de

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f0c03e0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "/ms/uninstallIssues"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "ms-atUninstall"

    return-object v0
.end method
