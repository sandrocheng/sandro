.class Lcom/avast/android/generic/internet/g;
.super Ljava/lang/Object;
.source "HttpSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/internet/HttpSender;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/internet/HttpSender;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/avast/android/generic/internet/g;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/avast/android/generic/internet/g;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-static {v0}, Lcom/avast/android/generic/internet/HttpSender;->f(Lcom/avast/android/generic/internet/HttpSender;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/g;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-static {v0}, Lcom/avast/android/generic/internet/HttpSender;->g(Lcom/avast/android/generic/internet/HttpSender;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/internet/g;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-static {v0}, Lcom/avast/android/generic/internet/HttpSender;->g(Lcom/avast/android/generic/internet/HttpSender;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/internet/g;->a:Lcom/avast/android/generic/internet/HttpSender;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/avast/android/generic/internet/HttpSender;->a(Lcom/avast/android/generic/internet/HttpSender;Z)Z

    .line 730
    iget-object v0, p0, Lcom/avast/android/generic/internet/g;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-static {v0}, Lcom/avast/android/generic/internet/HttpSender;->g(Lcom/avast/android/generic/internet/HttpSender;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 731
    iget-object v0, p0, Lcom/avast/android/generic/internet/g;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-static {v0}, Lcom/avast/android/generic/internet/HttpSender;->g(Lcom/avast/android/generic/internet/HttpSender;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 735
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 736
    return-void

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 732
    :catch_0
    move-exception v0

    goto :goto_0
.end method
