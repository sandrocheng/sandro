.class final Lwi;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lwh;


# direct methods
.method constructor <init>(Lwh;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lwi;->a:Lwh;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lwi;->a:Lwh;

    iget-object v0, v0, Lwh;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwi;->a:Lwh;

    iget-object v1, v0, Lwh;->g:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lwi;->a:Lwh;

    iget-object v0, v0, Lwh;->b:Landroid/content/Context;

    iget-object v2, p0, Lwi;->a:Lwh;

    iget-object v2, v2, Lwh;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lwi;->a:Lwh;

    const/4 v2, 0x0

    iput-object v2, v0, Lwh;->g:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lwi;->a:Lwh;

    const/4 v2, 0x0

    iput-object v2, v0, Lwh;->f:Lfl;

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lwi;->a:Lwh;

    const/4 v2, 0x0

    iput-object v2, v0, Lwh;->g:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lwi;->a:Lwh;

    const/4 v2, 0x0

    iput-object v2, v0, Lwh;->f:Lfl;

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lwi;->a:Lwh;

    const/4 v3, 0x0

    iput-object v3, v2, Lwh;->g:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lwi;->a:Lwh;

    const/4 v3, 0x0

    iput-object v3, v2, Lwh;->f:Lfl;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
