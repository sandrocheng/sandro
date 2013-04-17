.class public final Lzk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzk$a;,
        Lzk$b;
    }
.end annotation


# instance fields
.field a:Lzk$b;

.field public b:Lzo;

.field private c:Lvh;

.field private d:Landroid/content/Context;

.field private e:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzk$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    iput-object v0, p0, Lzk;->e:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzk;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzk;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lzk;->h:Landroid/os/Handler;

    iput-object p1, p0, Lzk;->d:Landroid/content/Context;

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iput-object v0, p0, Lzk;->b:Lzo;

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iput-object v0, p0, Lzk;->c:Lvh;

    iget-object v0, p0, Lzk;->d:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lzk;->i:Landroid/app/ActivityManager;

    iput-object p2, p0, Lzk;->a:Lzk$b;

    new-instance v0, Lzl;

    iget-object v1, p0, Lzk;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lzl;-><init>(Lzk;Landroid/os/Looper;)V

    iput-object v0, p0, Lzk;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lkw;ZI)J
    .locals 6

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lzk;->b:Lzo;

    invoke-virtual {v0, p1}, Lzo;->a(Lkw;)V

    :cond_0
    invoke-virtual {p1}, Lkw;->H()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lzk;->b:Lzo;

    invoke-virtual {p1}, Lkw;->V()I

    move-result v1

    invoke-virtual {v0, v1}, Lzo;->a(I)J

    move-result-wide v0

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    :try_start_0
    iget-object v4, p0, Lzk;->e:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->closeProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lzk;->b:Lzo;

    invoke-static {p1}, Lzo;->d(Lkw;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, p0, Lzk;->c:Lvh;

    const-wide/16 v3, 0x400

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lvh;->a(J)V

    :goto_1
    return-wide v0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lzk;->i:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method public final declared-synchronized a(Z)Lzk$a;
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v4

    invoke-virtual {v4}, Lnd;->h()V

    new-instance v3, Lzk$a;

    invoke-direct {v3}, Lzk$a;-><init>()V

    :goto_0
    iget-object v0, p0, Lzk;->a:Lzk$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzk;->a:Lzk$b;

    invoke-interface {v0}, Lzk$b;->isReadyToCleanNow()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lzk;->b:Lzo;

    invoke-virtual {v0}, Lzo;->j()Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lzk;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lzk;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-wide/16 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v7, p0, Lzk;->b:Lzo;

    invoke-virtual {v7, v0}, Lzo;->c(Lkw;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lzk;->f:Ljava/util/List;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lkw;->H()J

    move-result-wide v7

    add-long/2addr v1, v7

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lzk;->g:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lzk;->b:Lzo;

    invoke-static {v0}, Lzo;->d(Lkw;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Lkw;->H()J

    move-result-wide v7

    add-long v0, v1, v7

    :goto_2
    move-wide v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    const/16 v0, 0x6749

    invoke-virtual {v4, v0}, Lnd;->a(I)V

    iget-object v0, p0, Lzk;->a:Lzk$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzk;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzk;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lzk;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzk;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, v3, Lzk$a;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v3

    :goto_3
    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v3, Lzk$a;->b:I

    iput-wide v1, v3, Lzk$a;->c:J

    iput-object v5, v3, Lzk$a;->a:Ljava/util/List;

    iget-object v0, p0, Lzk;->b:Lzo;

    invoke-virtual {v0, v5}, Lzo;->a(Ljava/util/List;)V

    iget-object v0, p0, Lzk;->a:Lzk$b;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzk;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lzk;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lzk;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_4
    move-object v0, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lzk;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_7
    move-wide v0, v1

    goto :goto_2
.end method

.method final a()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    iget-object v2, p0, Lzk;->e:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    iget-object v3, p0, Lzk;->f:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->closeProcess(Ljava/util/List;ZZ)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lzk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v2, p0, Lzk;->i:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzk;->a:Lzk$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzk;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzk;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    iget-object v0, p0, Lzk;->c:Lvh;

    invoke-virtual {v0}, Lvh;->b()V

    iget-object v0, p0, Lzk;->c:Lvh;

    invoke-virtual {v0}, Lvh;->h()V

    return-void
.end method
