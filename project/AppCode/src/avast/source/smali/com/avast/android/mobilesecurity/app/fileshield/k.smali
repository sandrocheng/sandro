.class Lcom/avast/android/mobilesecurity/app/fileshield/k;
.super Landroid/os/Handler;
.source "FileShieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/fileshield/j;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/fileshield/j;Landroid/os/Looper;Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/k;->b:Lcom/avast/android/mobilesecurity/app/fileshield/j;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/fileshield/k;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/k;->b:Lcom/avast/android/mobilesecurity/app/fileshield/j;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/j;->a(Lcom/avast/android/mobilesecurity/app/fileshield/j;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1462
    return-void
.end method
