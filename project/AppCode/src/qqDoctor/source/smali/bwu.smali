.class abstract Lbwu;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;",
        ">",
        "Landroid/os/Binder;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:B

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao",
            "<TT;>;"
        }
    .end annotation
.end field

.field private i:[B


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x3

    iput-byte v0, p0, Lbwu;->f:B

    new-instance v0, Ljava/util/ArrayList;

    iget-byte v1, p0, Lbwu;->f:B

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbwu;->g:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lbwu;->i:[B

    return-void
.end method

.method private declared-synchronized a()V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_0
    :goto_1
    iget-object v0, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-byte v1, p0, Lbwu;->f:B

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_a

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lbwu;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lbwu;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    iget-boolean v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    if-nez v2, :cond_7

    iget v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_7
    iget v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_8

    :try_start_3
    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_a
    :try_start_4
    iget-object v0, p0, Lbwu;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Lbwu;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lbwu;->a(Ljava/util/List;)V

    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    move v2, v1

    :goto_0
    iget-object v0, p0, Lbwu;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwu;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lbwu;->g:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v1, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onWaiting(Ljava/util/List;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onWaiting(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->update(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    if-eqz v1, :cond_5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onRunning(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_3

    :pswitch_2
    if-eqz v2, :cond_7

    iget-object v0, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {v0, p1, v1}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->update(Ljava/util/List;I)Z

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    if-eqz v1, :cond_6

    if-eqz v2, :cond_8

    invoke-virtual {v1, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onPaused(Ljava/util/List;)V

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->update(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)Z

    goto :goto_4

    :cond_8
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onPaused(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_5

    :pswitch_3
    iget-object v1, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->update(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)Z

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {p0, v0}, Lbwu;->doFinish(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lbwu;->a()V

    goto/16 :goto_1

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    if-eqz v1, :cond_9

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onFinished(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_6

    :pswitch_4
    iget-object v1, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->update(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lbwu;->a()V

    goto/16 :goto_1

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    if-eqz v1, :cond_b

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onFailed(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_7

    :pswitch_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    if-eqz v1, :cond_d

    if-eqz v2, :cond_e

    invoke-virtual {v1, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onDeleted(Ljava/util/List;)V

    goto :goto_8

    :cond_e
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onDeleted(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_8

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method final a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lbwu;->a(Ljava/util/List;)V

    return-void
.end method

.method final b(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->update(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lbwu;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwu;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v2, -0x1b90

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "breakable download IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " update db exception"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbwu;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;->onProgressChanged(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_0
.end method

.method public final clearData()V
    .locals 1

    iget-object v0, p0, Lbwu;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lbwu;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lbwu;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lbwu;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbwu;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lbwu;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method public final continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lbwu;->i:[B

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lbwu;->continueTask(Ljava/util/List;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final continueTask(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v5, -0x1

    iget-object v1, p0, Lbwu;->i:[B

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lbwu;->a()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0, v2}, Lbwu;->a(Ljava/util/List;)V

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {p0, v0}, Lbwu;->doBeforeContinue(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v3, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object v3, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, -0x1

    iput v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    iput v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    iput v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    goto :goto_1

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public final deleteTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lbwu;->i:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->delete(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)Z

    iget-object v0, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbwu;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x4

    iput v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lbwu;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lbwu;->a()V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lbwu;->doDeleteFile(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final deleteTask(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lbwu;->i:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->delete(Ljava/util/List;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lbwu;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lbwu;->a()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lbwu;->doDeleteFile(Ljava/util/List;)V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v3, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lbwu;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x0

    iput v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    const/4 v3, 0x4

    iput v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract doBeforeContinue(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract doBeforeStart(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected doDeleteFile(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected doDeleteFile(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected doFinish(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract doPause(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public getAllTasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbwu;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbwu;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getFailedTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbwu;->d:Ljava/util/List;

    return-object v0
.end method

.method public getFinishedTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbwu;->e:Ljava/util/List;

    return-object v0
.end method

.method public getPausedTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbwu;->c:Ljava/util/List;

    return-object v0
.end method

.method public getRunningTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbwu;->a:Ljava/util/List;

    return-object v0
.end method

.method public getWaitingTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbwu;->b:Ljava/util/List;

    return-object v0
.end method

.method public final pauseTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lbwu;->i:[B

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lbwu;->pauseTask(Ljava/util/List;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final pauseTask(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lbwu;->i:[B

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lbwu;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lbwu;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {p0, v0}, Lbwu;->doPause(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v3, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isWaitingToPaused:Z

    :goto_2
    iget-object v3, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, 0x1

    iput v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isWaitingToPaused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lbwu;->g:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public setNetworkLoadTaskDao(Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbwu;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbwu;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbwu;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbwu;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbwu;->d:Ljava/util/List;

    iget-object v0, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->getAll()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x1

    iput v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v2, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lbwu;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lbwu;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setRunningTaskCountLimit(B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-byte p1, p0, Lbwu;->f:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lbwu;->i:[B

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lbwu;->startTask(Ljava/util/List;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final startTask(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v5, -0x1

    iget-object v1, p0, Lbwu;->i:[B

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->delete(Ljava/util/List;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lbwu;->a()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, v2}, Lbwu;->a(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lbwu;->h:Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;->insert(Ljava/util/List;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {p0, v0}, Lbwu;->doBeforeStart(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v3, p0, Lbwu;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lbwu;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object v3, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lbwu;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    iput v3, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    goto :goto_1

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lbwu;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public unregistListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lbwu;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lbwu;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object v1, p0, Lbwu;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
