.class final Lblp;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lblh;


# direct methods
.method constructor <init>(Lblh;)V
    .locals 0

    iput-object p1, p0, Lblp;->a:Lblh;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lblp;->a:Lblh;

    invoke-static {v1}, Lblh;->j(Lblh;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lblp;->a:Lblh;

    invoke-static {v1}, Lblh;->k(Lblh;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lblp;->a:Lblh;

    iget-object v3, p0, Lblp;->a:Lblh;

    invoke-static {v3}, Lblh;->c(Lblh;)Labe;

    move-result-object v3

    invoke-virtual {v3, v0}, Labe;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lblh;->a(Lblh;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lblp;->a:Lblh;

    invoke-static {v0}, Lblh;->l(Lblh;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
