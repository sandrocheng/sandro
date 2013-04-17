.class public final Lbud;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;)V
    .locals 0

    iput-object p1, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->a:[B

    monitor-enter v1

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->g:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->getAllContact()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v3, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->a:[B

    monitor-enter v3

    :try_start_1
    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    iput-object v4, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->b:[Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v1, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v1, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->b:[Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    array-length v4, v1

    if-le v4, v7, :cond_3

    new-instance v4, Lbug;

    invoke-direct {v4}, Lbug;-><init>()V

    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_3
    iput-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->b:[Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->a:[B

    monitor-enter v1

    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->d:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget v0, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iput v2, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->e:I

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iget-object v5, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-static {v5}, La;->k(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-static {v0}, La;->k(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;-><init>(B)V

    iput v0, v5, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;->a:I

    iget-object v0, p0, Lbud;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v6, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->b:[Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    add-int/lit8 v0, v1, 0x1

    aput-object v5, v6, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v1, v0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method
