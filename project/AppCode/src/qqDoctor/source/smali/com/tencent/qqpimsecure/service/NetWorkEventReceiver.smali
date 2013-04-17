.class public Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "NetWorkEventReceiver"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-wide/16 v3, 0x3e8

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;->a:Ljava/lang/String;

    const-class v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    new-instance v1, Lwd;

    invoke-direct {v1}, Lwd;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->addTask(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_4

    const-class v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    new-instance v1, Lwd;

    invoke-direct {v1}, Lwd;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->addTask(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lho;->dq()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lho;->cY()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, La;->b(JJ)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lho;->aL()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, La;->b(JJ)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lwc;

    invoke-direct {v3, p1, v0, v1, v2}, Lwc;-><init>(Landroid/content/Context;Lho;J)V

    invoke-virtual {v3}, Lwc;->start()V

    :cond_3
    invoke-virtual {v0, v1, v2}, Lho;->z(J)V

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    goto :goto_0
.end method
