.class public Lcom/google/a/a/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/a/a/bb;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static m:Lcom/google/a/a/a/q;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/a/a/a/h;

.field private volatile d:Lcom/google/a/a/a/j;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/google/a/a/a/i;

.field private j:Landroid/os/Handler;

.field private k:Lcom/google/a/a/a/p;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/a/a/a/q;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/a/a/a/q;->e:I

    iput-boolean v1, p0, Lcom/google/a/a/a/q;->f:Z

    iput-boolean v1, p0, Lcom/google/a/a/a/q;->g:Z

    iput-boolean v1, p0, Lcom/google/a/a/a/q;->h:Z

    new-instance v0, Lcom/google/a/a/a/r;

    invoke-direct {v0, p0}, Lcom/google/a/a/a/r;-><init>(Lcom/google/a/a/a/q;)V

    iput-object v0, p0, Lcom/google/a/a/a/q;->i:Lcom/google/a/a/a/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/a/a/a/q;->l:Z

    return-void
.end method

.method public static a()Lcom/google/a/a/a/q;
    .locals 1

    sget-object v0, Lcom/google/a/a/a/q;->m:Lcom/google/a/a/a/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/a/a/q;

    invoke-direct {v0}, Lcom/google/a/a/a/q;-><init>()V

    sput-object v0, Lcom/google/a/a/a/q;->m:Lcom/google/a/a/a/q;

    :cond_0
    sget-object v0, Lcom/google/a/a/a/q;->m:Lcom/google/a/a/a/q;

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/a/a/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/q;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/google/a/a/a/q;)I
    .locals 1

    iget v0, p0, Lcom/google/a/a/a/q;->e:I

    return v0
.end method

.method static synthetic c(Lcom/google/a/a/a/q;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/a/a/q;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/google/a/a/a/q;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/a/a/a/q;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private e()V
    .locals 3

    new-instance v0, Lcom/google/a/a/a/p;

    invoke-direct {v0, p0}, Lcom/google/a/a/a/p;-><init>(Lcom/google/a/a/a/bb;)V

    iput-object v0, p0, Lcom/google/a/a/a/q;->k:Lcom/google/a/a/a/p;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/a/a/a/q;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/a/a/a/q;->k:Lcom/google/a/a/a/p;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/a/a/a/q;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/a/a/a/s;

    invoke-direct {v2, p0}, Lcom/google/a/a/a/s;-><init>(Lcom/google/a/a/a/q;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    iget v0, p0, Lcom/google/a/a/a/q;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/a/a/a/q;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/a/a/a/q;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "Need to call initialize() and be in fallback mode to start dispatch."

    invoke-static {v0}, Lcom/google/a/a/a/aq;->h(Ljava/lang/String;)I

    iput p1, p0, Lcom/google/a/a/a/q;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ai;->T:Lcom/google/a/a/a/ai;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    iget-boolean v0, p0, Lcom/google/a/a/a/q;->l:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/a/a/a/q;->g:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/a/a/a/q;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/a/a/q;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/google/a/a/a/q;->e:I

    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/a/a/a/q;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/a/a/a/q;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/a/a/a/q;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/google/a/a/a/j;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/q;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/q;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/a/a/a/q;->d:Lcom/google/a/a/a/j;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/a/a/a/q;->d:Lcom/google/a/a/a/j;

    iget-boolean v0, p0, Lcom/google/a/a/a/q;->f:Z

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/google/a/a/a/j;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/a/a/a/q;->l:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/a/a/a/q;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/a/a/a/q;->l:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/a/a/a/q;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/a/a/a/q;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/a/a/q;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/a/a/a/q;->e:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/a/a/a/q;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/a/a/a/q;->e:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/a/aq;->e(Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/google/a/a/a/q;->l:Z

    iput-boolean p2, p0, Lcom/google/a/a/a/q;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized b()Lcom/google/a/a/a/h;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/q;->c:Lcom/google/a/a/a/h;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/a/a/a/q;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/a/a/a/ax;

    iget-object v1, p0, Lcom/google/a/a/a/q;->i:Lcom/google/a/a/a/i;

    iget-object v2, p0, Lcom/google/a/a/a/q;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/a/ax;-><init>(Lcom/google/a/a/a/i;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/a/a/a/q;->c:Lcom/google/a/a/a/h;

    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/q;->j:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/a/a/a/q;->f()V

    :cond_2
    iget-object v0, p0, Lcom/google/a/a/a/q;->k:Lcom/google/a/a/a/p;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/a/a/a/q;->h:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/a/a/a/q;->e()V

    :cond_3
    iget-object v0, p0, Lcom/google/a/a/a/q;->c:Lcom/google/a/a/a/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/a/a/a/q;->d:Lcom/google/a/a/a/j;

    if-nez v0, :cond_0

    const-string v0, "dispatch call queued.  Need to call GAServiceManager.getInstance().initialize()."

    invoke-static {v0}, Lcom/google/a/a/a/aq;->h(Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/a/a/q;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/a/a/a/ah;->a()Lcom/google/a/a/a/ah;

    move-result-object v0

    sget-object v1, Lcom/google/a/a/a/ai;->S:Lcom/google/a/a/a/ai;

    invoke-virtual {v0, v1}, Lcom/google/a/a/a/ah;->a(Lcom/google/a/a/a/ai;)V

    iget-object v0, p0, Lcom/google/a/a/a/q;->d:Lcom/google/a/a/a/j;

    invoke-interface {v0}, Lcom/google/a/a/a/j;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
