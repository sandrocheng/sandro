.class public final Labe;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field public b:Lcom/tencent/tmsecure/module/applist/AppListManager;

.field public c:Ljt;

.field private d:Lkd;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labe;->e:J

    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    iput-object v0, p0, Labe;->d:Lkd;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Labe;->c:Ljt;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    iput-object v0, p0, Labe;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cC()J

    move-result-wide v0

    iput-wide v0, p0, Labe;->e:J

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/MySoftSimpleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQQPIM/MySoftSimpleInfo;

    invoke-virtual {v1}, LQQPIM/MySoftSimpleInfo;->getSoftSimpleInfo()LQQPIM/SoftSimpleInfo;

    move-result-object v5

    invoke-virtual {v5}, LQQPIM/SoftSimpleInfo;->getSoftkey()LQQPIM/SoftKey;

    move-result-object v5

    invoke-virtual {v5}, LQQPIM/SoftKey;->getSoftname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, LQQPIM/MySoftSimpleInfo;->getUpdate()I

    move-result v6

    if-ne v6, v8, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lkw;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkw;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lkw;->d(I)V

    invoke-virtual {v1}, LQQPIM/MySoftSimpleInfo;->getSoftSimpleInfo()LQQPIM/SoftSimpleInfo;

    move-result-object v6

    invoke-virtual {v6}, LQQPIM/SoftSimpleInfo;->getFileurl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lkw;->d(Ljava/lang/String;)V

    iget-object v6, v5, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lkw;->a(Ljava/lang/String;)V

    iget v5, v5, LQQPIM/SoftKey;->versioncode:I

    invoke-virtual {v2, v5}, Lkw;->i(I)V

    iget-object v5, v1, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iget-object v5, v5, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lkw;->b(Ljava/lang/String;)V

    iget-object v1, v1, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iget-object v1, v1, LQQPIM/SoftSimpleInfo;->strSource:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lkw;->p(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labe;->c:Ljt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljt;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v5, v3

    move v2, v3

    :goto_0
    if-ge v5, v6, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    if-eq v5, v4, :cond_5

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    if-ne v8, v9, :cond_5

    invoke-virtual {v0}, Lkw;->getVersionCode()I

    move-result v8

    invoke-virtual {v1}, Lkw;->getVersionCode()I

    move-result v9

    if-ne v8, v9, :cond_5

    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Lkw;->e(I)V

    add-int/lit8 v1, v2, 0x1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labe;->d:Lkd;

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "same_apk_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v3

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->n()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v0}, Labe;->b(Lkw;)Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Lkw;->n()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, v1, 0x1

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Labe;->d:Lkd;

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "apk_low_version_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p1

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public final a(Lkw;)Z
    .locals 13

    const/4 v12, 0x2

    const-wide/32 v10, 0x13c680

    const/4 v1, 0x0

    const-wide/32 v8, 0x278d00

    const/4 v2, 0x1

    iget-object v0, p0, Labe;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, LQQPIM/SoftListType;->WHITELIST_UNUSUAL:LQQPIM/SoftListType;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Labe;->e:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v0, v3, v10

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "SoftwareManagerImpl"

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v5}, Lbor;->a(Ljava/lang/String;)Lbor;

    move-result-object v0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " useageInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long v5, v3, v10

    if-ltz v5, :cond_4

    cmp-long v5, v3, v8

    if-gez v5, :cond_4

    if-nez v0, :cond_3

    invoke-virtual {p1, v12}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v0, Lbor;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v10

    if-ltz v0, :cond_b

    cmp-long v0, v3, v8

    if-gez v0, :cond_b

    invoke-virtual {p1, v12}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto :goto_0

    :cond_4
    cmp-long v5, v3, v8

    if-ltz v5, :cond_7

    const-wide/32 v5, 0x4f1a00

    cmp-long v5, v3, v5

    if-gez v5, :cond_7

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v0, Lbor;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v0, v3, v8

    if-ltz v0, :cond_6

    invoke-virtual {p1, v2}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    cmp-long v0, v3, v10

    if-ltz v0, :cond_b

    cmp-long v0, v3, v8

    if-gez v0, :cond_b

    invoke-virtual {p1, v12}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    const-wide/32 v5, 0x4f1a00

    cmp-long v3, v3, v5

    if-ltz v3, :cond_b

    if-nez v0, :cond_8

    invoke-virtual {p1, v1}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v0, Lbor;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/32 v5, 0x4f1a00

    cmp-long v0, v3, v5

    if-ltz v0, :cond_9

    invoke-virtual {p1, v1}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    cmp-long v0, v3, v8

    if-ltz v0, :cond_a

    const-wide/32 v5, 0x4f1a00

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    invoke-virtual {p1, v2}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_a
    cmp-long v0, v3, v10

    if-ltz v0, :cond_b

    cmp-long v0, v3, v8

    if-gez v0, :cond_b

    invoke-virtual {p1, v12}, Lkw;->h(I)V

    invoke-static {}, Lkw;->u()V

    move v0, v2

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public final b(Lkw;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lkw;->e(I)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lkw;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkw;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppVersionStatus(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v3}, Lkw;->e(I)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lkw;->e(I)V

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lkw;->e(I)V

    goto :goto_0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labe;->c:Ljt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljt;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v3, p0, Labe;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, LQQPIM/SoftListType;->BLACKLIST_ROM:LQQPIM/SoftListType;

    invoke-virtual {v3, v4, v5}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lkw;->h(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labe;->d:Lkd;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "system_black_list_app_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v1
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v3, p0, Labe;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, LQQPIM/SoftListType;->BLACKLIST_WITHPLUGIN:LQQPIM/SoftListType;

    invoke-virtual {v3, v4, v5}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lkw;->h(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labe;->d:Lkd;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "low_score_app_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v1
.end method

.method public final d(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {p0, v0}, Labe;->a(Lkw;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labe;->d:Lkd;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "low_useage_app_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v1
.end method

.method public final e(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    :try_start_0
    iget-object v2, p0, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
