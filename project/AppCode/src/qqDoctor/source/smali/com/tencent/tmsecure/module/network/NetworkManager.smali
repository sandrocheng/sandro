.class public final Lcom/tencent/tmsecure/module/network/NetworkManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# static fields
.field public static final INTERVAL_CUSTOM:I = 0x3

.field public static final INTERVAL_FOR_BACKGROUND:I = 0x0

.field public static final INTERVAL_FOR_REALTIME:I = 0x2

.field public static final INTERVAL_FOR_UI:I = 0x1


# instance fields
.field private a:Lbwo;

.field private b:Lbwq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addDefaultMobileMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1, p2}, Lbwo;->a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public final addDefaultWifiMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1, p2}, Lbwo;->b(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public final addMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1, p2, p3}, Lbwo;->a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    move-result v0

    goto :goto_0
.end method

.method public final clearTrafficInfo([Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->b:Lbwq;

    if-nez v0, :cond_0

    new-instance v0, Lbwq;

    invoke-direct {v0}, Lbwq;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->b:Lbwq;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->b:Lbwq;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    goto :goto_0
.end method

.method public final getInterval()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0}, Lbwo;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getIntervalType()I
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0}, Lbwo;->b()I

    move-result v0

    goto :goto_0
.end method

.method public final getMobileRxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->d(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getMobileTxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->e(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getSelfMobileDownloadBytes()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-static {}, Lbwo;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getSelfMobileUploadBytes()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-static {}, Lbwo;->h()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getTrafficEntity(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/network/TrafficEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->c(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public final getWIFIRxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->f(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getWIFITxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->g(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final isEnable()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0}, Lbwo;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public final isSupportTrafficState()Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0}, Lbwo;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final notifyConfigChange()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0}, Lbwo;->e()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbwo;

    invoke-direct {v0}, Lbwo;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final refreshTrafficInfo([Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1, p2}, Lbwo;->a([Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final removeMonitor(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->a(Z)V

    goto :goto_0
.end method

.method public final setInterval(J)V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    long-to-int v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lbwo;->a(J)V

    goto :goto_0
.end method

.method public final setIntervalType(I)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-virtual {v0, p1}, Lbwo;->a(I)V

    goto :goto_0
.end method

.method public final updateSelfMobileDownloadBytes(J)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-static {p1, p2}, Lbwo;->b(J)V

    goto :goto_0
.end method

.method public final updateSelfMobileUploadBytes(J)V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/network/NetworkManager;->a:Lbwo;

    invoke-static {p1, p2}, Lbwo;->c(J)V

    goto :goto_0
.end method
