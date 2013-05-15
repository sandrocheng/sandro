.class Lcom/avast/android/generic/b/o;
.super Ljava/lang/Object;
.source "CommandReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/b/l;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/b/l;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 240
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->c(Lcom/avast/android/generic/b/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const-string v0, "AvastGeneric"

    iget-object v1, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v1}, Lcom/avast/android/generic/b/l;->a(Lcom/avast/android/generic/b/l;)Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    const-string v2, "Waiting for child handler ..."

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->d(Lcom/avast/android/generic/b/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->e(Lcom/avast/android/generic/b/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 253
    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->d(Lcom/avast/android/generic/b/l;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->f(Lcom/avast/android/generic/b/l;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->f(Lcom/avast/android/generic/b/l;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :try_start_3
    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->f(Lcom/avast/android/generic/b/l;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 259
    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->f(Lcom/avast/android/generic/b/l;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 263
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 266
    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->g(Lcom/avast/android/generic/b/l;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    monitor-enter v1

    .line 268
    :try_start_6
    iget-object v0, p0, Lcom/avast/android/generic/b/o;->a:Lcom/avast/android/generic/b/l;

    invoke-static {v0}, Lcom/avast/android/generic/b/l;->g(Lcom/avast/android/generic/b/l;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 269
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 270
    return-void

    .line 263
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    .line 264
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 269
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 260
    :catch_1
    move-exception v0

    goto :goto_1
.end method
