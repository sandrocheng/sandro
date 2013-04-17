.class final Lboj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# instance fields
.field private synthetic a:Lbod;


# direct methods
.method constructor <init>(Lbod;)V
    .locals 0

    iput-object p1, p0, Lboj;->a:Lbod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lboj;->a:Lbod;

    iget-object v0, v0, Lbod;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v1, 0x7d

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    invoke-static {v0, v2}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;Z)Lkw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lkw;->b(I)V

    iget-object v1, p0, Lboj;->a:Lbod;

    invoke-static {v1}, Lbod;->l(Lbod;)Landroid/content/Context;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lboj;->a:Lbod;

    invoke-static {v2}, Lbod;->e(Lbod;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lboj;->a:Lbod;

    invoke-static {v0}, Lbod;->e(Lbod;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lboj;->a:Lbod;

    invoke-static {v0}, Lbod;->m(Lbod;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Lgx$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgx$a;-><init>(B)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lboj;->a:Lbod;

    invoke-static {v2}, Lbod;->d(Lbod;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lboj;->a:Lbod;

    invoke-static {v0}, Lbod;->d(Lbod;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lgx$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgx$a;-><init>(B)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final onPackageReinstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    invoke-virtual {v0, p1}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lboj;->a:Lbod;

    invoke-static {v1}, Lbod;->i(Lbod;)Landroid/content/Context;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lboj;->a:Lbod;

    invoke-static {v2}, Lbod;->d(Lbod;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lboj;->a:Lbod;

    invoke-static {v2}, Lbod;->e(Lbod;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lboj;->a:Lbod;

    invoke-static {v2}, Lbod;->j(Lbod;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lboj;->a:Lbod;

    invoke-virtual {v2}, Lbod;->a()Lalt;

    move-result-object v2

    invoke-virtual {v2}, Lalt;->c()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lboj;->a:Lbod;

    invoke-virtual {v3}, Lbod;->a()Lalt;

    move-result-object v3

    invoke-virtual {v3, v0}, Lalt;->b(Lkw;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lboj;->a:Lbod;

    invoke-virtual {v0}, Lbod;->a()Lalt;

    move-result-object v0

    invoke-virtual {v0, v2}, Lalt;->a(Ljava/util/List;)V

    iget-object v0, p0, Lboj;->a:Lbod;

    invoke-static {v0}, Lbod;->k(Lbod;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
