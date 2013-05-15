.class Lcom/avast/android/mobilesecurity/scan/f;
.super Ljava/lang/Object;
.source "ScanFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/scan/f;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/f;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    check-cast p2, Lcom/avast/android/mobilesecurity/scan/i;

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/scan/i;->a()Lcom/avast/android/mobilesecurity/scan/ScanService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a(Lcom/avast/android/mobilesecurity/scan/ScanFragment;Lcom/avast/android/mobilesecurity/scan/ScanService;)Lcom/avast/android/mobilesecurity/scan/ScanService;

    .line 413
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/f;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->c(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Lcom/avast/android/mobilesecurity/scan/ScanService;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/f;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->a(Lcom/avast/android/mobilesecurity/scan/k;)V

    .line 414
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/f;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->c(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Lcom/avast/android/mobilesecurity/scan/ScanService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/f;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->c(Lcom/avast/android/mobilesecurity/scan/ScanFragment;)Lcom/avast/android/mobilesecurity/scan/ScanService;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/scan/f;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->b(Lcom/avast/android/mobilesecurity/scan/k;)V

    .line 419
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/scan/f;->a:Lcom/avast/android/mobilesecurity/scan/ScanFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanFragment;->a(Lcom/avast/android/mobilesecurity/scan/ScanFragment;Lcom/avast/android/mobilesecurity/scan/ScanService;)Lcom/avast/android/mobilesecurity/scan/ScanService;

    .line 421
    :cond_0
    return-void
.end method
