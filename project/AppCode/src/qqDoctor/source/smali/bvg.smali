.class public final Lbvg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbvg$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/ConnectivityManager;

.field private c:Landroid/os/PowerManager$WakeLock;

.field private volatile d:I

.field private e:Ljava/lang/String;

.field private f:Lbvg$a;

.field private g:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lbvg;->d:I

    const-string v0, "enableMMS"

    iput-object v0, p0, Lbvg;->e:Ljava/lang/String;

    iput-object p1, p0, Lbvg;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Mms Hanlder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbvg;->g:Landroid/os/HandlerThread;

    iget-object v0, p0, Lbvg;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lbvg$a;

    iget-object v1, p0, Lbvg;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbvg$a;-><init>(Lbvg;Landroid/os/Looper;)V

    iput-object v0, p0, Lbvg;->f:Lbvg$a;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lbvg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbvg;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lbvh;[BLjava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v1, -0x421

    const-string v2, "mmsc url is null!"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lbvh;

    iget-object v4, p0, Lbvg;->a:Landroid/content/Context;

    iget-object v5, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    if-le v0, v6, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v5, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    if-le v0, v6, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p2, v4, v0}, Lbvh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lbvh;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lbvh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbvg;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    new-instance v0, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v1, -0x426

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot establish route for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Unknown host"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lbtg;->d()V

    :cond_2
    throw v0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v4, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v5

    if-le v5, v6, :cond_6

    :goto_4
    invoke-virtual {v4, v1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v2, -0x420

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot establish route to proxy "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbvg;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_8

    new-instance v0, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v1, -0x426

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot establish route for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Unknown host"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8
    iget-object v4, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v5

    if-le v5, v6, :cond_9

    :goto_5
    invoke-virtual {v4, v1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v2, -0x420

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot establish route to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, Lbvh;->d()Z

    move-result v0

    invoke-virtual {p2}, Lbvh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbvh;->c()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lbtg;->a(Ljava/lang/String;ZLjava/lang/String;I)Lbtg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v1, p4}, Lbtg;->b(Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p3, :cond_b

    invoke-virtual {v1, p3}, Lbtg;->a([B)V

    :cond_b
    const-string v0, "Content-Type"

    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v1, v0, v2}, Lbtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v2, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v1, v0, v2}, Lbtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/16 v0, 0xc8

    invoke-virtual {v1}, Lbtg;->a()I

    move-result v2

    if-ne v0, v2, :cond_d

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v1, v0}, Lbtg;->a(Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v0

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lbtg;->d()V

    :cond_e
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto/16 :goto_3

    :cond_f
    move-object v0, v3

    goto/16 :goto_2
.end method

.method static synthetic b(Lbvg;)I
    .locals 1

    iget v0, p0, Lbvg;->d:I

    return v0
.end method

.method private b()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lbvg;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lbvg;->beginMmsConnectivity(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    const/4 v5, 0x5

    if-lt v0, v5, :cond_1

    :cond_0
    if-eqz v4, :cond_3

    iget-object v2, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/4 v4, 0x7

    if-le v0, v4, :cond_2

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    return v1

    :cond_1
    const-wide/16 v4, 0x5dc

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v1}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    iget-object v2, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v2, v1}, Lbvg$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v1, v4, v5}, Lbvg$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v3

    goto :goto_2
.end method

.method private declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbvg;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "MMS Connectivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lbvg;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lbvg;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    throw v0
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lbvg;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbvg;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lbvg;->g:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public final beginMmsConnectivity(Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lbvg;->c()V

    iput-object p1, p0, Lbvg;->e:Ljava/lang/String;

    iget-object v0, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lbvg;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final retrieveMmsContent(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I
    .locals 13

    const/4 v3, 0x2

    const/16 v0, -0x421

    const/4 v1, 0x0

    const-wide/16 v11, 0x7530

    const/4 v10, 0x1

    const/16 v2, -0x3e8

    :try_start_0
    iget-object v4, p0, Lbvg;->f:Lbvg$a;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lbvg$a;->removeMessages(I)V

    iget v4, p0, Lbvg;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lbvg;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lbvg;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_3

    iget v0, p0, Lbvg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbvg;->d:I

    iget v0, p0, Lbvg;->d:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    const/16 v0, -0x41c

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->b()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    if-nez v4, :cond_4

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    :try_start_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Lbvh;

    iget-object v7, p0, Lbvg;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iget-object v8, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v4

    const/4 v9, 0x7

    if-le v4, v9, :cond_7

    move v4, v3

    :goto_1
    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/4 v8, 0x7

    if-le v0, v8, :cond_8

    move v0, v3

    :goto_2
    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-direct {v6, v7, v0}, Lbvh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v3, "GET"

    invoke-direct {p0, v5, v6, v0, v3}, Lbvg;->a(Ljava/lang/String;Lbvh;[BLjava/lang/String;)[B

    move-result-object v0

    const/16 v2, -0xfa0

    if-eqz v0, :cond_a

    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v3, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    const/4 v3, 0x1

    iput v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->protocolType:I

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    const-string v3, ""

    iput-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    iget-wide v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    :cond_6
    iget-object v3, p1, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/aresengine/MmsData;->a(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    :goto_3
    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    move v4, v1

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->printStackTrace()V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    add-int/lit8 v0, v2, -0x2

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    throw v0

    :cond_a
    move v0, v2

    goto :goto_3
.end method

.method public final sendAcknowledgeInd(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I
    .locals 13

    const/4 v3, 0x2

    const/16 v1, -0x421

    const/4 v0, 0x0

    const-wide/16 v11, 0x7530

    const/4 v10, 0x1

    :try_start_0
    iget-object v2, p0, Lbvg;->f:Lbvg$a;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lbvg$a;->removeMessages(I)V

    iget v2, p0, Lbvg;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbvg;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    iget v0, p0, Lbvg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbvg;->d:I

    iget v0, p0, Lbvg;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lbvg;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_4

    iget v0, p0, Lbvg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbvg;->d:I

    iget v0, p0, Lbvg;->d:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    const/16 v0, -0x41c

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->c()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    if-nez v2, :cond_5

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    :try_start_3
    new-instance v4, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v5, 0x12

    invoke-direct {v4, v5, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lbvg;->a:Landroid/content/Context;

    invoke-direct {v2, v5, v4}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v5

    new-instance v6, Lbvh;

    iget-object v7, p0, Lbvg;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v8, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v4

    const/4 v9, 0x7

    if-le v4, v9, :cond_9

    move v4, v3

    :goto_1
    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    const/4 v8, 0x7

    if-le v2, v8, :cond_a

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-direct {v6, v7, v2}, Lbvh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6}, Lbvh;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_7
    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->b()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    if-nez v2, :cond_b

    iget v0, p0, Lbvg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbvg;->d:I

    iget v0, p0, Lbvg;->d:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v4, v0

    goto :goto_1

    :cond_a
    move v2, v0

    goto :goto_2

    :cond_b
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_3
    const-string v2, "POST"

    invoke-direct {p0, v1, v6, v5, v2}, Lbvg;->a(Ljava/lang/String;Lbvh;[BLjava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    if-eqz v1, :cond_c

    :goto_4
    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    const/16 v0, -0xfa0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/16 v0, -0x3ea

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_d

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    throw v0

    :cond_e
    move-object v1, v2

    goto :goto_3
.end method

.method public final sendNotifyRespInd(ILcom/tencent/tmsecure/module/aresengine/SmsEntity;)I
    .locals 13

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/16 v1, -0x421

    const-wide/16 v11, 0x7530

    const/4 v10, 0x1

    :try_start_0
    iget-object v2, p0, Lbvg;->f:Lbvg$a;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lbvg$a;->removeMessages(I)V

    iget v2, p0, Lbvg;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lbvg;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p2, :cond_2

    iget v0, p0, Lbvg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbvg;->d:I

    iget v0, p0, Lbvg;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lbvg;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_4

    iget v0, p0, Lbvg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbvg;->d:I

    iget v0, p0, Lbvg;->d:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    const/16 v0, -0x41c

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->c()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    if-nez v2, :cond_6

    iget v0, p0, Lbvg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbvg;->d:I

    iget v0, p0, Lbvg;->d:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    :try_start_3
    new-instance v4, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v5, 0x12

    invoke-direct {v4, v5, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lbvg;->a:Landroid/content/Context;

    invoke-direct {v2, v5, v4}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v5

    new-instance v6, Lbvh;

    iget-object v7, p0, Lbvg;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v8, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v4

    const/4 v9, 0x7

    if-le v4, v9, :cond_a

    move v4, v3

    :goto_1
    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lbvg;->b:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    const/4 v8, 0x7

    if-le v2, v8, :cond_b

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-direct {v6, v7, v2}, Lbvh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6}, Lbvh;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_8
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->b()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v3

    if-nez v3, :cond_c

    iget v0, p0, Lbvg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbvg;->d:I

    iget v0, p0, Lbvg;->d:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v4, v0

    goto :goto_1

    :cond_b
    move v2, v0

    goto :goto_2

    :cond_c
    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    :cond_d
    const-string v3, "POST"

    invoke-direct {p0, v2, v6, v5, v3}, Lbvg;->a(Ljava/lang/String;Lbvh;[BLjava/lang/String;)[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    if-eqz v1, :cond_e

    :goto_3
    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_e
    const/16 v0, -0xfa0

    goto :goto_3

    :catch_0
    move-exception v0

    iget v0, p0, Lbvg;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbvg;->d:I

    iget v0, p0, Lbvg;->d:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v0, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v0, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_f
    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/16 v0, -0x3ea

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget v1, p0, Lbvg;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lbvg;->d:I

    iget v1, p0, Lbvg;->d:I

    if-nez v1, :cond_10

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10}, Lbvg$a;->removeMessages(I)V

    iget-object v1, p0, Lbvg;->f:Lbvg$a;

    invoke-virtual {v1, v10, v11, v12}, Lbvg$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_10
    throw v0
.end method
