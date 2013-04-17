.class final Lfv;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfv$a;,
        Lfv$b;,
        Lfv$c;
    }
.end annotation


# instance fields
.field private a:Lfv$a;

.field private b:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method static synthetic a(Lfv;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lfv;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILfw;)V
    .locals 4

    iget-object v1, p0, Lfv;->a:Lfv$a;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the listener is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Lfv$c;

    iget-object v0, v1, Lfv$a;->b:Lfv;

    const/16 v3, 0x200

    invoke-direct {v2, v0, p1, v3, p3}, Lfv$c;-><init>(Lfv;Ljava/lang/String;ILfw;)V

    iget-object v0, v1, Lfv$a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    iget-object v1, v1, Lfv$a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    :cond_1
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    const-class v1, Lfv$b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lfv;->b:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    const-class v2, Lfv;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lfv$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Lfv$b;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lfv;->b:Landroid/os/Handler;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lfv$a;

    invoke-direct {v0, p0}, Lfv$a;-><init>(Lfv;)V

    iput-object v0, p0, Lfv;->a:Lfv$a;

    return-void
.end method
