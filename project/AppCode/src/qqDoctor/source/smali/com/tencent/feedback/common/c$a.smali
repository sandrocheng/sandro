.class final Lcom/tencent/feedback/common/c$a;
.super Lcom/tencent/feedback/common/c;
.source "AsyncTaskHandlerAbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/common/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Landroid/util/SparseArray;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/tencent/feedback/common/c;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/tencent/feedback/common/c$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    iput-object v0, p0, Lcom/tencent/feedback/common/c$a;->c:Landroid/util/SparseArray;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/feedback/common/c$a;->d:Z

    .line 62
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/common/c$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/common/c$a;->c:Landroid/util/SparseArray;

    .line 64
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/Runnable;JJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x2710

    const-wide/16 v2, 0x0

    .line 87
    monitor-enter p0

    if-nez p2, :cond_1

    .line 94
    :try_start_0
    const-string v0, "task runner should not be null"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    cmp-long v4, p3, v2

    if-lez v4, :cond_2

    move-wide v2, p3

    .line 98
    :cond_2
    :try_start_1
    sget-boolean v4, Lcom/tencent/feedback/common/c$a;->a:Z

    if-eqz v4, :cond_4

    .line 99
    cmp-long v4, p5, v0

    if-lez v4, :cond_3

    :goto_1
    move-wide v4, p5

    .line 101
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/feedback/common/c$a;->a(IZ)V

    .line 103
    iget-object v0, p0, Lcom/tencent/feedback/common/c$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 106
    const-string v1, "add a new future!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/tencent/feedback/common/c$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide p5, v0

    .line 99
    goto :goto_1

    :cond_4
    move-wide v4, p5

    goto :goto_2
.end method

.method public final declared-synchronized a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 122
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string v1, "cancel a old future!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/common/c$a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    monitor-enter p0

    if-nez p1, :cond_0

    .line 76
    :try_start_0
    const-string v0, "task runner should not be null"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/common/c$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x1388

    const-wide/16 v2, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 158
    const-string v0, "task runner should not be null"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/tencent/feedback/common/c$a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p1, v0, v1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 162
    goto :goto_1
.end method
