.class final Lcom/avast/android/mobilesecurity/app/fileshield/j;
.super Ljava/lang/Thread;
.source "FileShieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

.field private final b:Ljava/util/concurrent/Semaphore;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private e:Landroid/os/Handler;

.field private final f:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V
    .locals 2
    .parameter

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    .line 1452
    const-string v0, "AMS-FS$BThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->b:Ljava/util/concurrent/Semaphore;

    .line 1427
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    .line 1435
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->d:Ljava/util/Map;

    .line 1453
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AMS-FS$BThread@HThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->f:Landroid/os/HandlerThread;

    .line 1454
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1455
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1456
    new-instance v1, Lcom/avast/android/mobilesecurity/app/fileshield/k;

    invoke-direct {v1, p0, v0, p1}, Lcom/avast/android/mobilesecurity/app/fileshield/k;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/j;Landroid/os/Looper;Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->e:Landroid/os/Handler;

    .line 1465
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/fileshield/j;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->b:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1585
    const-wide/16 v0, 0x100

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    .line 1586
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->d:Ljava/util/Map;

    monitor-enter v1

    .line 1591
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1592
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1598
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 1599
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->d:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    if-eqz v0, :cond_0

    .line 1605
    const-wide/16 v2, 0x1f4

    .line 1607
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->e:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1617
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1657
    :cond_1
    :goto_0
    return-void

    .line 1593
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1617
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1620
    :cond_2
    const-wide/16 v0, 0x80

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 1621
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    monitor-enter v1

    .line 1625
    :try_start_5
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->d:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1627
    :try_start_6
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1628
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v1

    goto :goto_0

    .line 1654
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 1630
    :cond_3
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1635
    :try_start_9
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 1636
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    if-eqz v0, :cond_4

    .line 1642
    const-wide/16 v2, 0xbb8

    .line 1644
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->e:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1654
    :cond_4
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_0

    .line 1630
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
.end method

.method public run()V
    .locals 12

    .prologue
    .line 1469
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1473
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1474
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1475
    const/4 v2, 0x1

    .line 1476
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1479
    if-eqz v0, :cond_2

    .line 1480
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1483
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1484
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1485
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide v9, 0xb2d05e00L

    add-long/2addr v7, v9

    cmp-long v1, v7, v4

    if-gez v1, :cond_1

    .line 1487
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1488
    new-instance v1, Lcom/avast/android/mobilesecurity/app/fileshield/a;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v8, 0xa0

    invoke-direct {v1, v7, v8, v9}, Lcom/avast/android/mobilesecurity/app/fileshield/a;-><init>(Ljava/io/File;J)V

    .line 1492
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/u;->a(Lcom/avast/android/mobilesecurity/app/fileshield/a;)Ljava/lang/String;

    move-result-object v0

    .line 1494
    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v7}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->j(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/t;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a(Lcom/avast/android/mobilesecurity/app/fileshield/a;Ljava/lang/String;)V

    .line 1496
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1503
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1565
    :catch_0
    move-exception v0

    .line 1566
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1570
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1571
    return-void

    .line 1500
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1501
    const/4 v0, 0x0

    move v3, v0

    .line 1503
    :goto_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1505
    const/4 v2, 0x1

    .line 1506
    :try_start_4
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->d:Ljava/util/Map;

    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1507
    :try_start_5
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1509
    if-eqz v0, :cond_4

    .line 1510
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1513
    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1514
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1515
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x1dcd6500

    add-long/2addr v8, v10

    cmp-long v1, v8, v4

    if-gez v1, :cond_3

    .line 1518
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1519
    new-instance v1, Lcom/avast/android/mobilesecurity/app/fileshield/a;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v9, 0x120

    invoke-direct {v1, v8, v9, v10}, Lcom/avast/android/mobilesecurity/app/fileshield/a;-><init>(Ljava/io/File;J)V

    .line 1523
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->a(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/u;->a(Lcom/avast/android/mobilesecurity/app/fileshield/a;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    iget-object v8, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v8}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->j(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/t;

    move-result-object v8

    invoke-virtual {v8, v1, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a(Lcom/avast/android/mobilesecurity/app/fileshield/a;Ljava/lang/String;)V

    .line 1527
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1534
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1531
    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1532
    const/4 v0, 0x0

    .line 1534
    :goto_4
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1536
    :try_start_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v4

    .line 1542
    const-wide v4, 0xb2d05e00L

    cmp-long v4, v1, v4

    if-ltz v4, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    const-wide/32 v4, 0x1dcd6500

    cmp-long v4, v1, v4

    if-ltz v4, :cond_7

    if-nez v0, :cond_7

    .line 1544
    :cond_6
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1549
    :cond_7
    if-nez v0, :cond_8

    .line 1550
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/32 v4, 0x1dcd6500

    sub-long v1, v4, v1

    const-wide/32 v4, 0xf4240

    div-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1557
    :cond_8
    if-nez v3, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/j;->e:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide v4, 0xb2d05e00L

    sub-long v1, v4, v1

    const-wide/32 v4, 0xf4240

    div-long/2addr v1, v4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v3, v2

    goto/16 :goto_2
.end method
