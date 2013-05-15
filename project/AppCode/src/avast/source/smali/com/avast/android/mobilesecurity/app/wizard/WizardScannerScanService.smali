.class public Lcom/avast/android/mobilesecurity/app/wizard/WizardScannerScanService;
.super Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanService;
.source "WizardScannerScanService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanService;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)Lcom/avast/android/mobilesecurity/scan/l;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 20
    const-string v0, "update_vps_sequential"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    const-string v0, "update_vps_forced"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    new-instance v0, Lcom/avast/android/mobilesecurity/app/wizard/d;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/mobilesecurity/app/wizard/d;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V

    return-object v0
.end method
