.class final Lpz;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lpx;


# direct methods
.method constructor <init>(Lpx;)V
    .locals 0

    iput-object p1, p0, Lpz;->a:Lpx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->g(Lpx;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->g(Lpx;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lpz;->a:Lpx;

    invoke-static {v2}, Lpx;->h(Lpx;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lpz;->a:Lpx;

    invoke-static {v2}, Lpx;->g(Lpx;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v2, Lqa;

    invoke-direct {v2, p0, v0}, Lqa;-><init>(Lpz;Ljava/lang/String;)V

    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->k(Lpx;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->l(Lpx;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CameraMonitorService end encrypFile FAIL: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->g(Lpx;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->g(Lpx;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->g(Lpx;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmc;

    iget-object v1, v0, Lmc;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_2

    iget-object v1, p0, Lpz;->a:Lpx;

    invoke-static {v1, v0}, Lpx;->a(Lpx;Lmc;)V

    monitor-exit v2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lpz;->a:Lpx;

    invoke-static {v1}, Lpx;->l(Lpx;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "FINISH: remove item "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lmc;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " after trying 2 times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->g(Lpx;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->g(Lpx;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit v2

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lpz;->a:Lpx;

    invoke-static {v0}, Lpx;->g(Lpx;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmc;

    iget-object v1, p0, Lpz;->a:Lpx;

    invoke-static {v1, v0}, Lpx;->a(Lpx;Lmc;)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
