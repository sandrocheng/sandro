.class Lcom/avast/android/mobilesecurity/app/campaign/d;
.super Landroid/os/AsyncTask;
.source "CampaignEventHandler.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/campaign/b;

.field private b:Lcom/google/analytics/tracking/android/bo;


# direct methods
.method private constructor <init>(Lcom/avast/android/mobilesecurity/app/campaign/b;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/app/campaign/b;Lcom/avast/android/mobilesecurity/app/campaign/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/d;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/b;)V

    return-void
.end method

.method private a(Landroid/net/wifi/WifiInfo;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x1

    const/4 v5, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/d;->b(Landroid/net/wifi/WifiInfo;)Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Lcom/avast/android/mobilesecurity/engine/a;

    move-result-object v1

    .line 60
    iget-boolean v2, v1, Lcom/avast/android/mobilesecurity/engine/a;->a:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/avast/android/mobilesecurity/engine/a;->b:Z

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Lcom/avast/android/mobilesecurity/engine/a;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/b;Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "CampaignEventHandler: showing SecureLine campaign popup"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->a(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->b:Lcom/google/analytics/tracking/android/bo;

    const-string v1, "ms-Campaigns"

    const-string v2, "SecureLine"

    const-string v3, "popup"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    :goto_0
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/d;->c(Landroid/net/wifi/WifiInfo;)Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Lcom/avast/android/mobilesecurity/engine/a;

    move-result-object v1

    .line 71
    iget-boolean v2, v1, Lcom/avast/android/mobilesecurity/engine/a;->a:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/avast/android/mobilesecurity/engine/a;->b:Z

    if-eqz v2, :cond_1

    iget-boolean v1, v1, Lcom/avast/android/mobilesecurity/engine/a;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/b;Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "CampaignEventHandler: showing SecureLine campaign notification"

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->a(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->b:Lcom/google/analytics/tracking/android/bo;

    const-string v1, "ms-Campaigns"

    const-string v2, "SecureLine"

    const-string v3, "notification"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    :goto_1
    return-void

    .line 66
    :cond_0
    const-string v0, "CampaignEventHandler: SecureLine popup campaign blocked for this wifi/device."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_1
    const-string v0, "CampaignEventHandler: SecureLine notification campaign blocked for this wifi/device."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private b(Landroid/net/wifi/WifiInfo;)Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;
    .locals 3
    .parameter

    .prologue
    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    const-string v1, "ssid"

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/campaign/e;->a:Lcom/avast/android/mobilesecurity/app/campaign/e;

    invoke-direct {v1, v2, v0}, Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLinePopup;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/e;Landroid/os/Bundle;)V

    .line 86
    return-object v1
.end method

.method private c(Landroid/net/wifi/WifiInfo;)Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;
    .locals 3
    .parameter

    .prologue
    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string v1, "ssid"

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLineNotification;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/campaign/e;->a:Lcom/avast/android/mobilesecurity/app/campaign/e;

    invoke-direct {v1, v2, v0}, Lcom/avast/android/mobilesecurity/app/campaign/types/SecureLineNotification;-><init>(Lcom/avast/android/mobilesecurity/app/campaign/e;Landroid/os/Bundle;)V

    .line 94
    return-object v1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter

    .prologue
    .line 40
    const-string v0, "CampaignEventHandler: handling connectivity changed"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 43
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->a:Lcom/avast/android/mobilesecurity/app/campaign/b;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/campaign/b;->a(Lcom/avast/android/mobilesecurity/app/campaign/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/u;->c(Landroid/content/Context;)Z

    move-result v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CampaignEventHandler: wifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", unsecured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 47
    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->b:Lcom/google/analytics/tracking/android/bo;

    .line 49
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/campaign/d;->b:Lcom/google/analytics/tracking/android/bo;

    const-string v2, "ms-Campaigns"

    const-string v3, "unsecured wifi"

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 50
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/campaign/d;->a(Landroid/net/wifi/WifiInfo;)V

    .line 53
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/campaign/d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
