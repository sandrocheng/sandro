.class public Lcom/tencent/lbsapi/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private b:Lcom/tencent/lbsapi/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/lbsapi/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/lbsapi/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/lbsapi/a/a;->b:Lcom/tencent/lbsapi/a/b;

    iput-object p1, p0, Lcom/tencent/lbsapi/a/a;->b:Lcom/tencent/lbsapi/a/b;

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/lbsapi/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/4 v2, 0x6

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0xc

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/tencent/lbsapi/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    sget-object v0, Lcom/tencent/lbsapi/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;[B)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/lbsapi/a/c;

    invoke-direct {v1}, Lcom/tencent/lbsapi/a/c;-><init>()V

    invoke-virtual {v1, p4}, Lcom/tencent/lbsapi/a/c;->a([B)V

    invoke-virtual {v1, p2}, Lcom/tencent/lbsapi/a/c;->a(I)V

    iget-object v2, p0, Lcom/tencent/lbsapi/a/a;->b:Lcom/tencent/lbsapi/a/b;

    invoke-virtual {v1, v2}, Lcom/tencent/lbsapi/a/c;->a(Lcom/tencent/lbsapi/a/b;)V

    invoke-virtual {v1, p3}, Lcom/tencent/lbsapi/a/c;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/tencent/lbsapi/a/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/lbsapi/a/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/tencent/lbsapi/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/lbsapi/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/lbsapi/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;
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
