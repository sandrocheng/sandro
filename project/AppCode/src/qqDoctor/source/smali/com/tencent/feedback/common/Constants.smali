.class public Lcom/tencent/feedback/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field protected static AllFunctionPowerOff:Z = false

.field protected static DevicesToPowerOff:[Ljava/lang/String; = null

.field public static final EupLogSdcardSize:J = 0x1388L

.field public static IS_CORE_DEBUG:Z = false

.field public static IS_DEBUG:Z = false

.field public static IS_HUIDUTEST:Z = false

.field public static IS_USETESTSERVER:Z = false

.field public static IS_ZHUANTEST:Z = false

.field public static Is_AutoCheckOpen:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "eup"

.field protected static SDKLevelToPowerOff:[I = null

.field public static final Test_TAG:Ljava/lang/String; = "test"

.field public static isStoreEupLogSdcard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    .line 9
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_CORE_DEBUG:Z

    .line 10
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_USETESTSERVER:Z

    .line 11
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_ZHUANTEST:Z

    .line 12
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_HUIDUTEST:Z

    .line 16
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->Is_AutoCheckOpen:Z

    .line 20
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->isStoreEupLogSdcard:Z

    .line 23
    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->AllFunctionPowerOff:Z

    .line 24
    sput-object v1, Lcom/tencent/feedback/common/Constants;->DevicesToPowerOff:[Ljava/lang/String;

    .line 25
    sput-object v1, Lcom/tencent/feedback/common/Constants;->SDKLevelToPowerOff:[I

    .line 30
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->checkBackList()V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBackList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 70
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->AllFunctionPowerOff:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/feedback/common/Constants;->SDKLevelToPowerOff:[I

    if-eqz v0, :cond_2

    .line 74
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v0, v1

    .line 76
    :goto_0
    sget-object v3, Lcom/tencent/feedback/common/Constants;->SDKLevelToPowerOff:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 78
    sget-object v3, Lcom/tencent/feedback/common/Constants;->SDKLevelToPowerOff:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_1

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->AllFunctionPowerOff:Z

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk in backList "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    const-string v2, "error in check sdk in black list"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    :cond_2
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->AllFunctionPowerOff:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/feedback/common/Constants;->DevicesToPowerOff:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    :try_start_1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move v0, v1

    .line 101
    :goto_2
    sget-object v1, Lcom/tencent/feedback/common/Constants;->DevicesToPowerOff:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 103
    sget-object v1, Lcom/tencent/feedback/common/Constants;->DevicesToPowerOff:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/feedback/common/Constants;->AllFunctionPowerOff:Z

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device name in backList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 112
    :catch_1
    move-exception v0

    .line 114
    const-string v1, "error in check device in black list"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 101
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static declared-synchronized getDevicesToPowerOff()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/tencent/feedback/common/Constants;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/common/Constants;->DevicesToPowerOff:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSDKLevelToPowerOff()[I
    .locals 2

    .prologue
    .line 58
    const-class v0, Lcom/tencent/feedback/common/Constants;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/common/Constants;->SDKLevelToPowerOff:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isAllFunctionPowerOff()Z
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/tencent/feedback/common/Constants;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/feedback/common/Constants;->AllFunctionPowerOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setAllFunctionPowerOff(Z)V
    .locals 2
    .parameter

    .prologue
    .line 42
    const-class v1, Lcom/tencent/feedback/common/Constants;

    monitor-enter v1

    :try_start_0
    const-string v0, "setAllFunctionPowerOff"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 43
    sput-boolean p0, Lcom/tencent/feedback/common/Constants;->AllFunctionPowerOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v1

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setDevicesToPowerOff([Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    const-class v0, Lcom/tencent/feedback/common/Constants;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/common/Constants;->DevicesToPowerOff:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSDKLevelToPowerOff([I)V
    .locals 2
    .parameter

    .prologue
    .line 63
    const-class v0, Lcom/tencent/feedback/common/Constants;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/common/Constants;->SDKLevelToPowerOff:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
