.class final Lpv;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Landroid/content/pm/IPackageDataObserver;

.field private synthetic b:Lpt;


# direct methods
.method constructor <init>(Lpt;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0

    iput-object p1, p0, Lpv;->b:Lpt;

    iput-object p2, p0, Lpv;->a:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lpv;->b:Lpt;

    invoke-static {v0}, Lpt;->a(Lpt;)Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->clearAllCacheData()Z

    move-result v0

    :try_start_0
    iget-object v1, p0, Lpv;->a:Landroid/content/pm/IPackageDataObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lpv;->a:Landroid/content/pm/IPackageDataObserver;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lpv;->b:Lpt;

    invoke-static {v0}, Lpt;->b(Lpt;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
