.class final Lbpr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbpq;


# direct methods
.method constructor <init>(Lbpq;)V
    .locals 0

    iput-object p1, p0, Lbpr;->a:Lbpq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lbpr;->a:Lbpq;

    iget-object v0, v0, Lbpq;->a:Lbpp;

    invoke-static {v0}, Lbpp;->a(Lbpp;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-virtual {v1}, Lbpp;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v3, v1, Lbpq;->a:Lbpp;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0}, Lkw;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lpn;->b(Lkw;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->b(Lbpp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->c(Lbpp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->c(Lbpp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->e(Lbpp;)Lpn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpn;->a(Lkw;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lpn;->c:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lpn;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lpn;->c:Ljava/lang/String;

    :goto_1
    iget-object v3, v1, Lpn;->d:Ljava/util/List;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lpn;->b:Lho;

    iget-object v1, v1, Lpn;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lho;->n(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->f(Lbpp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v1, ""

    invoke-virtual {v0}, Lkw;->m()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbpr;->a:Lbpq;

    iget-object v3, v3, Lbpq;->a:Lbpp;

    invoke-static {v3}, Lbpp;->g(Lbpp;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0670

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->i(Lbpp;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0673

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->d(Lbpp;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lkw;->m()Z

    move-result v1

    if-nez v1, :cond_4

    const-class v1, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getAutoBootHelper()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;

    move-result-object v1

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;->setAutoBootEnable(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lkw;->a(Z)V

    move v1, v2

    :goto_4
    if-eqz v1, :cond_4

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->c(Lbpp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->b(Lbpp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbpr;->a:Lbpq;

    iget-object v1, v1, Lbpq;->a:Lbpp;

    invoke-static {v1}, Lbpp;->b(Lbpp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :try_start_2
    iget-object v0, p0, Lbpr;->a:Lbpq;

    iget-object v0, v0, Lbpq;->a:Lbpp;

    invoke-static {v0}, Lbpp;->d(Lbpp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lpn;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lpn;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbpr;->a:Lbpq;

    iget-object v3, v3, Lbpq;->a:Lbpp;

    invoke-static {v3}, Lbpp;->h(Lbpp;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0671

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method
