.class public Lcom/avast/android/generic/util/s;
.super Ljava/lang/Object;
.source "GlobalHandlerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/List;

.field private e:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/util/s;->c:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/util/s;->d:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/avast/android/generic/util/s;->a:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/avast/android/generic/util/s;->b:Landroid/os/Handler;

    .line 64
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avast/android/generic/util/s;->e:Ljava/util/concurrent/Semaphore;

    .line 65
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 218
    return-void
.end method

.method private a(Ljava/util/List;Landroid/os/Message;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/avast/android/generic/util/s;->a()V

    .line 198
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/d;

    .line 203
    invoke-virtual {v0}, Lcom/avast/android/generic/util/d;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/avast/android/generic/util/d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    invoke-interface {v0, p2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 206
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/avast/android/generic/util/s;->c()V

    .line 210
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 236
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Handler$Callback;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/avast/android/generic/util/s;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    new-instance v1, Lcom/avast/android/generic/util/d;

    invoke-direct {v1, p2}, Lcom/avast/android/generic/util/d;-><init>(Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Lcom/avast/android/generic/util/s;->a()V

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    invoke-direct {p0}, Lcom/avast/android/generic/util/s;->c()V

    .line 106
    return-void

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public b(ILandroid/os/Handler$Callback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    if-nez v0, :cond_1

    .line 141
    monitor-exit p0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    new-instance v1, Lcom/avast/android/generic/util/d;

    invoke-direct {v1, p2}, Lcom/avast/android/generic/util/d;-><init>(Ljava/lang/Object;)V

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/avast/android/generic/util/s;->b()Z

    move-result v2

    .line 150
    if-eqz v2, :cond_2

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0}, Lcom/avast/android/generic/util/s;->c()V

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 160
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/d;

    .line 161
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    invoke-virtual {v0}, Lcom/avast/android/generic/util/d;->clear()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->c:Ljava/util/Map;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, v0, p1}, Lcom/avast/android/generic/util/s;->a(Ljava/util/List;Landroid/os/Message;)V

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->c:Ljava/util/Map;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/util/s;->d:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/avast/android/generic/util/s;->a(Ljava/util/List;Landroid/os/Message;)V

    .line 187
    const/4 v0, 0x1

    return v0

    .line 176
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
