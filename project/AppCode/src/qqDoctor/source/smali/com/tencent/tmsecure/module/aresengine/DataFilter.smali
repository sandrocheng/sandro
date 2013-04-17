.class public abstract Lcom/tencent/tmsecure/module/aresengine/DataFilter;
.super Ljava/lang/Object;


# annotations
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

.field private b:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

.field private c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/tencent/tmsecure/module/aresengine/DataHandler;)V
    .locals 2

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract defalutFilterConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
.end method

.method public final varargs filter(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tencent/tmsecure/module/aresengine/FilterResult;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->prepare(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->onFiltered(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->c:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    invoke-virtual {v2, v0}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->sendMessage(Lcom/tencent/tmsecure/module/aresengine/FilterResult;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized getConfig()Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->b:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs onFiltered(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Lcom/tencent/tmsecure/module/aresengine/FilterResult;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/tencent/tmsecure/module/aresengine/FilterResult;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method protected varargs abstract onFiltering(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Lcom/tencent/tmsecure/module/aresengine/FilterResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tencent/tmsecure/module/aresengine/FilterResult;"
        }
    .end annotation
.end method

.method protected varargs prepare(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public final declared-synchronized setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the filter\'s config can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->b:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
