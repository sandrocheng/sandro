.class public Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "ManagerPagerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerActivity;->call(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method public static call(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v1, "mOrder"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    :cond_0
    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerActivity;->call(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public static call(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 64
    :cond_0
    instance-of v1, p0, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/avast/android/generic/ui/BaseMultiPaneActivity;

    if-eqz v1, :cond_2

    .line 65
    :cond_1
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/app/home/StartActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 80
    return-void
.end method
