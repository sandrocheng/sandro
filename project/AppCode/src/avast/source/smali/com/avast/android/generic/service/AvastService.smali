.class public abstract Lcom/avast/android/generic/service/AvastService;
.super Landroid/app/Service;
.source "AvastService.java"


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Ljava/lang/String;

.field private c:Lcom/avast/android/generic/f/a/b;

.field private d:Lcom/avast/android/generic/internet/HttpSender;

.field private e:Lcom/avast/android/generic/h/o;

.field private f:Lcom/avast/android/generic/b/l;

.field private final g:Landroid/os/Handler;

.field private h:Z

.field private i:I

.field private j:Ljava/lang/Object;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->a:Ljava/lang/Thread;

    .line 54
    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->b:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    .line 57
    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->d:Lcom/avast/android/generic/internet/HttpSender;

    .line 58
    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    .line 59
    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->g:Landroid/os/Handler;

    .line 63
    iput-boolean v1, p0, Lcom/avast/android/generic/service/AvastService;->h:Z

    .line 65
    iput v1, p0, Lcom/avast/android/generic/service/AvastService;->i:I

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->j:Ljava/lang/Object;

    .line 68
    iput-boolean v1, p0, Lcom/avast/android/generic/service/AvastService;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/service/AvastService;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->j:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    .line 118
    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 122
    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0}, Lcom/avast/android/generic/util/ax;->a(Landroid/content/Context;)V

    .line 126
    const-string v2, "AvastGeneric"

    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service is performing action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/avast/android/generic/service/a;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/avast/android/generic/service/a;-><init>(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {p0}, Lcom/avast/android/generic/util/ax;->a(Landroid/content/Context;)V

    .line 172
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avast/android/generic/service/c;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/generic/service/c;-><init>(Lcom/avast/android/generic/service/AvastService;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 445
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 446
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 447
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 451
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/generic/service/AvastService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/avast/android/generic/service/AvastService;->k:Z

    return p1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 456
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 457
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 458
    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 462
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/generic/service/AvastService;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/avast/android/generic/service/AvastService;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/h/o;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 467
    invoke-static {p0}, Lcom/avast/android/generic/util/z;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/avast/android/generic/service/AvastService;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/avast/android/generic/service/AvastService;->i:I

    return v0
.end method

.method static synthetic e(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/f/a/b;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/internet/HttpSender;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->d:Lcom/avast/android/generic/internet/HttpSender;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/generic/service/AvastService;)Lcom/avast/android/generic/b/l;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    return-object v0
.end method

.method static synthetic h(Lcom/avast/android/generic/service/AvastService;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/avast/android/generic/service/AvastService;->o()V

    return-void
.end method

.method private o()V
    .locals 8

    .prologue
    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    const-string v2, "AvastGenericSc"

    const-string v3, "Destroy syncing..."

    invoke-static {v2, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/avast/android/generic/service/AvastService;->j:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/avast/android/generic/service/AvastService;->k:Z

    .line 310
    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->stopSelf()V

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 313
    const-string v5, "AvastGenericSc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sync for destroy took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :try_start_1
    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    if-eqz v3, :cond_0

    .line 326
    iget-object v3, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    invoke-virtual {v3}, Lcom/avast/android/generic/b/l;->b()V

    .line 327
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 335
    :cond_0
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    if-eqz v3, :cond_1

    .line 337
    iget-object v3, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    invoke-virtual {v3}, Lcom/avast/android/generic/f/a/b;->e()V

    .line 338
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 346
    :cond_1
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/avast/android/generic/service/AvastService;->d:Lcom/avast/android/generic/internet/HttpSender;

    if-eqz v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/avast/android/generic/service/AvastService;->d:Lcom/avast/android/generic/internet/HttpSender;

    invoke-virtual {v3}, Lcom/avast/android/generic/internet/HttpSender;->e()V

    .line 349
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/service/AvastService;->d:Lcom/avast/android/generic/internet/HttpSender;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 357
    :cond_2
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    if-eqz v3, :cond_3

    .line 359
    iget-object v3, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    invoke-virtual {v3}, Lcom/avast/android/generic/h/o;->b()V

    .line 360
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 368
    :cond_3
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/avast/android/generic/util/ax;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 373
    :goto_5
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 374
    const-string v5, "AvastGenericSc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service destroy took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v0, v3, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    monitor-exit v2

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 318
    :catch_0
    move-exception v3

    goto :goto_0

    .line 369
    :catch_1
    move-exception v3

    goto :goto_5

    .line 362
    :catch_2
    move-exception v3

    goto :goto_4

    .line 351
    :catch_3
    move-exception v3

    goto :goto_3

    .line 340
    :catch_4
    move-exception v3

    goto :goto_2

    .line 329
    :catch_5
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Lcom/avast/android/generic/b/h;ZZ)Lcom/avast/android/generic/b/d;
.end method

.method public abstract a(Lcom/avast/a/a/a/h;)V
.end method

.method public a(Lcom/avast/android/generic/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/b/l;->a(Lcom/avast/android/generic/b/a;)V

    .line 570
    :cond_0
    return-void
.end method

.method public a(Lcom/avast/android/generic/b/a;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 573
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/generic/b/l;->a(Lcom/avast/android/generic/b/a;Z)V

    .line 575
    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/avast/android/generic/h/o;)V
.end method

.method public a(Lcom/avast/android/generic/internet/e;Lcom/avast/android/generic/b/a;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->d:Lcom/avast/android/generic/internet/HttpSender;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->d:Lcom/avast/android/generic/internet/HttpSender;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avast/android/generic/internet/HttpSender;->a(Lcom/avast/android/generic/internet/e;Lcom/avast/android/generic/b/a;Z)V

    .line 537
    :cond_0
    return-void
.end method

.method public a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/util/bc;Lcom/avast/android/generic/f/a/a;Z)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    if-eqz p2, :cond_0

    .line 547
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2, v0}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 476
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/service/AvastService;->a:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/avast/android/generic/f/a/a;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 556
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avast/android/generic/f/a/b;->a(Ljava/lang/String;Ljava/util/List;Lcom/avast/android/generic/f/a/a;Z)V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    if-eqz p3, :cond_0

    .line 561
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p3, v0}, Lcom/avast/android/generic/f/a/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/service/AvastService;->b(Z)V

    .line 501
    return-void
.end method

.method protected abstract a()Z
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public b()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/avast/android/generic/service/e;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/service/e;-><init>(Lcom/avast/android/generic/service/AvastService;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/service/AvastService;->a(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 525
    :cond_0
    return-void
.end method

.method public abstract b(Z)V
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 383
    const-string v0, "AvastGeneric"

    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Service setup"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->a:Ljava/lang/Thread;

    .line 389
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 400
    :goto_0
    if-eqz v0, :cond_5

    .line 401
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->b:Ljava/lang/String;

    .line 406
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Lcom/avast/android/generic/f/a/b;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/f/a/b;-><init>(Lcom/avast/android/generic/service/AvastService;)V

    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->c:Lcom/avast/android/generic/f/a/b;

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->d:Lcom/avast/android/generic/internet/HttpSender;

    if-nez v0, :cond_2

    .line 412
    new-instance v0, Lcom/avast/android/generic/internet/HttpSender;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/internet/HttpSender;-><init>(Lcom/avast/android/generic/service/AvastService;)V

    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->d:Lcom/avast/android/generic/internet/HttpSender;

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    if-nez v0, :cond_3

    .line 416
    new-instance v0, Lcom/avast/android/generic/b/l;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/b/l;-><init>(Lcom/avast/android/generic/service/AvastService;)V

    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->f:Lcom/avast/android/generic/b/l;

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    if-nez v0, :cond_4

    .line 421
    new-instance v0, Lcom/avast/android/generic/h/o;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/h/o;-><init>(Lcom/avast/android/generic/service/AvastService;)V

    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    .line 423
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.generic.action.C2DM_ERROR"

    const-class v2, Lcom/avast/android/generic/h/e;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 424
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.generic.action.ACTION_C2DM_REMOVE"

    const-class v2, Lcom/avast/android/generic/h/g;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 425
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.generic.action.ACTION_C2DM_SUCCESS"

    const-class v2, Lcom/avast/android/generic/h/i;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 426
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.generic.action.ACTION_C2DM_MESSAGE"

    const-class v2, Lcom/avast/android/generic/h/f;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 427
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.generic.action.C2DM_DISABLE_SUITE"

    const-class v2, Lcom/avast/android/generic/h/c;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 428
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.generic.action.C2DM_ENABLE_SUITE"

    const-class v2, Lcom/avast/android/generic/h/d;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 429
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.generic.service.action.SMS_RECEIVED"

    const-class v2, Lcom/avast/android/generic/h/k;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 430
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.mobilesecurity.app.account.ACCOUNT_CONNECTED"

    const-class v2, Lcom/avast/android/generic/h/a;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 431
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.mobilesecurity.app.account.ACCOUNT_DISCONNECTED"

    const-class v2, Lcom/avast/android/generic/h/b;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 432
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION"

    const-class v2, Lcom/avast/android/generic/h/j;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 433
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    const-string v1, "com.avast.android.generic.action.REQUEST_C2DM"

    const-class v2, Lcom/avast/android/generic/h/h;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/h/o;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 435
    iget-object v0, p0, Lcom/avast/android/generic/service/AvastService;->e:Lcom/avast/android/generic/h/o;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/h/o;)V

    .line 438
    :cond_4
    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->d()V

    .line 440
    const-string v0, "AvastGeneric"

    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Service setup succeeded"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    const-string v1, "AvastGeneric"

    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Service finds no name for app package found"

    invoke-static {v1, v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 403
    :cond_5
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/avast/android/generic/service/AvastService;->b:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public f()V
    .locals 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->h()V

    .line 490
    const-string v0, "com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/service/AvastService;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 491
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->i()V

    .line 497
    return-void
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public abstract l()I
.end method

.method public abstract m()V
.end method

.method public abstract n()V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    invoke-static {p0}, Lcom/avast/android/generic/g;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 89
    const-string v0, "AvastGeneric"

    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Service created"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/avast/android/generic/service/AvastService;->o()V

    .line 106
    const-string v0, "AvastGeneric"

    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Service destroyed"

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 112
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-static {p0}, Lcom/avast/android/generic/service/AvastService;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/service/AvastService;->h:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/avast/android/generic/service/AvastService;->a(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method
