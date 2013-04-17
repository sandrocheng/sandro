.class public abstract Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Lcom/tencent/tmsecure/module/aresengine/DataFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->c:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final varargs notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->onPostDataToFilter(ZLcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->c:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->c:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->filter(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;->onCallback(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;->a(Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public varargs onPostDataToFilter(ZLcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor$MonitorCallback",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRegisterState(Z)V
    .locals 0

    return-void
.end method

.method public unbind()V
    .locals 2

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->c:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
