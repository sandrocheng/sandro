.class public Lbsi;
.super Lbsh;


# instance fields
.field private a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lbsh;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lbsi;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    iput-object v0, p0, Lbsi;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final b()Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbsi;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbsi;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getCurUsedApnType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0
    :try_end_0
    .catch Lcom/tencent/tmsecure/exception/OperationSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :cond_0
    iget-object v0, p0, Lbsi;->a:Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->getMobileDataConnectivity()Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/OperationSecurityException;->printStackTrace()V

    goto :goto_1
.end method
