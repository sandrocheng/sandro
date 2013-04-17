.class public final Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbzf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final browerCheck(LQQPIM/BrowserClient;LQQPIM/BrowserUrl;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/BrowserClient;",
            "LQQPIM/BrowserUrl;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/BrowserResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->a(LQQPIM/BrowserClient;LQQPIM/BrowserUrl;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final checkLicence(LQQPIM/LicenceInfo;LQQPIM/LicenceCheckResult;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/LicenceInfo;LQQPIM/LicenceCheckResult;)I

    move-result v0

    return v0
.end method

.method public final checkUrl(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/UrlCheckResponse;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final checkUrlEx(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/RspTemplate;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->b(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getADs(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ADInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->e(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final getAnalyseInfo(Ljava/util/List;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(Ljava/util/List;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final getBindPhoneList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stBindPhoneInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final getCategoryList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/SoftServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Category;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final getChangeUrl(LQQPIM/ChangeUrlReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/ChangeUrlReqInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ChangeUrlResInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/ChangeUrlReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getConfigV3(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfSrc;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/TipInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getConfigV3CPT(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ConfSrc;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/TipInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 3

    new-instance v0, Lbtl;

    const-string v1, "wup"

    invoke-direct {v0, v1}, Lbtl;-><init>(Ljava/lang/String;)V

    const-string v1, "guid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGuidFromServer(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/DeviceInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/GUIDInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getHotWord(LQQPIM/HotWordReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/HotWordReqInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/HotWordResInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/HotWordReqInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getMark(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/PhoneInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/RespMark;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getMySoftList(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftKey;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/SoftServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/MySoftSimpleInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final getOperatorDataSyncInfo(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STQuery;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STQueryResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getOrderForReAct(LQQPIM/STOrderReAct;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STOrderReAct;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STReActBack;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/STOrderReAct;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getPKUserInfo(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/PhoneInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/PKUserInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->c(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getQueryInfoMulti(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STQuery;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STVecCodeResult;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->b(LQQPIM/STQuery;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getSoftList(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/SoftServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SoftSimpleInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->b(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final getTime(Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ServerInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->a(Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getTrafficCmd(LQQPIM/STCloudOrderReq;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STCloudOrderReq;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STVecCloudBak;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/STCloudOrderReq;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getTrafficTemplate(LQQPIM/STSmsInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/STSmsInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STTrafficTemplate;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STRetInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->a(LQQPIM/STSmsInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getUpdatesV2(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/ClientVersionInfo;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ServerCmdInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final getVirusInfos(LQQPIM/VirusClientInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/VirusClientInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/VirusServerInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/VirusInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->a(LQQPIM/VirusClientInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbzf;

    invoke-direct {v0}, Lbzf;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final reportAntiTheft(Ljava/lang/String;LQQPIM/stAntiTheftReport;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LQQPIM/stAntiTheftReport;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->a(Ljava/lang/String;LQQPIM/stAntiTheftReport;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final reportChannelInfo()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0}, Lbzf;->a()I

    move-result v0

    return v0
.end method

.method public final reportDownSoft(LQQPIM/DownInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->a(LQQPIM/DownInfo;)I

    move-result v0

    return v0
.end method

.method public final reportFBIllegaReason(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBIllegaSoft;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->c(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final reportLocalNet(LQQPIM/STVecNetLocal;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->a(LQQPIM/STVecNetLocal;)I

    move-result v0

    return v0
.end method

.method public final reportMobile(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBMobile;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->f(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final reportNotifyInfo(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/NotifyInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->e(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final reportOperatorDataSyncErrorMsg(LQQPIM/VECReportError;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/VECReportError;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/STReportBack;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/VECReportError;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final reportPKPosition(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/PhoneInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ResPKPosition;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->b(LQQPIM/PhoneInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final reportPKResult(LQQPIM/PKResultInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/PKResultInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/RespMark;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2}, Lbzf;->a(LQQPIM/PKResultInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final reportSms(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SmsReport;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final reportSoftAction(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftAction;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->d(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final reportSoftDesc(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBSoftDesc;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->d(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final reportSoftFeature(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/SoftFeature;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->c(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final reportSoftType(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "LQQPIM/SoftKey;",
            "LQQPIM/MalSoftType;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->a(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public final reportSoftUsageInfo(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SUI;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->h(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final reportTel(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/TelReport;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->b(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final reportTipsRes(LQQPIM/CmdInfoRes;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->a(LQQPIM/CmdInfoRes;)I

    move-result v0

    return v0
.end method

.method public final reportUnknowSoftInfo(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/UnknownSoftInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->b(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final reportUserComment(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CommentInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->a(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final reportVirusLibUpdate()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0}, Lbzf;->b()I

    move-result v0

    return v0
.end method

.method public final reportWBList(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FBWBList;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1}, Lbzf;->g(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final setUrgentInfo(Ljava/lang/String;LQQPIM/stUrgentInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LQQPIM/stUrgentInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->a:Lbzf;

    invoke-virtual {v0, p1, p2, p3}, Lbzf;->a(Ljava/lang/String;LQQPIM/stUrgentInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method
