.class final Lrq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lrn;


# direct methods
.method constructor <init>(Lrn;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lrq;->b:Lrn;

    iput-object p2, p0, Lrq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v4, 0x0

    iget-object v0, p0, Lrq;->b:Lrn;

    invoke-static {v0}, Lrn;->c(Lrn;)Lrm;

    iget-object v5, p0, Lrq;->a:Ljava/lang/String;

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    const-class v1, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    sget-object v2, LQQPIM/SoftListType;->DEEPCLEAN_SOFT_PATH_LIST:LQQPIM/SoftListType;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/applist/AppListManager;->loadAppList(LQQPIM/SoftListType;)LQQPIM/SoftList;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v6, v2}, Leb;->a(LQQPIM/SoftList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llh;

    iget-object v0, v2, Llh;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Llh;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, v2, Llh;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v4

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llg;

    iget-object v9, v0, Llg;->a:Ljava/lang/String;

    iget-object v10, v0, Llg;->d:Ljava/lang/String;

    invoke-static {v9, v10}, Leb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v2, Llh;->a:Ljava/lang/String;

    invoke-static {v10, v0, v6, v1}, Lrm;->a(Ljava/lang/String;Llg;Ljava/util/Map;Lcom/tencent/tmsecure/module/software/SoftwareManager;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v3, :cond_6

    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    iget-object v3, v2, Llh;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v3, v2, Llh;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lkw;->setAppName(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lkw;->T()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v3}, Lkw;->a(Ljava/util/List;)V

    :goto_2
    invoke-virtual {v0}, Lkw;->S()J

    move-result-wide v10

    invoke-static {v9}, La;->e(Ljava/util/List;)J

    move-result-wide v12

    add-long v9, v10, v12

    invoke-virtual {v0, v9, v10}, Lkw;->g(J)V

    move-object v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v9}, Lkw;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lkw;->T()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_3
    if-nez v3, :cond_5

    :goto_4
    return-void

    :cond_4
    move-object v3, v4

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lrq;->b:Lrn;

    invoke-static {v0}, Lrn;->b(Lrn;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_6
    move-object v0, v3

    goto :goto_1
.end method
