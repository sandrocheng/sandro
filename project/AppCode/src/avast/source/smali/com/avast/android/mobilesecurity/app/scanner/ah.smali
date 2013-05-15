.class Lcom/avast/android/mobilesecurity/app/scanner/ah;
.super Landroid/content/BroadcastReceiver;
.source "ScannerScanTask.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/af;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/af;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ah;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ah;->a:Lcom/avast/android/mobilesecurity/app/scanner/af;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->f()V

    .line 683
    return-void
.end method
