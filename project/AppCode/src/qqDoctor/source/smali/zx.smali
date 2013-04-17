.class final Lzx;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Z

.field private synthetic c:Ldv;

.field private synthetic d:Lzs;


# direct methods
.method constructor <init>(Lzs;Ljava/util/List;ZLdv;)V
    .locals 0

    iput-object p1, p0, Lzx;->d:Lzs;

    iput-object p2, p0, Lzx;->a:Ljava/util/List;

    iput-boolean p3, p0, Lzx;->b:Z

    iput-object p4, p0, Lzx;->c:Ldv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lzx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_f

    iget-object v0, p0, Lzx;->d:Lzs;

    iget-object v0, p0, Lzx;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmb$a;

    iget-boolean v4, p0, Lzx;->b:Z

    new-instance v3, LQQPIM/NotifyInfo;

    invoke-direct {v3}, LQQPIM/NotifyInfo;-><init>()V

    iget-object v0, v1, Lmb$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, LQQPIM/NotifyInfo;->setContent(Ljava/lang/String;)V

    iget-object v0, v1, Lmb$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, LQQPIM/NotifyInfo;->setTitle(Ljava/lang/String;)V

    iget v0, v1, Lmb$a;->d:I

    invoke-virtual {v3, v0}, LQQPIM/NotifyInfo;->setTimestamp(I)V

    iget-object v7, v1, Lmb$a;->i:Lmb;

    iget-object v0, v7, Lmb;->h:LQQPIM/FeatureKey;

    if-nez v0, :cond_4

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v8, v7, Lmb;->a:Ljava/lang/String;

    const/16 v9, 0x19

    invoke-virtual {v0, v8, v9}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v9, LQQPIM/FeatureKey;

    invoke-direct {v9}, LQQPIM/FeatureKey;-><init>()V

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v9, v0}, LQQPIM/FeatureKey;->setUniCode(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v9, v0}, LQQPIM/FeatureKey;->setSoftName(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v9, v0}, LQQPIM/FeatureKey;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersionCode()I

    move-result v0

    invoke-virtual {v9, v0}, LQQPIM/FeatureKey;->setVersionCode(I)V

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v9, v0}, LQQPIM/FeatureKey;->setCert(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v10

    long-to-int v0, v10

    invoke-virtual {v9, v0}, LQQPIM/FeatureKey;->setFileSize(I)V

    iput-object v9, v7, Lmb;->h:LQQPIM/FeatureKey;

    :cond_4
    iget-object v0, v7, Lmb;->h:LQQPIM/FeatureKey;

    iput-object v0, v3, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    iget-object v0, v3, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, v3, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    iput-object v0, v3, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    :cond_7
    iget-object v0, v3, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    iput-object v0, v3, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    :cond_8
    if-eqz v4, :cond_a

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, LQQPIM/NotifyInfo;->setReportType(I)V

    :goto_2
    const/4 v0, 0x0

    iget-object v4, v1, Lmb$a;->i:Lmb;

    iget-boolean v4, v4, Lmb;->d:Z

    if-eqz v4, :cond_d

    iget v0, v1, Lmb$a;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_c

    const/4 v0, 0x2

    :cond_9
    :goto_4
    invoke-virtual {v3, v0}, LQQPIM/NotifyInfo;->setInfoType(I)V

    iget-object v0, v1, Lmb$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, LQQPIM/NotifyInfo;->setUrl(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_1

    :cond_a
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, LQQPIM/NotifyInfo;->setReportType(I)V

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    :cond_c
    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    iget v4, v1, Lmb$a;->e:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_9

    const/4 v0, 0x3

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    goto :goto_5

    :cond_f
    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportNotifyInfo(Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Lzx;->c:Ldv;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lzx;->c:Ldv;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ldv;->a(Ljava/lang/Object;)V

    if-nez v0, :cond_10

    new-instance v2, Lja;

    invoke-direct {v2}, Lja;-><init>()V

    iget-object v0, p0, Lzx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v3, :cond_10

    iget-object v0, p0, Lzx;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb$a;

    iget v4, v0, Lmb$a;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v0, Lmb$a;->e:I

    invoke-static {v0}, Lja;->a(Lmb$a;)Landroid/content/ContentValues;

    move-result-object v4

    iget-object v5, v2, Lja;->a:Lhs;

    const-string v6, "notification_msg"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lmb$a;->h:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v0, v7}, Lhs;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, v2, Lja;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_10
    return-void
.end method
