.class public Lcom/avast/android/generic/b/l;
.super Ljava/lang/Object;
.source "CommandReceiver.java"


# instance fields
.field private a:Lcom/avast/android/generic/service/AvastService;

.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private c:Ljava/util/LinkedList;

.field private d:Ljava/lang/Thread;

.field private e:Ljava/lang/Object;

.field private f:Landroid/os/Handler;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/service/AvastService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    .line 30
    iput-object v1, p0, Lcom/avast/android/generic/b/l;->d:Ljava/lang/Thread;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/b/l;->e:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lcom/avast/android/generic/b/l;->f:Landroid/os/Handler;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/b/l;->g:Z

    .line 37
    iput-object p1, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    .line 39
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/avast/android/generic/b/m;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/b/m;-><init>(Lcom/avast/android/generic/b/l;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/avast/android/generic/b/l;->d:Ljava/lang/Thread;

    .line 70
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/avast/android/generic/b/l;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/avast/android/generic/b/l;->f:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/b/l;)Lcom/avast/android/generic/service/AvastService;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/generic/b/a;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 139
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 141
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->d()Ljava/lang/String;

    move-result-object v6

    .line 142
    if-eqz v6, :cond_4

    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-9999"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 145
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->H()Ljava/lang/String;

    move-result-object v2

    .line 147
    new-array v1, v3, [Ljava/lang/String;

    .line 149
    if-eqz v2, :cond_0

    .line 151
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_0
    const-string v5, "AvastGeneric"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " against ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, p0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    array-length v5, v1

    .line 160
    if-lez v5, :cond_2

    .line 162
    array-length v7, v1

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_2

    aget-object v8, v1, v2

    .line 164
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 166
    const-string v0, "AvastGeneric"

    const-string v1, "UID already processed..."

    invoke-static {v0, p0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x1

    .line 187
    :goto_2
    return v0

    .line 154
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 162
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    if-le v5, v4, :cond_5

    move v6, v4

    .line 175
    :goto_3
    if-lez v6, :cond_3

    move v4, v3

    .line 177
    :goto_4
    if-ge v4, v6, :cond_3

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v5

    goto :goto_4

    :cond_3
    move-object v1, v2

    .line 183
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ae;->j(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    :cond_4
    move v0, v3

    .line 187
    goto :goto_2

    :cond_5
    move v6, v5

    goto :goto_3
.end method

.method static synthetic a(Lcom/avast/android/generic/b/l;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/avast/android/generic/b/l;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/b/l;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avast/android/generic/b/l;->d()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 76
    :goto_0
    iget-boolean v0, p0, Lcom/avast/android/generic/b/l;->g:Z

    if-nez v0, :cond_0

    .line 78
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "Waiting for child handler ..."

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    .line 89
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/b/l;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->f:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->f:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    .line 97
    const-string v2, "AvastGeneric"

    iget-object v3, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message delivered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :cond_1
    return-void

    .line 89
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 98
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic c(Lcom/avast/android/generic/b/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/avast/android/generic/b/l;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/avast/android/generic/b/l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 277
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "Handling command queue"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/b/a;

    .line 284
    monitor-exit v1

    .line 286
    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 291
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->j()Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->l()Z

    move-result v1

    .line 294
    if-eqz v1, :cond_2

    .line 296
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :try_start_2
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 299
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 300
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    :goto_1
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    .line 400
    :try_start_3
    const-string v0, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handled command queue, new size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 403
    invoke-virtual {p0}, Lcom/avast/android/generic/b/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->b()V

    goto :goto_0

    .line 300
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 371
    :catch_0
    move-exception v1

    .line 373
    const-string v2, "AvastGeneric"

    iget-object v3, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "Error in handler processing"

    invoke-static {v2, v3, v4, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v3, v1}, Lcom/avast/android/generic/util/q;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/avast/a/a/a/a/m;->c:Lcom/avast/a/a/a/a/m;

    invoke-virtual {v2, v1, v3}, Lcom/avast/android/generic/b/d;->a(Ljava/lang/String;Lcom/avast/a/a/a/a/m;)V

    .line 377
    :try_start_6
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->l()Z

    move-result v1

    .line 378
    if-eqz v1, :cond_9

    .line 380
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 382
    :try_start_7
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 384
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 392
    :catch_1
    move-exception v0

    .line 394
    const-string v1, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Error in handler failure"

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 303
    :cond_2
    :try_start_9
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 305
    :try_start_a
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v2

    goto :goto_1

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1

    .line 310
    :cond_3
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->g()V

    .line 311
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->j()Z

    move-result v1

    if-nez v1, :cond_5

    .line 313
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->l()Z

    move-result v1

    .line 314
    if-eqz v1, :cond_4

    .line 316
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 318
    :try_start_c
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 320
    monitor-exit v2

    goto/16 :goto_1

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v1

    .line 323
    :cond_4
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 325
    :try_start_e
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 326
    monitor-exit v2

    goto/16 :goto_1

    :catchall_5
    move-exception v1

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v1

    .line 330
    :cond_5
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->m()V

    .line 331
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->h()V

    .line 332
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->j()Z

    move-result v1

    if-nez v1, :cond_7

    .line 334
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->l()Z

    move-result v1

    .line 335
    if-eqz v1, :cond_6

    .line 337
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 339
    :try_start_10
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 340
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 341
    monitor-exit v2

    goto/16 :goto_1

    :catchall_6
    move-exception v1

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw v1

    .line 344
    :cond_6
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 346
    :try_start_12
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 347
    monitor-exit v2

    goto/16 :goto_1

    :catchall_7
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    throw v1

    .line 351
    :cond_7
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->i()V

    .line 352
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->k()V

    .line 354
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    .line 356
    :try_start_14
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->w()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 358
    iget-object v3, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 360
    :try_start_15
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 361
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 362
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 367
    :goto_2
    :try_start_16
    monitor-exit v2

    goto/16 :goto_1

    :catchall_8
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    throw v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    .line 362
    :catchall_9
    move-exception v1

    :try_start_18
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :try_start_19
    throw v1

    .line 365
    :cond_8
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto :goto_2

    .line 387
    :cond_9
    :try_start_1a
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1

    .line 389
    :try_start_1b
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 390
    monitor-exit v1

    goto/16 :goto_1

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    :try_start_1c
    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1

    .line 401
    :catchall_b
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    throw v0
.end method

.method static synthetic e(Lcom/avast/android/generic/b/l;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/generic/b/l;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->d:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/generic/b/l;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/b/a;)V
    .locals 4
    .parameter

    .prologue
    .line 408
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling late result for command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    monitor-exit v1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 421
    :try_start_1
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->l()Z

    move-result v0

    .line 423
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->p()V

    .line 425
    if-eqz v0, :cond_2

    .line 427
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 429
    :try_start_2
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 431
    :try_start_3
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 433
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 434
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 471
    :goto_1
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handled late result for command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/avast/android/generic/b/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->b()V

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 433
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 434
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 442
    :catch_0
    move-exception v0

    .line 444
    const-string v1, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Error in handler failure"

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 448
    :try_start_9
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 449
    monitor-exit v1

    goto :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 437
    :cond_2
    :try_start_a
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 439
    :try_start_b
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 440
    monitor-exit v1

    goto :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 453
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->i()V

    .line 457
    :try_start_d
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->k()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 463
    :goto_2
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->p()V

    .line 465
    iget-object v1, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 467
    :try_start_e
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 468
    monitor-exit v1

    goto :goto_1

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    .line 458
    :catch_1
    move-exception v0

    .line 460
    const-string v1, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v3, "Error in handler success"

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public a(Lcom/avast/android/generic/b/a;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 192
    if-eqz p2, :cond_0

    .line 194
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    invoke-static {v0, p1}, Lcom/avast/android/generic/b/l;->a(Landroid/content/Context;Lcom/avast/android/generic/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v2, "Enqueuing command..."

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v2

    .line 201
    :try_start_0
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->y()Z

    move-result v0

    if-nez v0, :cond_4

    .line 203
    iget-object v3, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 205
    const/4 v1, 0x0

    .line 207
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/b/a;

    .line 209
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->co:I

    sget-object v5, Lcom/avast/a/a/a/a/m;->ai:Lcom/avast/a/a/a/a/m;

    invoke-virtual {v0, v1, v5}, Lcom/avast/android/generic/b/d;->a(ILcom/avast/a/a/a/a/m;)V

    .line 212
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    .line 216
    :cond_1
    if-nez v1, :cond_3

    .line 218
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/b/a;

    .line 220
    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p1}, Lcom/avast/android/generic/b/a;->e()Lcom/avast/android/generic/b/d;

    move-result-object v0

    sget v4, Lcom/avast/android/generic/z;->co:I

    sget-object v5, Lcom/avast/a/a/a/a/m;->ai:Lcom/avast/a/a/a/a/m;

    invoke-virtual {v0, v4, v5}, Lcom/avast/android/generic/b/d;->a(ILcom/avast/a/a/a/a/m;)V

    goto :goto_3

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 231
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 226
    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-direct {p0}, Lcom/avast/android/generic/b/l;->c()V

    .line 231
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public a()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 104
    const-string v2, "AvastGeneric"

    iget-object v3, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v4, "Checking command receiver population state"

    invoke-static {v2, v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    .line 108
    :try_start_0
    iget-object v4, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 111
    :goto_0
    if-eqz v2, :cond_1

    .line 113
    const-string v1, "AvastGeneric"

    iget-object v2, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    const-string v5, "Checked command receiver population state (command queue is not empty)"

    invoke-static {v1, v2, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 110
    goto :goto_0

    .line 117
    :cond_1
    :try_start_3
    const-string v5, "AvastGeneric"

    iget-object v6, p0, Lcom/avast/android/generic/b/l;->a:Lcom/avast/android/generic/service/AvastService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checked command receiver population state (late result list is "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v2, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " empty)"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/avast/android/generic/b/l;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 117
    :cond_2
    :try_start_5
    const-string v2, "not"

    goto :goto_2

    :cond_3
    move v0, v1

    .line 119
    goto :goto_3

    .line 120
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avast/android/generic/b/o;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/b/o;-><init>(Lcom/avast/android/generic/b/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 273
    return-void
.end method
