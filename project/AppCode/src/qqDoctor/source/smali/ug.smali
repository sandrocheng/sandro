.class public final Lug;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lug$a;
    }
.end annotation


# static fields
.field public static g:Lug;


# instance fields
.field a:Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;

.field b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lml;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/Thread;

.field public d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:I

.field private h:Lcom/android/mms/NetworkConnectivityListener;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getMmsTransactionHelper()Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;

    move-result-object v0

    iput-object v0, p0, Lug;->a:Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Luh;

    invoke-direct {v1, p0}, Luh;-><init>(Lug;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lug;->i:Landroid/os/Handler;

    iget-object v0, p0, Lug;->d:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lug;->d:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lug;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lug;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    :cond_1
    new-instance v0, Lcom/android/mms/NetworkConnectivityListener;

    invoke-direct {v0}, Lcom/android/mms/NetworkConnectivityListener;-><init>()V

    iput-object v0, p0, Lug;->h:Lcom/android/mms/NetworkConnectivityListener;

    iget-object v0, p0, Lug;->h:Lcom/android/mms/NetworkConnectivityListener;

    iget-object v1, p0, Lug;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    iget-object v0, p0, Lug;->h:Lcom/android/mms/NetworkConnectivityListener;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lug;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lml;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lml;->a:Lmk;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lug;->d:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lml;->b:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lug;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lug;->d:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lml;->b:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lug;->e:Z

    iget-object v0, p0, Lug;->c:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lug;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lug$a;

    invoke-direct {v1, p0}, Lug$a;-><init>(Lug;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lug;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lug;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
