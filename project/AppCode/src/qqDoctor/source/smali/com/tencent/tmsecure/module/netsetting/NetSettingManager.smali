.class public Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final APN_TYPE_NET:I = 0x0

.field public static final APN_TYPE_NULL:I = -0x1

.field public static final APN_TYPE_WAP:I = 0x1


# instance fields
.field private a:Lbwg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public disableBluetooth()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v2, v1, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0
.end method

.method public enableBluetooth()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v2, v1, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    goto :goto_0
.end method

.method public getAPNType(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    const/4 v0, -0x1

    invoke-static {p1}, Lbwe;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lbwe;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getApnState()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/OperationSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    invoke-virtual {v0}, Lbwg;->c()Z

    move-result v0

    return v0
.end method

.method public getBluetoothState()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v1, v0, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    goto :goto_0
.end method

.method public getCurUsedApn()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/OperationSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    invoke-virtual {v0}, Lbwg;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurUsedApnType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/OperationSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    invoke-virtual {v0}, Lbwg;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-static {v1}, Lbwe;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lbwe;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMobileDataConnectivity()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Lbwg;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lbwg;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWifiRssi()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v1, v0, Lbwg;->e:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lbwg;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    goto :goto_0
.end method

.method public getWifiState()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v1, v0, Lbwg;->e:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lbwg;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v1, v0, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lbwg;->f:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isMobileDataConnectivityActive()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v1, v1, Lbwg;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWifiActive()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v0, v0, Lbwg;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v1, v0, Lbwg;->e:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Lbwg;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbwg;

    invoke-direct {v0}, Lbwg;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    invoke-virtual {v0, p1}, Lbwg;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public setMobileDataConnectivity(Z)Z
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    invoke-virtual {v0, p1}, Lbwg;->b(Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lbwg;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    iget-object v2, v1, Lbwg;->e:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lbwg;->e:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public switchTo(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/OperationSecurityException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->a:Lbwg;

    invoke-virtual {v4}, Lbwg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbwe;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    :goto_1
    if-eq v0, p1, :cond_3

    if-eq p1, v3, :cond_3

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v3, 0xe

    if-ge v0, v3, :cond_3

    if-nez p1, :cond_2

    const-string v0, "net"

    :goto_2
    invoke-virtual {v4, v0}, Lbwg;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwg$a;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "apn_id"

    iget-object v0, v0, Lbwg$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lbwg;->c:Landroid/content/ContentResolver;

    iget-object v3, v4, Lbwg;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lbwe;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_2
    const-string v0, "wap"

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_1
.end method
