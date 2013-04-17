.class public final Lbs;
.super Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const-class v2, Lcom/tencent/powermanager/service/BatteryEventReceiver;

    monitor-enter v2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/service/BatteryEventReceiver$a;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/tencent/powermanager/service/BatteryEventReceiver$a;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b()Ljava/util/List;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/powermanager/service/BatteryEventReceiver$a;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
