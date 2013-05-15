.class public Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanActivity;
.super Lcom/avast/android/mobilesecurity/scan/ScanActivity;
.source "ScannerScanActivity.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/scan/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/scan/ScanActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 31
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanActivity;->finish()V

    .line 57
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanActivity;->finish()V

    .line 62
    return-void
.end method

.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanFragment;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/avast/android/mobilesecurity/scan/ScanActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    const-string v1, "eulaDone"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/home/StartActivity;->call(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanActivity;->finish()V

    .line 41
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/avast/android/mobilesecurity/scan/ScanActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 52
    return-void
.end method
