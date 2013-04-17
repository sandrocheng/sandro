.class final Luu;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Luo;


# direct methods
.method constructor <init>(Luo;)V
    .locals 0

    iput-object p1, p0, Luu;->a:Luo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Luu;->getResultCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Luu;->a:Luo;

    invoke-static {v0}, Luo;->b(Luo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Luu;->a:Luo;

    invoke-static {v0}, Luo;->c(Luo;)V

    :cond_0
    iget-object v0, p0, Luu;->a:Luo;

    invoke-static {v0}, Luo;->d(Luo;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
