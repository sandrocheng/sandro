.class public Lcom/tencent/feedback/common/CommonInfo;
.super Ljava/lang/Object;
.source "CommonInfo.java"


# static fields
.field private static mComInfo:Lcom/tencent/feedback/common/CommonInfo;


# instance fields
.field private APPId:Ljava/lang/String;

.field private UUId:Ljava/lang/String;

.field private gateIP:Ljava/lang/String;

.field private hardware_os:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private platformId:B

.field private productId:Ljava/lang/String;

.field private productVersion:Ljava/lang/String;

.field private sdkId:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private serverTimeGap:J

.field private userid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->hardware_os:Ljava/lang/String;

    .line 10
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/tencent/feedback/common/CommonInfo;->platformId:B

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->productId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->productVersion:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->sdkId:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->sdkVersion:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->userid:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->gateIP:Ljava/lang/String;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/feedback/common/CommonInfo;->serverTimeGap:J

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->UUId:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->APPId:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->imei:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static declared-synchronized createCommonInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    const-class v1, Lcom/tencent/feedback/common/CommonInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "CommonInfo.createCommonInfo() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 166
    if-eqz p0, :cond_1

    .line 169
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/tencent/feedback/common/CommonInfo;

    invoke-direct {v0}, Lcom/tencent/feedback/common/CommonInfo;-><init>()V

    sput-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    .line 172
    :cond_0
    sget-object v2, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    invoke-static {}, Lcom/tencent/feedback/common/DeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setHardware_os(Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setPlatformId(B)V

    .line 179
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    invoke-static {p0}, Lcom/tencent/feedback/common/AppInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setProductId(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    invoke-static {p0}, Lcom/tencent/feedback/common/AppInfo;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setProductVersion(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    const-string v3, "com.tencent.feedback"

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setSdkId(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    const-string v3, "rqd_1.3.9_mergeBugFixed"

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setSdkVersion(Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/feedback/common/CommonInfo;->setUserid(Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    invoke-virtual {v0, p2}, Lcom/tencent/feedback/common/CommonInfo;->setGateIP(Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    invoke-static {p0}, Lcom/tencent/feedback/common/AppInfo;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setUUId(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;

    invoke-static {p0}, Lcom/tencent/feedback/common/DeviceInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setImei(Ljava/lang/String;)V

    .line 200
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_1
    :try_start_2
    const-string v0, "CommonInfo.createCommonInfo() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    monitor-exit v1

    return-void

    .line 200
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;
    .locals 2

    .prologue
    .line 209
    const-class v0, Lcom/tencent/feedback/common/CommonInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setCommonInfoInstance(Lcom/tencent/feedback/common/CommonInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    const-class v0, Lcom/tencent/feedback/common/CommonInfo;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/common/CommonInfo;->mComInfo:Lcom/tencent/feedback/common/CommonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit v0

    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getAPPId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->APPId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGateIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->gateIP:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHardware_os()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->hardware_os:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->imei:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPlatformId()B
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/tencent/feedback/common/CommonInfo;->platformId:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->productId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->productVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSdkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->sdkId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->sdkVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getServerTimeGap()J
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/feedback/common/CommonInfo;->serverTimeGap:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUUId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->UUId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->userid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAPPId(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->APPId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGateIP(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->gateIP:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardware_os(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->hardware_os:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setImei(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->imei:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPlatformId(B)V
    .locals 1
    .parameter

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iput-byte p1, p0, Lcom/tencent/feedback/common/CommonInfo;->platformId:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProductId(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->productId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProductVersion(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->productVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSdkId(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->sdkId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSdkVersion(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->sdkVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setServerTimeGap(J)V
    .locals 1
    .parameter

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/feedback/common/CommonInfo;->serverTimeGap:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUUId(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->UUId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserid(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    if-nez p1, :cond_0

    .line 97
    :try_start_0
    const-string p1, "1000"

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->userid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
