.class Lcom/avast/android/mobilesecurity/app/scanner/ag;
.super Ljava/lang/Object;
.source "ScannerScanTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/af;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/af;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ag;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ag;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->a(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-result-object v1

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ag;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->b(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-result-object v0

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ag;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->d(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-result-object v0

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ag;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/scanner/af;->c(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-result-object v2

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ag;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->e(Lcom/avast/android/mobilesecurity/app/scanner/af;)V

    .line 197
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ag;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->f(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/ag;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/scanner/af;->g(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-result-object v2

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->k:Ljava/lang/String;

    .line 199
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ag;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->h(Lcom/avast/android/mobilesecurity/app/scanner/af;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
