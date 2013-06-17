.class Lcom/google/a/a/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/a/a/bc;
.implements Lcom/google/a/a/a/f;
.implements Lcom/google/a/a/a/g;


# instance fields
.field private volatile a:J

.field private volatile b:Lcom/google/a/a/a/x;

.field private volatile c:Lcom/google/a/a/a/c;

.field private d:Lcom/google/a/a/a/h;

.field private e:Lcom/google/a/a/a/h;

.field private final f:Lcom/google/a/a/a/j;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/util/Queue;

.field private volatile i:I

.field private volatile j:Ljava/util/Timer;

.field private volatile k:Ljava/util/Timer;

.field private volatile l:Ljava/util/Timer;

.field private m:Z

.field private n:Z

.field private o:Lcom/google/a/a/a/l;

.field private p:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/a/a/a/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/a/a/a/t;-><init>(Landroid/content/Context;Lcom/google/a/a/a/j;Lcom/google/a/a/a/h;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/a/a/a/j;Lcom/google/a/a/a/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/a/a/a/t;->p:J

    iput-object p3, p0, Lcom/google/a/a/a/t;->e:Lcom/google/a/a/a/h;

    iput-object p1, p0, Lcom/google/a/a/a/t;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/a/a/a/t;->f:Lcom/google/a/a/a/j;

    new-instance v0, Lcom/google/a/a/a/u;

    invoke-direct {v0, p0}, Lcom/google/a/a/a/u;-><init>(Lcom/google/a/a/a/t;)V

    iput-object v0, p0, Lcom/google/a/a/a/t;->o:Lcom/google/a/a/a/l;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/a/t;->i:I

    sget-object v0, Lcom/google/a/a/a/x;->g:Lcom/google/a/a/a/x;

    iput-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    return-void
.end method

.method private a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/a/a/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/a/a/t;->g()V

    return-void
.end method

.method static synthetic b(Lcom/google/a/a/a/t;)Lcom/google/a/a/a/x;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    return-object v0
.end method

.method static synthetic c(Lcom/google/a/a/a/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/a/a/t;->i()V

    return-void
.end method

.method static synthetic d(Lcom/google/a/a/a/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/a/a/t;->j()V

    return-void
.end method

.method static synthetic e(Lcom/google/a/a/a/t;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f(Lcom/google/a/a/a/t;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/t;->a:J

    return-wide v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/t;->j:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/a/a/a/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/t;->j:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/a/a/a/t;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/a/a/a/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/t;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/a/a/a/t;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/a/a/a/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/t;->l:Ljava/util/Timer;

    return-void
.end method

.method static synthetic g(Lcom/google/a/a/a/t;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/t;->p:J

    return-wide v0
.end method

.method private declared-synchronized g()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/a/t;->f:Lcom/google/a/a/a/j;

    invoke-interface {v2}, Lcom/google/a/a/a/j;->c()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/a/a/a/t;->f:Lcom/google/a/a/a/j;

    invoke-interface {v1}, Lcom/google/a/a/a/j;->b()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    new-instance v2, Lcom/google/a/a/a/v;

    invoke-direct {v2, p0}, Lcom/google/a/a/a/v;-><init>(Lcom/google/a/a/a/t;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/google/a/a/a/t;->n:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/a/a/a/t;->d()V

    :cond_2
    sget-object v1, Lcom/google/a/a/a/w;->a:[I

    iget-object v2, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    invoke-virtual {v2}, Lcom/google/a/a/a/x;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/a/a/a/aa;

    move-object v6, v0

    const-string v1, "Sending hit to store"

    invoke-static {v1}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/a/a/a/t;->d:Lcom/google/a/a/a/h;

    invoke-virtual {v6}, Lcom/google/a/a/a/aa;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/a/a/a/aa;->b()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/a/a/a/aa;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/a/a/a/aa;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/a/a/a/h;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_2
    iget-boolean v1, p0, Lcom/google/a/a/a/t;->m:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/a/a/a/t;->h()V

    goto :goto_0

    :goto_2
    :pswitch_1
    iget-object v1, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/a/a/a/aa;

    move-object v6, v0

    const-string v1, "Sending hit to service"

    invoke-static {v1}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/a/a/a/t;->c:Lcom/google/a/a/a/c;

    invoke-virtual {v6}, Lcom/google/a/a/a/aa;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/a/a/a/aa;->b()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/google/a/a/a/aa;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/a/a/a/aa;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/google/a/a/a/c;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/a/a/a/t;->o:Lcom/google/a/a/a/l;

    invoke-interface {v1}, Lcom/google/a/a/a/l;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/a/a/a/t;->a:J

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "Need to reconnect"

    invoke-static {v1}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/a/a/a/t;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic h(Lcom/google/a/a/a/t;)Lcom/google/a/a/a/l;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/t;->o:Lcom/google/a/a/a/l;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/t;->d:Lcom/google/a/a/a/h;

    invoke-interface {v0}, Lcom/google/a/a/a/h;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/a/a/a/t;->m:Z

    return-void
.end method

.method private declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    sget-object v1, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/a/a/a/t;->f()V

    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/a/a/a/t;->e:Lcom/google/a/a/a/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/t;->e:Lcom/google/a/a/a/h;

    iput-object v0, p0, Lcom/google/a/a/a/t;->d:Lcom/google/a/a/a/h;

    :goto_1
    sget-object v0, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/x;

    iput-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    invoke-direct {p0}, Lcom/google/a/a/a/t;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/a/a/a/q;->a()Lcom/google/a/a/a/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/a/a/t;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/a/a/a/t;->f:Lcom/google/a/a/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/a/q;->a(Landroid/content/Context;Lcom/google/a/a/a/j;)V

    invoke-virtual {v0}, Lcom/google/a/a/a/q;->b()Lcom/google/a/a/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/t;->d:Lcom/google/a/a/a/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic i(Lcom/google/a/a/a/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/a/a/t;->k()V

    return-void
.end method

.method static synthetic j(Lcom/google/a/a/a/t;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/t;->l:Ljava/util/Timer;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/t;->c:Lcom/google/a/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    sget-object v1, Lcom/google/a/a/a/x;->c:Lcom/google/a/a/a/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :try_start_1
    iget v0, p0, Lcom/google/a/a/a/t;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/a/a/t;->i:I

    iget-object v0, p0, Lcom/google/a/a/a/t;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/a/a/a/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    sget-object v0, Lcom/google/a/a/a/x;->a:Lcom/google/a/a/a/x;

    iput-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/a/a/a/t;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/a/a/a/t;->k:Ljava/util/Timer;

    new-instance v1, Lcom/google/a/a/a/z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/a/a/a/z;-><init>(Lcom/google/a/a/a/t;Lcom/google/a/a/a/u;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/a/a/a/t;->c:Lcom/google/a/a/a/c;

    invoke-interface {v0}, Lcom/google/a/a/a/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->h(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/t;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/a/a/a/aq;->h(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/t;->i()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized k()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/t;->c:Lcom/google/a/a/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    sget-object v1, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/x;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/a/a/a/x;->f:Lcom/google/a/a/a/x;

    iput-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    iget-object v0, p0, Lcom/google/a/a/a/t;->c:Lcom/google/a/a/a/c;

    invoke-interface {v0}, Lcom/google/a/a/a/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/google/a/a/a/t;->j:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/a/a/a/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/t;->j:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/a/a/a/t;->j:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/a/a/a/t;->j:Ljava/util/Timer;

    new-instance v1, Lcom/google/a/a/a/ab;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/a/a/a/ab;-><init>(Lcom/google/a/a/a/t;Lcom/google/a/a/a/u;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/t;->k:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/a/a/a/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/t;->k:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/a/t;->i:I

    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    sget-object v0, Lcom/google/a/a/a/x;->b:Lcom/google/a/a/a/x;

    iput-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    invoke-direct {p0}, Lcom/google/a/a/a/t;->g()V

    iget-object v0, p0, Lcom/google/a/a/a/t;->l:Ljava/util/Timer;

    invoke-direct {p0, v0}, Lcom/google/a/a/a/t;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/t;->l:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/a/a/a/t;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/a/a/a/t;->l:Ljava/util/Timer;

    new-instance v1, Lcom/google/a/a/a/y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/a/a/a/y;-><init>(Lcom/google/a/a/a/t;Lcom/google/a/a/a/u;)V

    iget-wide v2, p0, Lcom/google/a/a/a/t;->p:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(ILandroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/a/a/a/x;->e:Lcom/google/a/a/a/x;

    iput-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    iget v0, p0, Lcom/google/a/a/a/t;->i:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/a/aq;->h(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/t;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service unavailable (code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/a/aq;->h(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/t;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 7

    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    iget-object v6, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    new-instance v0, Lcom/google/a/a/a/aa;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/a/a/a/aa;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/a/a/a/t;->g()V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    sget-object v1, Lcom/google/a/a/a/x;->f:Lcom/google/a/a/a/x;

    if-ne v0, v1, :cond_0

    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/a/a/a/t;->f()V

    sget-object v0, Lcom/google/a/a/a/x;->g:Lcom/google/a/a/a/x;

    iput-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    sget-object v0, Lcom/google/a/a/a/x;->e:Lcom/google/a/a/a/x;

    iput-object v0, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    iget v0, p0, Lcom/google/a/a/a/t;->i:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/a/a/a/t;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/a/a/a/t;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    sget-object v0, Lcom/google/a/a/a/w;->a:[I

    iget-object v1, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    invoke-virtual {v1}, Lcom/google/a/a/a/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/t;->m:Z

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/google/a/a/a/t;->h()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "clearHits called"

    invoke-static {v0}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/a/a/a/t;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    sget-object v0, Lcom/google/a/a/a/w;->a:[I

    iget-object v1, p0, Lcom/google/a/a/a/t;->b:Lcom/google/a/a/a/x;

    invoke-virtual {v1}, Lcom/google/a/a/a/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/t;->n:Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/a/a/a/t;->d:Lcom/google/a/a/a/h;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/a/a/a/h;->a(J)V

    iput-boolean v3, p0, Lcom/google/a/a/a/t;->n:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/t;->c:Lcom/google/a/a/a/c;

    invoke-interface {v0}, Lcom/google/a/a/a/c;->a()V

    iput-boolean v3, p0, Lcom/google/a/a/a/t;->n:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/a/a/a/t;->c:Lcom/google/a/a/a/c;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/a/a/a/d;

    iget-object v1, p0, Lcom/google/a/a/a/t;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/a/a/a/d;-><init>(Landroid/content/Context;Lcom/google/a/a/a/f;Lcom/google/a/a/a/g;)V

    iput-object v0, p0, Lcom/google/a/a/a/t;->c:Lcom/google/a/a/a/c;

    invoke-direct {p0}, Lcom/google/a/a/a/t;->j()V

    goto :goto_0
.end method
