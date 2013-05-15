.class public Lcom/avast/android/mobilesecurity/app/wizard/d;
.super Lcom/avast/android/mobilesecurity/app/scanner/af;
.source "WizardScannerScanTask.java"


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/scanner/af;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected b()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/wizard/d;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const-class v2, Lcom/avast/android/mobilesecurity/app/wizard/ScanWizardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
