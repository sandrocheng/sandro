.class public final Lbwo;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbwo$a;,
        Lbwo$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/tmsecure/common/BaseService;

.field private c:Z

.field private d:J

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Lbwn;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbwl;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

.field private j:Lbwh;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbwo;->a:Ljava/lang/String;

    new-instance v0, Lbwo$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbwo$a;-><init>(Lbwo;B)V

    iput-object v0, p0, Lbwo;->b:Lcom/tencent/tmsecure/common/BaseService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbwo;->h:Ljava/util/Map;

    new-instance v0, Lbwp;

    invoke-direct {v0, p0}, Lbwp;-><init>(Lbwo;)V

    iput-object v0, p0, Lbwo;->i:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

    new-instance v0, Lbwh;

    invoke-direct {v0}, Lbwh;-><init>()V

    iput-object v0, p0, Lbwo;->j:Lbwh;

    return-void
.end method

.method static synthetic a(Lbwo;)I
    .locals 1

    invoke-direct {p0}, Lbwo;->i()I

    move-result v0

    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/net/dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/net/dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "error"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/proc/net/dev"

    goto :goto_0

    :cond_1
    const-string v0, "/proc/self/net/dev"

    goto :goto_0
.end method

.method static synthetic b(Lbwo;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lbwo;->h:Ljava/util/Map;

    return-object v0
.end method

.method public static b(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    return-void
.end method

.method public static c(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileUploadBytes(J)V

    return-void
.end method

.method static synthetic c(Lbwo;)Z
    .locals 1

    iget-boolean v0, p0, Lbwo;->c:Z

    return v0
.end method

.method static synthetic d(Lbwo;)J
    .locals 2

    iget-wide v0, p0, Lbwo;->d:J

    return-wide v0
.end method

.method static synthetic e(Lbwo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbwo;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static g()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()J
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileUploadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method private i()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbwo;->f:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbtd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbwo;->g:Lbwn;

    invoke-virtual {v0}, Lbwn;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iput p1, p0, Lbwo;->e:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lbwo;->d:J

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lbwo;->d:J

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lbwo;->d:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lbwo;->d:J

    const/4 v0, 0x3

    iput v0, p0, Lbwo;->e:I

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iget-boolean v0, p0, Lbwo;->c:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lbwo;->c:Z

    iget-object v0, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbwo;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbwo;->b:Lcom/tencent/tmsecure/common/BaseService;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwl;

    iget-boolean v2, p0, Lbwo;->c:Z

    invoke-virtual {v0, v2}, Lbwl;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbwo;->b:Lcom/tencent/tmsecure/common/BaseService;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Lcom/tencent/tmsecure/common/BaseService;)Z

    goto :goto_1
.end method

.method public final a([Ljava/lang/String;)V
    .locals 3

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lbwo;->j:Lbwh;

    invoke-virtual {v0, p1}, Lbwh;->a([Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileUploadBytes(J)V

    return-void
.end method

.method public final a([Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v15, v0, Lbwo;->j:Lbwh;

    const-class v2, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v2}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiActive()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "wifi"

    :goto_0
    iget-object v3, v15, Lbwh;->a:Landroid/content/SharedPreferences;

    const-string v4, "last_connection_type"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v2

    :cond_0
    :goto_1
    const/4 v4, 0x0

    move v7, v4

    :goto_2
    move-object/from16 v0, p1

    array-length v4, v0

    if-lt v7, v4, :cond_4

    iget-object v3, v15, Lbwh;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "last_connection_type"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v15, Lbwh;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :cond_2
    const-string v2, "mobile"

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_4
    aget-object v16, p1, v7

    invoke-virtual/range {v15 .. v16}, Lbwh;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v5

    invoke-virtual/range {v15 .. v16}, Lbwh;->a(Ljava/lang/String;)I

    move-result v6

    const/4 v4, 0x0

    if-nez v5, :cond_12

    const/4 v8, -0x1

    if-eq v6, v8, :cond_12

    new-instance v5, Lcom/tencent/tmsecure/module/network/TrafficEntity;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/network/TrafficEntity;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mPkg:Ljava/lang/String;

    const/4 v4, 0x1

    move v8, v4

    move-object v14, v5

    :goto_3
    if-eqz v14, :cond_e

    if-nez v3, :cond_f

    iget-object v4, v15, Lbwh;->a:Landroid/content/SharedPreferences;

    const-string v5, "last_connection_type"

    const/4 v9, 0x0

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    iget-object v5, v15, Lbwh;->c:Lbwt;

    invoke-virtual {v5, v6}, Lbwt;->b(I)J

    move-result-wide v10

    iget-object v5, v15, Lbwh;->c:Lbwt;

    invoke-virtual {v5, v6}, Lbwt;->a(I)J

    move-result-wide v5

    if-eqz v8, :cond_5

    iput-wide v5, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    iput-wide v10, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    :cond_5
    const-wide/16 v8, -0x1

    cmp-long v8, v10, v8

    if-nez v8, :cond_7

    iget-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-gtz v8, :cond_6

    iget-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-lez v8, :cond_7

    :cond_6
    const-wide/16 v10, 0x0

    :cond_7
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-nez v8, :cond_9

    iget-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-gtz v8, :cond_8

    iget-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-lez v8, :cond_9

    :cond_8
    const-wide/16 v5, 0x0

    :cond_9
    iget-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    sub-long v12, v10, v8

    iget-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    sub-long v8, v5, v8

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-gez v17, :cond_a

    move-wide v12, v10

    :cond_a
    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-gez v17, :cond_b

    move-wide v8, v10

    :cond_b
    const-wide/16 v17, -0x1

    cmp-long v17, v10, v17

    if-eqz v17, :cond_c

    const-wide/16 v17, -0x1

    cmp-long v17, v5, v17

    if-nez v17, :cond_10

    :cond_c
    const-wide/16 v8, 0x0

    iput-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    const-wide/16 v8, 0x0

    iput-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    const-wide/16 v8, 0x0

    iput-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    const-wide/16 v8, 0x0

    iput-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    :cond_d
    :goto_5
    iput-wide v10, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastUpValue:J

    iput-wide v5, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mLastDownValue:J

    iget-object v4, v15, Lbwh;->b:Landroid/content/SharedPreferences$Editor;

    invoke-static {v14}, Lcom/tencent/tmsecure/module/network/TrafficEntity;->toString(Lcom/tencent/tmsecure/module/network/TrafficEntity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_e
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_2

    :cond_f
    move-object v4, v3

    goto/16 :goto_4

    :cond_10
    const-string v17, "mobile"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    iget-wide v0, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    move-wide/from16 v17, v0

    add-long v8, v8, v17

    iput-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    iget-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    add-long/2addr v8, v12

    iput-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    goto :goto_5

    :cond_11
    const-string v17, "wifi"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-wide v0, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    move-wide/from16 v17, v0

    add-long v8, v8, v17

    iput-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    iget-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    add-long/2addr v8, v12

    iput-wide v8, v14, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    goto :goto_5

    :cond_12
    move v8, v4

    move-object v14, v5

    goto/16 :goto_3
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lbwk;

    iget-object v1, p0, Lbwo;->g:Lbwn;

    invoke-direct {v0, p2, v1}, Lbwk;-><init>(Lcom/tencent/tmsecure/module/network/INetworkInfoDao;Lbwn;)V

    iget-boolean v1, p0, Lbwo;->c:Z

    invoke-virtual {v0, v1}, Lbwl;->a(Z)V

    iget-object v1, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v1, Lbwl;

    invoke-direct {v1, p2, p3}, Lbwl;-><init>(Lcom/tencent/tmsecure/module/network/NetDataEntityFactory;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)V

    iget-boolean v2, p0, Lbwo;->c:Z

    invoke-virtual {v1, v2}, Lbwl;->a(Z)V

    iget-object v2, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lbwo;->e:I

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;
    .locals 1

    iget-object v0, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lbwm;

    iget-object v1, p0, Lbwo;->g:Lbwn;

    invoke-direct {v0, p2, v1}, Lbwm;-><init>(Lcom/tencent/tmsecure/module/network/INetworkInfoDao;Lbwn;)V

    iget-boolean v1, p0, Lbwo;->c:Z

    invoke-virtual {v0, v1}, Lbwl;->a(Z)V

    iget-object v1, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lbwo;->d:J

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;
    .locals 1

    iget-object v0, p0, Lbwo;->j:Lbwh;

    invoke-virtual {v0, p1}, Lbwh;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lbwo;->j:Lbwh;

    invoke-virtual {v0, p1}, Lbwh;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lbwo;->c:Z

    return v0
.end method

.method public final e(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lbwo;->j:Lbwh;

    invoke-virtual {v0, p1}, Lbwh;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbwo;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwo;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbwo;->b:Lcom/tencent/tmsecure/common/BaseService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwo;->b:Lcom/tencent/tmsecure/common/BaseService;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwl;

    invoke-virtual {v0}, Lbwl;->notifyConfigChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lbwo;->j:Lbwh;

    invoke-virtual {v0, p1}, Lbwh;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIDownValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lbwo;->j:Lbwh;

    iget-object v0, v0, Lbwh;->c:Lbwt;

    iget-boolean v1, v0, Lbwt;->b:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lbwt;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/update/UpdateManager;->removeObserver(I)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lbwo;->j:Lbwh;

    invoke-virtual {v0, p1}, Lbwh;->b(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mWIFIUpValue:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lbwo;->f:Landroid/content/Context;

    iget-object v0, p0, Lbwo;->f:Landroid/content/Context;

    const-string v1, "net_interface_type_traffic_stat.dat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbtd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lbwo;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbwo;->a:Ljava/lang/String;

    new-instance v0, Lbwn;

    iget-object v1, p0, Lbwo;->a:Ljava/lang/String;

    invoke-direct {v0}, Lbwn;-><init>()V

    iput-object v0, p0, Lbwo;->g:Lbwn;

    iget-object v0, p0, Lbwo;->g:Lbwn;

    invoke-virtual {v0}, Lbwn;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbwo;->a(I)V

    const-class v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateManager;

    const/16 v1, 0x20

    iget-object v2, p0, Lbwo;->i:Lcom/tencent/tmsecure/module/update/IUpdateObserver;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/update/UpdateManager;->addObserver(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V

    return-void
.end method
