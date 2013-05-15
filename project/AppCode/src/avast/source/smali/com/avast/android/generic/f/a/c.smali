.class Lcom/avast/android/generic/f/a/c;
.super Ljava/lang/Object;
.source "SmsSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/f/a/b;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/f/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    .line 448
    move v1, v2

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v0}, Lcom/avast/android/generic/f/a/b;->c(Lcom/avast/android/generic/f/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 452
    const-string v0, "AvastComms"

    iget-object v4, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v4}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/f/a/b;)Lcom/avast/android/generic/service/AvastService;

    move-result-object v4

    const-string v5, "SMS sender thread begin"

    invoke-static {v0, v4, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v0}, Lcom/avast/android/generic/f/a/b;->d(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 461
    iget-object v0, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v0}, Lcom/avast/android/generic/f/a/b;->d(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 463
    iget-object v0, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v0}, Lcom/avast/android/generic/f/a/b;->d(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/f/a/e;

    iget-wide v9, v0, Lcom/avast/android/generic/f/a/e;->f:J

    .line 465
    cmp-long v0, v9, v6

    if-lez v0, :cond_3

    cmp-long v0, v9, v4

    if-lez v0, :cond_3

    .line 467
    sub-long v4, v9, v4

    .line 470
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 475
    :try_start_2
    const-string v0, "AvastComms"

    iget-object v8, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v8}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/f/a/b;)Lcom/avast/android/generic/service/AvastService;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SMS sender thread sleeping for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 476
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 481
    :cond_0
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v0}, Lcom/avast/android/generic/f/a/b;->e(Lcom/avast/android/generic/f/a/b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 484
    :try_start_4
    iget-object v0, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v0}, Lcom/avast/android/generic/f/a/b;->d(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 486
    :try_start_5
    iget-object v0, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v0}, Lcom/avast/android/generic/f/a/b;->d(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-lez v0, :cond_2

    move v0, v2

    .line 490
    :goto_3
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 496
    :goto_4
    const-string v1, "AvastComms"

    iget-object v4, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v4}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/f/a/b;)Lcom/avast/android/generic/service/AvastService;

    move-result-object v4

    const-string v5, "SMS sender thread end"

    invoke-static {v1, v4, v5}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    move v1, v0

    goto/16 :goto_0

    .line 470
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 491
    :catch_0
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    .line 493
    :goto_5
    const-string v4, "AvastComms"

    const-string v5, "Error in SMS sender"

    invoke-static {v4, v5, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 490
    :catchall_1
    move-exception v0

    move v1, v3

    :goto_6
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    invoke-static {v0, v3}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/f/a/b;Z)Z

    .line 500
    iget-object v0, p0, Lcom/avast/android/generic/f/a/c;->a:Lcom/avast/android/generic/f/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/generic/f/a/b;->a(Lcom/avast/android/generic/f/a/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 501
    return-void

    .line 491
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v3

    goto :goto_5

    .line 490
    :catchall_2
    move-exception v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 477
    :catch_2
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    move-wide v4, v6

    goto/16 :goto_1
.end method
