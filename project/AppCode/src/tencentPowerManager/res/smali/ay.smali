.class public final Lay;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Lgg;

.field c:Z

.field d:Lz;

.field e:Lbe;

.field protected f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Lfe;

.field private i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

.field private j:Lfi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi",
            "<",
            "Lbd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lay;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lay;->c:Z

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Lax;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lay;->i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    new-instance v0, Laz;

    invoke-direct {v0, p0}, Laz;-><init>(Lay;)V

    iput-object v0, p0, Lay;->j:Lfi;

    iput-object p2, p0, Lay;->g:Ljava/lang/String;

    iput-object p1, p0, Lay;->a:Landroid/content/Context;

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v0

    iput-object v0, p0, Lay;->d:Lz;

    const-class v0, Lgg;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lgg;

    iput-object v0, p0, Lay;->b:Lgg;

    return-void
.end method

.method static synthetic a(Lay;)V
    .locals 3

    new-instance v0, Lbl;

    invoke-direct {v0}, Lbl;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lbl;

    iget-object v1, p0, Lay;->i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lfe;

    iput-object v0, p0, Lay;->h:Lfe;

    iget-object v0, p0, Lay;->e:Lbe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lay;->h:Lfe;

    if-eqz v0, :cond_0

    invoke-static {}, Lbj;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lay;->a:Landroid/content/Context;

    iget-object v1, p0, Lay;->a:Landroid/content/Context;

    const v2, 0x7f060090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lay;->a:Landroid/content/Context;

    iget-object v1, p0, Lay;->a:Landroid/content/Context;

    const v2, 0x7f060084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lp;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lay;->h:Lfe;

    iget-object v1, p0, Lay;->j:Lfi;

    invoke-virtual {v0, v1}, Lfe;->a(Lfi;)V

    iget-object v0, p0, Lay;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lay;->h:Lfe;

    invoke-virtual {v1}, Lfe;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lbl;->a(Ljava/lang/String;Ljava/util/List;)Lbd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lbd;->a:Lbe;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lbd;->a:Lbe;

    invoke-virtual {v1}, Lbe;->h()I

    move-result v1

    iget-object v2, p0, Lay;->e:Lbe;

    invoke-virtual {v2}, Lbe;->h()I

    move-result v2

    if-ge v1, v2, :cond_3

    :cond_2
    new-instance v0, Lbd;

    iget-object v1, p0, Lay;->e:Lbe;

    invoke-direct {v0, v1}, Lbd;-><init>(Lbe;)V

    move-object v1, v0

    :goto_1
    iget v0, v1, Lbd;->d:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lay;->h:Lfe;

    invoke-virtual {v0, v1}, Lfe;->a(Lfh;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lay;->h:Lfe;

    invoke-virtual {v0, v1}, Lfe;->b(Lfh;)V

    goto :goto_0

    :pswitch_3
    const-class v0, Lfs;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lfs;

    invoke-static {v1}, Lbl;->a(Lbd;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs;->a(Ljava/io/File;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lay;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lay;->h:Lfe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lay;->h:Lfe;

    iget-object v1, p0, Lay;->j:Lfi;

    invoke-virtual {v0, v1}, Lfe;->b(Lfi;)V

    iput-object v2, p0, Lay;->h:Lfe;

    :cond_0
    const-class v0, Lbl;

    iget-object v1, p0, Lay;->i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    iput-object v2, p0, Lay;->i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lay;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lfx;)V
    .locals 5

    iget-object v0, p1, Lfx;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgb;

    const-class v1, Lfs;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lfs;

    iget-object v2, p0, Lay;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x79

    invoke-virtual {v1, v2, v3}, Lfs;->a(Ljava/lang/String;I)Lfq;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lay;->e:Lbe;

    iget-object v1, p0, Lay;->e:Lbe;

    iget-object v0, v0, Lgb;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lbe;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lay;->e:Lbe;

    iget-object v1, p0, Lay;->e:Lbe;

    invoke-virtual {v1}, Lbe;->h()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lbe;->a(I)V

    iget-object v0, p0, Lay;->e:Lbe;

    iget-object v0, p0, Lay;->g:Ljava/lang/String;

    invoke-static {}, Lbe;->b()V

    iget-object v0, p0, Lay;->f:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lbb;

    iget-object v1, p0, Lay;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbb;-><init>(Lay;Landroid/os/Looper;)V

    iput-object v0, p0, Lay;->f:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lay;->f:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    new-instance v1, Lbe;

    invoke-direct {v1}, Lbe;-><init>()V

    invoke-virtual {v2}, Lfq;->e()Z

    move-result v3

    invoke-virtual {v1, v3}, Lbe;->a(Z)V

    invoke-virtual {v2}, Lfq;->o()Z

    move-result v3

    invoke-virtual {v1, v3}, Lbe;->b(Z)V

    invoke-virtual {v2}, Lfq;->h()I

    move-result v3

    invoke-virtual {v1, v3}, Lbe;->a(I)V

    invoke-virtual {v2}, Lfq;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbe;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lfq;->i()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lbe;->a(J)V

    invoke-virtual {v2}, Lfq;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbe;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lfq;->m()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbe;->a([Ljava/lang/String;)V

    invoke-virtual {v2}, Lfq;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbe;->g(Ljava/lang/String;)V

    invoke-virtual {v2}, Lfq;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbe;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Lfq;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbe;->h(Ljava/lang/String;)V

    invoke-virtual {v2}, Lfq;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbe;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lfq;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbe;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lfq;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbe;->b(J)V

    goto/16 :goto_0
.end method
