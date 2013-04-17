.class final Lbmw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbmp;


# direct methods
.method constructor <init>(Lbmp;)V
    .locals 0

    iput-object p1, p0, Lbmw;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbmw;->a:Lbmp;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lbmp;->a(Lbmp;I)I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->i(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    const v4, 0x7f0b0915

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lbmw;->a:Lbmp;

    invoke-static {v4}, Lbmp;->j(Lbmp;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->k(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->l(Lbmp;)Labe;

    move-result-object v0

    iget-object v0, v0, Labe;->c:Ljt;

    invoke-virtual {v0, v2}, Ljt;->a(I)Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->l(Lbmp;)Labe;

    move-result-object v0

    invoke-virtual {v0, v6}, Labe;->e(Ljava/util/List;)V

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Lbmp;->b(Lbmp;I)I

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->m(Lbmp;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lbmw;->a:Lbmp;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lbmp;->a(Lbmp;I)I

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->ca()J

    move-result-wide v7

    sub-long/2addr v4, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    const-wide/32 v7, 0x13c680

    cmp-long v0, v4, v7

    if-gez v0, :cond_4

    move v4, v3

    :goto_2
    const/4 v0, 0x0

    iget-object v5, p0, Lbmw;->a:Lbmp;

    invoke-static {v5}, Lbmp;->n(Lbmp;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v4, :cond_d

    iget-object v5, p0, Lbmw;->a:Lbmp;

    invoke-static {v5}, Lbmp;->m(Lbmp;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->l(Lbmp;)Labe;

    move-result-object v0

    iget-object v0, v0, Labe;->c:Ljt;

    invoke-virtual {v0, v3}, Ljt;->a(I)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lbmw;->a:Lbmp;

    invoke-static {v5}, Lbmp;->l(Lbmp;)Labe;

    move-result-object v5

    invoke-virtual {v5, v0}, Labe;->e(Ljava/util/List;)V

    iget-object v5, p0, Lbmw;->a:Lbmp;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v5, v7}, Lbmp;->c(Lbmp;I)I

    move-object v5, v0

    :goto_3
    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->m(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->l(Lbmp;)Labe;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v6, p0, Lbmw;->a:Lbmp;

    invoke-static {v6}, Lbmp;->m(Lbmp;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lbmw;->a:Lbmp;

    invoke-static {v6}, Lbmp;->l(Lbmp;)Labe;

    move-result-object v6

    iget-object v6, v6, Labe;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, LQQPIM/SoftListType;->BLACKLIST_WITHPLUGIN:LQQPIM/SoftListType;

    invoke-virtual {v6, v8, v9}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v10}, Lkw;->h(I)V

    move v6, v3

    :goto_5
    if-nez v6, :cond_3

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.qq.AppService"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lbmw;->a:Lbmp;

    invoke-virtual {v6, v0}, Lbmp;->a(Lkw;)Z

    :cond_3
    const-wide/16 v8, 0xa

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    iget-object v6, p0, Lbmw;->a:Lbmp;

    invoke-static {v6}, Lbmp;->o(Lbmp;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    iput v3, v6, Landroid/os/Message;->what:I

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->p(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_4
    move v4, v2

    goto/16 :goto_2

    :cond_5
    move v6, v2

    goto :goto_5

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->n(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->m(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->q(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    const v4, 0x7f0b0913

    iput v4, v0, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lbmw;->a:Lbmp;

    invoke-static {v4}, Lbmp;->r(Lbmp;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v5, p0, Lbmw;->a:Lbmp;

    invoke-static {v5}, Lbmp;->m(Lbmp;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lbmw;->a:Lbmp;

    invoke-static {v5}, Lbmp;->l(Lbmp;)Labe;

    move-result-object v5

    iget-object v5, v5, Labe;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, LQQPIM/SoftListType;->BLACKLIST_ROM:LQQPIM/SoftListType;

    invoke-virtual {v5, v6, v7}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lkw;->h(I)V

    :cond_7
    const-wide/16 v5, 0xa

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_8
    iget-object v5, p0, Lbmw;->a:Lbmp;

    invoke-static {v5}, Lbmp;->s(Lbmp;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    iput v3, v5, Landroid/os/Message;->what:I

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->t(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->m(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_c

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->u(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    const v1, 0x7f0b0914

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lbmw;->a:Lbmp;

    invoke-static {v1}, Lbmp;->v(Lbmp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_2
    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->w(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lbmw;->a:Lbmp;

    invoke-static {v1}, Lbmp;->x(Lbmp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lbmx;

    invoke-direct {v2, v1}, Lbmx;-><init>(Ljava/util/List;)V

    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->m(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_a
    :try_start_3
    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->m(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lbmp;->d(Lbmp;I)I

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->y(Lbmp;)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->m(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->z(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lbmw;->a:Lbmp;

    invoke-static {v1}, Lbmp;->A(Lbmp;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->B(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lbmw;->a:Lbmp;

    invoke-static {v2}, Lbmp;->m(Lbmp;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbmw;->a:Lbmp;

    invoke-static {v2, v0}, Lbmp;->a(Lbmp;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :cond_c
    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->m(Lbmp;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmw;->a:Lbmp;

    invoke-static {v0}, Lbmp;->C(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_d
    move-object v5, v0

    goto/16 :goto_3
.end method
