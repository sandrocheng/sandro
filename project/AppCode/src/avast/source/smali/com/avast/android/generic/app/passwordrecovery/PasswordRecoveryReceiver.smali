.class public Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PasswordRecoveryReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PasswordRecoveryReceiver received intent with action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 48
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {p1}, Lcom/avast/android/generic/app/passwordrecovery/a;->d(Landroid/content/Context;)Z

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    :cond_2
    invoke-static {p1}, Lcom/avast/android/generic/app/passwordrecovery/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p1}, Lcom/avast/android/generic/app/passwordrecovery/a;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 60
    :cond_3
    const-string v0, "com.avast.android.generic.RECOVERY_TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    const-string v0, "auth_token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p1}, Lcom/avast/android/generic/app/passwordrecovery/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1}, Lcom/avast/android/generic/app/passwordrecovery/a;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 77
    :cond_4
    const-string v0, "com.avast.android.generic.RECOVERY_SMS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "auth_token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/avast/android/generic/app/passwordrecovery/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/avast/android/generic/app/passwordrecovery/PasswordRecoveryReceiver;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 92
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/avast/android/generic/app/passwordrecovery/a;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
