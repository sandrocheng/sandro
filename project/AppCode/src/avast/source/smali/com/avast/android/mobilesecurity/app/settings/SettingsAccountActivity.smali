.class public Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "SettingsAccountActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    const-class v0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountActivity;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Ljava/lang/Class;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountFragment;-><init>()V

    return-object v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsAccountActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 25
    return-void
.end method