.class final Lcom/avast/android/mobilesecurity/filebrowser/j;
.super Ljava/lang/Thread;
.source "SystemFileInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 408
    const-string v0, "AMS-SFI$ESAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 409
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 413
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 416
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->j()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :try_start_1
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    .line 419
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :goto_1
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->j()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->j()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->k()Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 433
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->j()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 434
    return-void

    .line 424
    :cond_0
    if-eqz v2, :cond_1

    .line 425
    :try_start_3
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->l()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 427
    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
