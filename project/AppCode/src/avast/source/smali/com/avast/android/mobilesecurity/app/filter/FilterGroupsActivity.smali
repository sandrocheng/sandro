.class public Lcom/avast/android/mobilesecurity/app/filter/FilterGroupsActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "FilterGroupsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-static {}, Lcom/avast/android/mobilesecurity/j;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/net/Uri;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupsFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupsFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupsActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 34
    return-void
.end method
