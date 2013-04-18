.class final Lcom/keniu/security/traffic/cc;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/keniu/security/traffic/cc;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 736
    iget-object v0, p0, Lcom/keniu/security/traffic/cc;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->e(Lcom/keniu/security/traffic/TrafficSettingActivity;)Lcom/keniu/security/util/CustomCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/CustomCheckBoxPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/keniu/security/traffic/cc;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->f(Lcom/keniu/security/traffic/TrafficSettingActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/keniu/security/traffic/cc;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->f(Lcom/keniu/security/traffic/TrafficSettingActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 749
    :cond_0
    :goto_0
    return v2

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/cc;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->f(Lcom/keniu/security/traffic/TrafficSettingActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/keniu/security/traffic/cc;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->f(Lcom/keniu/security/traffic/TrafficSettingActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method
