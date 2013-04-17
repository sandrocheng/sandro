.class public abstract Lcom/tencent/tmsecure/common/BaseService;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized getBinder()Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/common/BaseService;->a:Landroid/os/IBinder;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/tmsecure/common/BaseService;->onBind()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/common/BaseService;->a:Landroid/os/IBinder;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/common/BaseService;->a:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onBind()Landroid/os/IBinder;
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onDestory()V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected final stopSelf()V
    .locals 0

    invoke-static {p0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Lcom/tencent/tmsecure/common/BaseService;)Z

    return-void
.end method
