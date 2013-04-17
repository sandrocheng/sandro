.class public Lcom/tencent/feedback/common/CommonInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static k:Lcom/tencent/feedback/common/CommonInfo;


# instance fields
.field private a:Ljava/lang/String;

.field private b:B

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->a:Ljava/lang/String;

    .line 9
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/tencent/feedback/common/CommonInfo;->b:B

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->c:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->d:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->e:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->f:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->g:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->h:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/feedback/common/CommonInfo;->i:J

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->j:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static declared-synchronized createCommonInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    const-class v1, Lcom/tencent/feedback/common/CommonInfo;

    monitor-enter v1

    :try_start_0
    const-string v0, "CommonInfo.createCommonInfo() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 112
    if-eqz p0, :cond_1

    .line 114
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/feedback/common/CommonInfo;

    invoke-direct {v0}, Lcom/tencent/feedback/common/CommonInfo;-><init>()V

    sput-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    .line 116
    :cond_0
    sget-object v2, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    invoke-static {}, Lcom/tencent/feedback/common/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setHardware_os(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setPlatformId(B)V

    .line 122
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    invoke-static {p0}, Lcom/tencent/feedback/common/AppInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setProductId(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    invoke-static {p0}, Lcom/tencent/feedback/common/AppInfo;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setProductVersion(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    const-string v3, "com.tencent.feedback"

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setSdkId(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    const-string v3, "539-45_v1.2.5_fixedListCuncurrent"

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setSdkVersion(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/feedback/common/CommonInfo;->setUserid(Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    invoke-virtual {v0, p2}, Lcom/tencent/feedback/common/CommonInfo;->setGateIP(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;

    invoke-static {p0}, Lcom/tencent/feedback/common/AppInfo;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/CommonInfo;->setUUId(Ljava/lang/String;)V

    .line 135
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_1
    :try_start_2
    const-string v0, "CommonInfo.createCommonInfo() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    monitor-exit v1

    return-void

    .line 135
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;
    .locals 2

    .prologue
    .line 143
    const-class v0, Lcom/tencent/feedback/common/CommonInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/common/CommonInfo;->k:Lcom/tencent/feedback/common/CommonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getGateIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_os()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()B
    .locals 1

    .prologue
    .line 34
    iget-byte v0, p0, Lcom/tencent/feedback/common/CommonInfo;->b:B

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimeGap()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/tencent/feedback/common/CommonInfo;->i:J

    return-wide v0
.end method

.method public getUUId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/feedback/common/CommonInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setGateIP(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->h:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setHardware_os(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPlatformId(B)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-byte p1, p0, Lcom/tencent/feedback/common/CommonInfo;->b:B

    .line 39
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->c:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSdkId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->f:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setServerTimeGap(J)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/tencent/feedback/common/CommonInfo;->i:J

    .line 95
    return-void
.end method

.method public setUUId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->j:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tencent/feedback/common/CommonInfo;->g:Ljava/lang/String;

    .line 79
    return-void
.end method
