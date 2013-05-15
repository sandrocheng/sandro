.class public Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "ScannerLogActivity.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/app/scanner/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected d()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogActivity;->b(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    return-object v0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogActivity;->e()Lcom/avast/android/generic/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/util/a;->b()V

    .line 28
    return-void
.end method
