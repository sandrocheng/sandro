.class public Lcom/tencent/qqpimsecure/service/OperatorDataSyncTaskReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {p1}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    new-instance v1, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Liu;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Liy;->a:Landroid/content/SharedPreferences;

    const-string v2, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v3

    invoke-virtual {v3}, Lnp;->f()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lwr;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lxa;

    invoke-direct {v2, v0}, Lxa;-><init>(Lwr;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
