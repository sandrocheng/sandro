.class final Lwk;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lwh;


# direct methods
.method constructor <init>(Lwh;)V
    .locals 0

    iput-object p1, p0, Lwk;->a:Lwh;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v0, v0, Lwh;->b:Landroid/content/Context;

    invoke-static {v0}, La;->g(Landroid/content/Context;)Lfl;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^^ net change, now "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " old "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lwk;->a:Lwh;

    iget-object v2, v2, Lwh;->f:Lfl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v0, v0, Lwh;->f:Lfl;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v0, v0, Lwh;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lwk;->a:Lwh;

    iget-object v2, v2, Lwh;->f:Lfl;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/STNetLocal;

    if-eqz v0, :cond_0

    iget-object v0, v0, LQQPIM/STNetLocal;->vecData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v2, v0, Lwh;->e:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v0, v0, Lwh;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lwk;->a:Lwh;

    iget-object v3, v3, Lwh;->f:Lfl;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v2, v0, Lwh;->d:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v0, v0, Lwh;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    iget-object v0, p0, Lwk;->a:Lwh;

    iput-object v1, v0, Lwh;->f:Lfl;

    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v0, v0, Lwh;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lwk;->a:Lwh;

    iget-object v1, v1, Lwh;->f:Lfl;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v1, p0, Lwk;->a:Lwh;

    iget-object v1, p0, Lwk;->a:Lwh;

    iget-object v1, v1, Lwh;->f:Lfl;

    invoke-static {v1}, Lwh;->a(Lfl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lwh;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v1, p0, Lwk;->a:Lwh;

    iget-object v1, v1, Lwh;->f:Lfl;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lwl;

    invoke-direct {v3, v0, v1}, Lwl;-><init>(Lwh;Lfl;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    iget-object v0, p0, Lwk;->a:Lwh;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lwm;

    invoke-direct {v2, v0}, Lwm;-><init>(Lwh;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lwk;->a:Lwh;

    invoke-static {v0}, Lwh;->a(Lwh;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lwk;->a:Lwh;

    iget-object v0, v0, Lwh;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
