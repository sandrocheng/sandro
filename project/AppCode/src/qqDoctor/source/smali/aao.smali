.class final Laao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

.field private synthetic b:Laan;


# direct methods
.method constructor <init>(Laan;Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V
    .locals 0

    iput-object p1, p0, Laao;->b:Laan;

    iput-object p2, p0, Laao;->a:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Laao;->b:Laan;

    iget-object v5, v0, Laan;->d:Ljf;

    iget-object v0, p0, Laao;->a:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    iget v0, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mUid:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "SELECT * FROM permission_info WHERE mUId="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v5, Ljf;->a:Lhs;

    invoke-virtual {v4, v0}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v4, Lkx;

    invoke-direct {v4}, Lkx;-><init>()V

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lkx;->a:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lkx;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lkx;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v4, Lkx;->e:[B

    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lkx;->f:Z

    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_1
    iput-boolean v1, v4, Lkx;->g:Z

    move-object v1, v4

    :goto_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, v5, Ljf;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    if-eqz v1, :cond_7

    iget-object v0, p0, Laao;->b:Laan;

    iget-object v2, v1, Lkx;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Laan;->a(Laan;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Laao;->b:Laan;

    iget-object v0, v0, Laan;->e:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v4, v1, Lkx;->b:Ljava/lang/String;

    const/16 v5, 0x11

    invoke-virtual {v0, v4, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v5, LQQPIM/FeatureKey;

    invoke-direct {v5}, LQQPIM/FeatureKey;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v5, v0}, LQQPIM/FeatureKey;->setUniCode(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v5, v0}, LQQPIM/FeatureKey;->setSoftName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v5, v0}, LQQPIM/FeatureKey;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersionCode()I

    move-result v0

    invoke-virtual {v5, v0}, LQQPIM/FeatureKey;->setVersionCode(I)V

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v5, v0}, LQQPIM/FeatureKey;->setCert(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5, v0}, LQQPIM/FeatureKey;->setFileSize(I)V

    iget-object v0, p0, Laao;->b:Laan;

    iget-object v0, v0, Laan;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftAction;

    iget-object v6, v0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    iget-object v6, v6, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    iget-object v7, v1, Lkx;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    if-nez v0, :cond_6

    new-instance v0, LQQPIM/SoftAction;

    invoke-direct {v0}, LQQPIM/SoftAction;-><init>()V

    iput-object v5, v0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    iget-object v1, p0, Laao;->b:Laan;

    iget-object v1, v1, Laan;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Laao;->b:Laan;

    iget-object v3, p0, Laao;->a:Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    invoke-static {v1, v0, v2, v3}, Laan;->a(Laan;LQQPIM/SoftAction;ILcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)V

    iget-object v0, p0, Laao;->b:Laan;

    iget-object v0, v0, Laan;->a:Landroid/content/Context;

    iget-object v1, p0, Laao;->b:Laan;

    iget-object v1, v1, Laan;->c:Ljava/util/List;

    const-string v2, "label_sa"

    const-string v3, "sa.dat"

    invoke-static {v0, v1, v2, v3}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto/16 :goto_1

    :cond_a
    move-object v0, v3

    goto :goto_3

    :cond_b
    move-object v1, v3

    goto/16 :goto_2
.end method
