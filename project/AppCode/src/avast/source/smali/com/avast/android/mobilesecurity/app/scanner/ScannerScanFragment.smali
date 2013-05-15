.class public Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanFragment;
.super Lcom/avast/android/mobilesecurity/scan/ScanFragment;
.source "ScannerScanFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    :cond_0
    const-string v1, "serviceClass"

    const-class v2, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanService;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 31
    const-string v1, "logUri"

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "/ms/scanner/scan"

    return-object v0
.end method
