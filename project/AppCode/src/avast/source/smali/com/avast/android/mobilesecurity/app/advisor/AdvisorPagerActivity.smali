.class public Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "AdvisorPagerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    move-object v0, p0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    const-class v1, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerActivity;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Ljava/lang/Class;)V

    .line 30
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 31
    const-string v1, "paDone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-class v0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorScanService;

    const/4 v1, 0x0

    const v2, 0x7f0c01eb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/avast/android/mobilesecurity/scan/ScanActivity;->call(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorPagerActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 47
    return-void
.end method
