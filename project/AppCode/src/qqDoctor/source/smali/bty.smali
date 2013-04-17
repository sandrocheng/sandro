.class final Lbty;
.super Lbtx$a;


# instance fields
.field private synthetic c:Lbtx;

.field private final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbtx;Landroid/content/pm/ServiceInfo;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lbty;->c:Lbtx;

    iput-object p3, p0, Lbty;->d:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lbtx$a;-><init>(Landroid/content/pm/ServiceInfo;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Lcom/tencent/tmsecure/common/ISDKClient$Proxy;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tmsecure/common/ISDKClient;

    move-result-object v0

    iput-object v0, p0, Lbty;->b:Lcom/tencent/tmsecure/common/ISDKClient;

    iget-object v0, p0, Lbty;->c:Lbtx;

    invoke-static {v0}, Lbtx;->a(Lbtx;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lbty;->a:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lbty;->b:Lcom/tencent/tmsecure/common/ISDKClient;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lbty;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbty;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lbty;->c:Lbtx;

    invoke-static {v0}, Lbtx;->a(Lbtx;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lbty;->a:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lbty;->b:Lcom/tencent/tmsecure/common/ISDKClient;

    return-void
.end method
