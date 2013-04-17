.class public final Lcom/tencent/tmsecure/common/SDKClient;
.super Lcom/tencent/tmsecure/common/ISDKClient$Stub;


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/tencent/tmsecure/common/MessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:Lcom/tencent/tmsecure/common/SDKClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/common/SDKClient;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmsecure/common/SDKClient;->b:Lcom/tencent/tmsecure/common/SDKClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/ISDKClient$Stub;-><init>()V

    return-void
.end method

.method public static addMessageHandler(Lcom/tencent/tmsecure/common/MessageHandler;)Z
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/common/SDKClient;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/tencent/tmsecure/common/SDKClient;
    .locals 2

    sget-object v0, Lcom/tencent/tmsecure/common/SDKClient;->b:Lcom/tencent/tmsecure/common/SDKClient;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/tmsecure/common/SDKClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/common/SDKClient;->b:Lcom/tencent/tmsecure/common/SDKClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/common/SDKClient;

    invoke-direct {v0}, Lcom/tencent/tmsecure/common/SDKClient;-><init>()V

    sput-object v0, Lcom/tencent/tmsecure/common/SDKClient;->b:Lcom/tencent/tmsecure/common/SDKClient;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/tmsecure/common/SDKClient;->b:Lcom/tencent/tmsecure/common/SDKClient;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static removeMessageHandler(Lcom/tencent/tmsecure/common/MessageHandler;)Z
    .locals 1

    sget-object v0, Lcom/tencent/tmsecure/common/SDKClient;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/tmsecure/common/DataEntity;->what()I

    move-result v2

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/tmsecure/common/SDKClient;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/MessageHandler;

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/common/MessageHandler;->isMatch(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, p1}, Lcom/tencent/tmsecure/common/MessageHandler;->onProcessing(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;

    move-result-object v0

    goto :goto_0
.end method
