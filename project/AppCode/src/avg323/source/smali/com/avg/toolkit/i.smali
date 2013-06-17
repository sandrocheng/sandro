.class public Lcom/avg/toolkit/i;
.super Lcom/avg/toolkit/f;


# direct methods
.method private c(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v0, "__SAH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "__SAH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/avg/toolkit/i;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/avg/toolkit/i;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e;

    invoke-interface {v0, v2}, Lcom/avg/toolkit/e;->b(Lcom/avg/toolkit/e/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    new-instance v0, Lcom/avg/toolkit/UID/a;

    invoke-direct {v0, p0}, Lcom/avg/toolkit/UID/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avg/toolkit/i;->i:Lcom/avg/toolkit/UID/a;

    iget-object v0, p0, Lcom/avg/toolkit/i;->i:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/UID/a;->c()V

    iget-object v0, p0, Lcom/avg/toolkit/i;->i:Lcom/avg/toolkit/UID/a;

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/i;->a(Lcom/avg/toolkit/e;)V

    const-string v0, "res/raw/vendor.png"

    invoke-static {v0}, Lcom/avg/toolkit/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v0

    const-string v1, "res/raw/vendor_footer.png"

    invoke-static {v1}, Lcom/avg/toolkit/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v1

    new-instance v2, Lcom/avg/toolkit/e/e;

    invoke-direct {v2, p0, v0, v1}, Lcom/avg/toolkit/e/e;-><init>(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    iput-object v2, p0, Lcom/avg/toolkit/i;->h:Lcom/avg/toolkit/e/e;

    iget-object v0, p0, Lcom/avg/toolkit/i;->h:Lcom/avg/toolkit/e/e;

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/i;->a(Lcom/avg/toolkit/e;)V

    iget-object v0, p0, Lcom/avg/toolkit/i;->h:Lcom/avg/toolkit/e/e;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/e;->c()Z

    iget-object v0, p0, Lcom/avg/toolkit/i;->h:Lcom/avg/toolkit/e/e;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/e;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avg/toolkit/i;->d:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ITKSvc"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/toolkit/i;->f:Landroid/os/Looper;

    new-instance v0, Lcom/avg/toolkit/j;

    iget-object v1, p0, Lcom/avg/toolkit/i;->f:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/avg/toolkit/j;-><init>(Lcom/avg/toolkit/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avg/toolkit/i;->e:Landroid/os/Handler;

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/toolkit/i;->d:Z

    iget-object v0, p0, Lcom/avg/toolkit/i;->h:Lcom/avg/toolkit/e/e;

    invoke-virtual {v0}, Lcom/avg/toolkit/e/e;->e()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/avg/toolkit/i;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/i;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e;

    invoke-interface {v0, p1}, Lcom/avg/toolkit/e;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a_()V
    .locals 4

    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v1

    const-string v0, "res/raw/conf.properties"

    invoke-static {v0}, Lcom/avg/toolkit/a;->a(Ljava/lang/String;)Ljava/util/concurrent/Callable;

    move-result-object v0

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/avg/toolkit/a/a;

    iget-object v3, p0, Lcom/avg/toolkit/i;->i:Lcom/avg/toolkit/UID/a;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/avg/toolkit/a/a;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Ljava/util/Properties;Lcom/avg/toolkit/UID/a;)V

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/i;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/avg/toolkit/Marketing/a;

    invoke-direct {v0, p0, v1}, Lcom/avg/toolkit/Marketing/a;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;)V

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/i;->a(Lcom/avg/toolkit/e;)V

    new-instance v0, Lcom/avg/toolkit/c/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/avg/toolkit/c/a;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Ljava/util/Properties;)V

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/i;->a(Lcom/avg/toolkit/e;)V

    iget-boolean v0, p0, Lcom/avg/toolkit/i;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/i;->a(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a_(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "__SAC2"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/avg/toolkit/i;->a_()V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avg/toolkit/i;->a(Z)V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/avg/toolkit/i;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/avg/toolkit/i;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/avg/toolkit/i;->c(Landroid/os/Bundle;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
