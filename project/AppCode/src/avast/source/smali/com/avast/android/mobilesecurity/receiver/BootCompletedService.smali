.class public Lcom/avast/android/mobilesecurity/receiver/BootCompletedService;
.super Landroid/app/IntentService;
.source "BootCompletedService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "BootCompletedService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 32
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 34
    const-string v1, "launching background services"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 35
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/receiver/BootCompletedService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/receiver/BootCompletedService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/avast/android/mobilesecurity/app/locking/core/AppLockingService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/receiver/BootCompletedService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    :cond_0
    const-string v1, "setting up alerts"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 46
    const-string v1, "roamingWasActive"

    invoke-virtual {v0, v1, v3}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 49
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/receiver/ServiceStateReceiver;->a(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aQ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aR()I

    move-result v1

    .line 53
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aS()I

    move-result v2

    .line 54
    invoke-static {p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/scanner/AlarmReceiver;->a(Landroid/content/Context;II)V

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aC()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->d(Landroid/content/Context;)V

    .line 62
    :cond_2
    new-instance v1, Lcom/avast/android/mobilesecurity/receiver/b;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/receiver/b;-><init>(Lcom/avast/android/mobilesecurity/receiver/BootCompletedService;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 70
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportService;->a(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.mobilesecurity.app.firewall.core.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/FirewallHandlingService;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    :cond_3
    return-void
.end method
