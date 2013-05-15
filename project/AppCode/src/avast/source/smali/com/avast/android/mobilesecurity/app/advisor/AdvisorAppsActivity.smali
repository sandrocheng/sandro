.class public Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "AdvisorAppsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {p1, p2}, Lcom/avast/android/mobilesecurity/e;->a(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 26
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;-><init>()V

    return-object v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 38
    return-void
.end method
