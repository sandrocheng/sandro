.class final Laaw;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Laau;


# direct methods
.method constructor <init>(Laau;Z)V
    .locals 0

    iput-object p1, p0, Laaw;->b:Laau;

    iput-boolean p2, p0, Laaw;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Laau;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->b(Laau;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Laau;->a(Z)Z

    iget-object v0, p0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->c(Laau;)Ljt;

    move-result-object v0

    iget-object v1, v0, Ljt;->j:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "id ASC"

    invoke-virtual {v0, v1, v2, v3, v4}, Ljt;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Laaw;->b:Laau;

    invoke-static {v3}, Laau;->d(Laau;)Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->bo()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Laaw;->b:Laau;

    invoke-static {v3}, Laau;->d(Laau;)Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->bq()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Laaw;->a:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->c(Laau;)Ljt;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljt;->a(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Laaw;->a:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->e(Laau;)Labe;

    move-result-object v0

    iget-object v0, v0, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v2, 0x79

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->e(Laau;)Labe;

    move-result-object v0

    iget-object v0, v0, Labe;->a:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v2, 0x79

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, La;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v3, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    new-instance v4, Laax;

    invoke-direct {v4, p0, v1}, Laax;-><init>(Laaw;Ljava/util/List;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchMySoftwareListInfo(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    invoke-static {v5}, Laau;->a(Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Laaw;->b:Laau;

    invoke-static {v0}, Laau;->g(Laau;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.qqpimsecure.NOTIFY_UI_FAILURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
