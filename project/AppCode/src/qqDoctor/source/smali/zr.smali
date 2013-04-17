.class final Lzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lzq;


# direct methods
.method constructor <init>(Lzq;)V
    .locals 0

    iput-object p1, p0, Lzr;->a:Lzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lzr;->a:Lzq;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v3, Lki;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    new-instance v3, Ljp;

    const-string v4, "smslog"

    const-string v5, "mms_pdu"

    const-string v6, "mms_parts"

    invoke-direct {v3, v4, v5, v6}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v2, Lzq;->h:Z

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lki;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lzq;->d:Ljava/util/List;

    iget-boolean v0, v2, Lzq;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljp;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lzq;->e:Ljava/util/List;

    iget-boolean v0, v2, Lzq;->h:Z

    if-nez v0, :cond_1

    iget-object v0, v2, Lzq;->d:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, v2, Lzq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_0
    iget-object v3, v2, Lzq;->e:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lzq;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    iget-object v3, v2, Lzq;->g:Landroid/os/Handler;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lzq;->f:Z

    if-eqz v3, :cond_1

    iget-object v3, v2, Lzq;->g:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    iput v1, v3, Landroid/os/Message;->what:I

    iput v0, v3, Landroid/os/Message;->arg1:I

    iget-object v0, v2, Lzq;->g:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v0, p0, Lzr;->a:Lzq;

    iget-object v0, v0, Lzq;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p0, Lzr;->a:Lzq;

    iget-object v0, v0, Lzq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-boolean v0, v0, Lzq;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-object v4, p0, Lzr;->a:Lzq;

    iget-object v4, v4, Lzq;->e:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lzq;->a(Lzq;Ljava/util/List;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-wide v8, v0, Lzq;->i:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lzr;->a:Lzq;

    iget-wide v6, v0, Lzq;->i:J

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lzr;->a:Lzq;

    iput-object v10, v0, Lzq;->e:Ljava/util/List;

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-object v0, v0, Lzq;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lzr;->a:Lzq;

    iget-object v0, v0, Lzq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-boolean v0, v0, Lzq;->h:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-object v4, p0, Lzr;->a:Lzq;

    iget-object v4, v4, Lzq;->d:Ljava/util/List;

    invoke-static {v0, v4, v1}, Lzq;->a(Lzq;Ljava/util/List;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v2

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-wide v8, v0, Lzq;->i:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lzr;->a:Lzq;

    iget-wide v6, v0, Lzq;->i:J

    sub-long v2, v4, v2

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lzr;->a:Lzq;

    iput-object v10, v0, Lzq;->d:Ljava/util/List;

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-object v0, v0, Lzq;->g:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-boolean v0, v0, Lzq;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzr;->a:Lzq;

    iget-object v0, v0, Lzq;->g:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    iget-object v0, p0, Lzr;->a:Lzq;

    iget-object v2, v0, Lzq;->d:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lzq;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v10, v0, Lzq;->d:Ljava/util/List;

    :cond_7
    iget-object v2, v0, Lzq;->e:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lzq;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-object v10, v0, Lzq;->e:Ljava/util/List;

    :cond_8
    sput-object v10, Lzq;->c:Lzq;

    iget-object v0, p0, Lzr;->a:Lzq;

    iput-boolean v1, v0, Lzq;->f:Z

    iget-object v0, p0, Lzr;->a:Lzq;

    iput-boolean v1, v0, Lzq;->h:Z

    return-void

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method
