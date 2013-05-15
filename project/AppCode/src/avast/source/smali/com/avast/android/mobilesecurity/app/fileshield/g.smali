.class Lcom/avast/android/mobilesecurity/app/fileshield/g;
.super Landroid/content/BroadcastReceiver;
.source "FileShieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/g;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 268
    const-string v0, "intent.action.sd_card_scan_started"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/g;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Z)Z

    .line 272
    :cond_0
    const-string v0, "intent.action.sd_card_scan_stopped"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/g;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Z)Z

    .line 276
    :cond_1
    return-void
.end method
