.class public Lcom/avast/android/mobilesecurity/app/settings/SettingsActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/ui/widget/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    const-class v0, Lcom/avast/android/mobilesecurity/app/settings/SettingsActivity;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Ljava/lang/Class;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "singleFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/avast/android/mobilesecurity/ui/widget/y;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/y;

    invoke-interface {v0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/y;->a(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V

    .line 35
    :cond_0
    return-void
.end method

.method public b(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "singleFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/avast/android/mobilesecurity/ui/widget/y;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/y;

    invoke-interface {v0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/y;->b(Lcom/avast/android/mobilesecurity/ui/widget/YesNoDialogFragment;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;-><init>()V

    return-object v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 27
    return-void
.end method
