.class final Lcom/avast/android/mobilesecurity/filebrowser/i;
.super Ljava/lang/Thread;
.source "SystemFileInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 457
    const-string v0, "AMS-SFI$CThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 458
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 462
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 465
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->l()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 466
    const/4 v3, 0x1

    .line 467
    :goto_1
    if-eqz v3, :cond_f

    .line 468
    const-string v0, ""

    .line 469
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :try_start_1
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :try_start_2
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/filebrowser/h;

    move-result-object v6

    .line 480
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 481
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 482
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 483
    const/4 v4, 0x0

    .line 484
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Lcom/avast/android/generic/filebrowser/g;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Lcom/avast/android/generic/filebrowser/h;)Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_9

    .line 486
    :cond_0
    invoke-virtual {v6}, Lcom/avast/android/mobilesecurity/filebrowser/h;->g()[Lcom/avast/android/generic/filebrowser/f;

    move-result-object v8

    .line 487
    if-eqz v8, :cond_5

    .line 488
    const/4 v5, 0x0

    :goto_2
    array-length v9, v8

    if-ge v5, v9, :cond_5

    .line 489
    aget-object v9, v8, v5

    .line 490
    invoke-interface {v9}, Lcom/avast/android/generic/filebrowser/f;->d()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 491
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 492
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Lcom/avast/android/generic/filebrowser/f;->a(Lcom/avast/android/generic/filebrowser/h;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long v9, v10, v12

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 488
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 471
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 586
    return-void

    .line 493
    :cond_2
    :try_start_5
    invoke-interface {v9}, Lcom/avast/android/generic/filebrowser/f;->e()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 494
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/avast/android/generic/filebrowser/f;->a(Lcom/avast/android/generic/filebrowser/h;)Ljava/lang/Long;

    move-result-object v10

    .line 495
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Lcom/avast/android/generic/filebrowser/f;->a(Lcom/avast/android/generic/filebrowser/g;)Ljava/lang/Long;

    move-result-object v11

    .line 497
    if-eqz v10, :cond_3

    if-nez v11, :cond_4

    .line 504
    :cond_3
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 506
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long v11, v12, v14

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 507
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_5
    move/from16 v16, v4

    move-object v4, v2

    move-object v2, v1

    move/from16 v1, v16

    .line 516
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 522
    if-nez v1, :cond_8

    .line 523
    invoke-static {v6, v2}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Lcom/avast/android/mobilesecurity/filebrowser/h;Ljava/lang/Long;)Ljava/lang/Long;

    .line 524
    invoke-static {v6, v4}, Lcom/avast/android/mobilesecurity/filebrowser/h;->b(Lcom/avast/android/mobilesecurity/filebrowser/h;Ljava/lang/Long;)Ljava/lang/Long;

    .line 527
    monitor-enter v6
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 528
    :try_start_6
    invoke-static {v6}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Lcom/avast/android/mobilesecurity/filebrowser/h;)Lcom/avast/android/generic/filebrowser/h;

    move-result-object v1

    .line 529
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Lcom/avast/android/mobilesecurity/filebrowser/h;Lcom/avast/android/generic/filebrowser/h;)Lcom/avast/android/generic/filebrowser/h;

    .line 530
    invoke-static {v6}, Lcom/avast/android/mobilesecurity/filebrowser/h;->b(Lcom/avast/android/mobilesecurity/filebrowser/h;)Lcom/avast/android/generic/filebrowser/g;

    move-result-object v2

    .line 531
    const/4 v4, 0x0

    invoke-static {v6, v4}, Lcom/avast/android/mobilesecurity/filebrowser/h;->a(Lcom/avast/android/mobilesecurity/filebrowser/h;Lcom/avast/android/generic/filebrowser/g;)Lcom/avast/android/generic/filebrowser/g;

    .line 532
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 533
    if-eqz v1, :cond_6

    .line 534
    :try_start_7
    invoke-static {v6}, Lcom/avast/android/mobilesecurity/filebrowser/h;->c(Lcom/avast/android/mobilesecurity/filebrowser/h;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lcom/avast/android/generic/filebrowser/h;->a(J)V

    .line 536
    :cond_6
    if-eqz v2, :cond_7

    .line 537
    invoke-static {v6}, Lcom/avast/android/mobilesecurity/filebrowser/h;->d(Lcom/avast/android/mobilesecurity/filebrowser/h;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/avast/android/generic/filebrowser/g;->a(J)V

    .line 540
    :cond_7
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->m()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 541
    :try_start_8
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->m()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 546
    :cond_8
    :try_start_9
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 547
    :try_start_a
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 548
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 549
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 550
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 553
    :goto_5
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :goto_6
    move v3, v0

    .line 578
    goto/16 :goto_1

    .line 513
    :cond_9
    const/4 v4, 0x1

    move/from16 v16, v4

    move-object v4, v2

    move-object v2, v1

    move/from16 v1, v16

    goto :goto_4

    .line 532
    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0

    .line 543
    :catchall_2
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0

    .line 550
    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    .line 553
    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v0

    .line 560
    :cond_b
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0

    .line 561
    :try_start_11
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 562
    :goto_7
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 564
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 576
    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v0
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0

    .line 566
    :cond_c
    :try_start_13
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 568
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 569
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/filebrowser/f;

    .line 570
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v5

    invoke-interface {v0}, Lcom/avast/android/generic/filebrowser/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 573
    :cond_d
    :goto_9
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 574
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 576
    :cond_e
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move v0, v3

    goto :goto_6

    .line 584
    :cond_f
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    goto/16 :goto_0

    :cond_10
    move v0, v3

    goto :goto_5
.end method
