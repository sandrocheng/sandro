.class public Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkInfoReceiver.java"


# static fields
.field private static a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

.field private static b:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    sput-object v0, Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;->b:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    sget-object v0, Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    .line 37
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;->b:Landroid/telephony/TelephonyManager;

    .line 39
    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    sget-object v0, Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    if-eq v0, v2, :cond_0

    .line 43
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    sput-object v0, Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 60
    :cond_3
    :goto_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    :cond_4
    invoke-static {p1, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    const-string v0, "AvastMobileSecurity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started network info service on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v2, "AvastMobileSecurity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not start network info service on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 45
    :cond_5
    sget-object v0, Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    if-eq v0, v2, :cond_0

    .line 48
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    sput-object v0, Lcom/avast/android/mobilesecurity/receiver/NetworkInfoReceiver;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    goto :goto_1
.end method
