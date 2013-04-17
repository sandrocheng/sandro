.class public final Lyr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyr$a;
    }
.end annotation


# static fields
.field private static s:Landroid/content/BroadcastReceiver;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/os/Handler;

.field public c:Lcom/tencent/tmsecure/module/network/NetworkManager;

.field public d:Lwn;

.field private e:Ljava/lang/Thread;

.field private f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

.field private g:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

.field private h:Labd;

.field private i:Lxh;

.field private j:Lrn;

.field private k:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

.field private l:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

.field private m:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

.field private n:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

.field private o:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

.field private p:Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;

.field private q:Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

.field private r:Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

.field private t:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

.field private u:Lpo;

.field private v:Lok;

.field private w:Lqb;

.field private x:Lyf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;-><init>()V

    iput-object v0, p0, Lyr;->q:Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

    new-instance v0, Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/BlueToothReceiver;-><init>()V

    iput-object v0, p0, Lyr;->r:Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-class v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    :goto_0
    iput-object v0, p0, Lyr;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    if-eqz p1, :cond_2

    new-instance v0, Lacp;

    invoke-direct {v0}, Lacp;-><init>()V

    :goto_1
    iput-object v0, p0, Lyr;->g:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    if-eqz p1, :cond_3

    new-instance v0, Lxh;

    iget-object v2, p0, Lyr;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lxh;-><init>(Landroid/content/Context;)V

    :goto_2
    iput-object v0, p0, Lyr;->i:Lxh;

    if-eqz p1, :cond_4

    new-instance v0, Labd;

    iget-object v2, p0, Lyr;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Labd;-><init>(Landroid/content/Context;)V

    :goto_3
    iput-object v0, p0, Lyr;->h:Labd;

    if-eqz p1, :cond_0

    new-instance v1, Lrn;

    iget-object v0, p0, Lyr;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lrn;-><init>(Landroid/content/Context;)V

    :cond_0
    iput-object v1, p0, Lyr;->j:Lrn;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method private b(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    iput-object v0, p0, Lyr;->b:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lyr$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lyr$a;-><init>(Lyr;B)V

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    :cond_0
    iput-object v1, p0, Lyr;->e:Ljava/lang/Thread;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private c(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    :goto_0
    iput-object v0, p0, Lyr;->l:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {}, Lop;->a()Lop;

    move-result-object v0

    invoke-virtual {v0}, Lop;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lop;->c()V

    :cond_0
    if-eqz p1, :cond_3

    new-instance v0, Lpw;

    invoke-direct {v0}, Lpw;-><init>()V

    :goto_1
    iput-object v0, p0, Lyr;->m:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    if-eqz p1, :cond_4

    new-instance v0, Labm;

    iget-object v2, p0, Lyr;->a:Landroid/content/Context;

    invoke-direct {v0}, Labm;-><init>()V

    :goto_2
    iput-object v0, p0, Lyr;->n:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    if-eqz p1, :cond_1

    new-instance v1, Laam;

    iget-object v0, p0, Lyr;->a:Landroid/content/Context;

    invoke-direct {v1}, Laam;-><init>()V

    :cond_1
    iput-object v1, p0, Lyr;->o:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private d(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    :goto_0
    iput-object v0, p0, Lyr;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    if-eqz p1, :cond_0

    new-instance v1, Lwe;

    iget-object v0, p0, Lyr;->a:Landroid/content/Context;

    invoke-direct {v1}, Lwe;-><init>()V

    :cond_0
    iput-object v1, p0, Lyr;->k:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;BZ)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lyr;->a:Landroid/content/Context;

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v7

    :pswitch_1
    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lyr;->a(Z)V

    iget-object v0, p0, Lyr;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v2, p0, Lyr;->g:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;I)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Lyr;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lyr;->i:Lxh;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Lyr;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lyr;->h:Labd;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Lyr;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lyr;->j:Lrn;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyr;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lyr;->g:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Lyr;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lyr;->i:Lxh;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Lyr;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lyr;->h:Labd;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Lyr;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lyr;->j:Lrn;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-direct {p0, p3}, Lyr;->a(Z)V

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_3

    invoke-direct {p0, p3}, Lyr;->d(Z)V

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Liy;->a:Landroid/content/SharedPreferences;

    const-string v2, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v3

    invoke-virtual {v3}, Lnp;->f()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v7, v1}, Lxb;->a(ZZ)V

    iget-object v0, p0, Lyr;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "wifi"

    new-instance v2, Liz;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->addDefaultWifiMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    iget-object v0, p0, Lyr;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "mobile"

    new-instance v2, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->addDefaultMobileMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    iget-object v0, p0, Lyr;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lyr;->t:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v0, p0, Lyr;->t:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v1, p0, Lyr;->k:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->addCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)I

    goto/16 :goto_0

    :cond_2
    invoke-static {v1, v1}, Lxb;->a(ZZ)V

    iget-object v0, p0, Lyr;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "wifi"

    new-instance v2, Liz;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->addDefaultWifiMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    iget-object v0, p0, Lyr;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "mobile"

    new-instance v2, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->addDefaultMobileMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    iget-object v0, p0, Lyr;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lyr;->t:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v0, p0, Lyr;->t:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v1, p0, Lyr;->k:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->removeCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lyr;->t:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v1, p0, Lyr;->k:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->removeCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)Z

    invoke-direct {p0, p3}, Lyr;->d(Z)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz p3, :cond_4

    invoke-direct {p0, p3}, Lyr;->c(Z)V

    :try_start_0
    iget-object v0, p0, Lyr;->l:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lyr;->o:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lyr;->l:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lyr;->m:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lyr;->l:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "system_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lyr;->n:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->addCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lyr;->l:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lyr;->o:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lyr;->l:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lyr;->m:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V

    iget-object v0, p0, Lyr;->l:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "system_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    move-result-object v0

    iget-object v1, p0, Lyr;->n:Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;->removeCallback(Lcom/tencent/tmsecure/module/aresengine/DataHandler$DataHandlerCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-direct {p0, p3}, Lyr;->c(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_4
    if-eqz p3, :cond_0

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v2

    iget-object v0, v2, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v3, "scanPlan"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_7

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v0, 0x7

    new-array v5, v0, [I

    move v0, v1

    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_6

    if-ne v4, v0, :cond_5

    aput v7, v5, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    aput v1, v5, v0

    goto :goto_3

    :cond_6
    iget-object v0, v2, Ljl;->c:Landroid/content/SharedPreferences$Editor;

    const-string v4, "scanPlan"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v2, v5}, Ljl;->a([I)V

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v0

    iget-object v1, v2, Ljl;->c:Landroid/content/SharedPreferences$Editor;

    const-string v4, "scanTimeHour"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iget-object v1, v2, Ljl;->c:Landroid/content/SharedPreferences$Editor;

    const-string v2, "scanTimeMini"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lys;

    invoke-direct {v1, p0}, Lys;-><init>(Lyr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :pswitch_5
    if-eqz p3, :cond_9

    if-eqz p3, :cond_8

    new-instance v0, Lyv;

    invoke-direct {v0, p0}, Lyv;-><init>(Lyr;)V

    :cond_8
    sput-object v0, Lyr;->s:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    sget-object v2, Lyr;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    sget-object v2, Lyr;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    if-eqz p3, :cond_a

    new-instance v0, Lyv;

    invoke-direct {v0, p0}, Lyv;-><init>(Lyr;)V

    :cond_a
    sput-object v0, Lyr;->s:Landroid/content/BroadcastReceiver;

    goto/16 :goto_0

    :pswitch_6
    if-eqz p3, :cond_c

    if-eqz p3, :cond_b

    new-instance v0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;-><init>()V

    :cond_b
    iput-object v0, p0, Lyr;->p:Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    iget-object v2, p0, Lyr;->p:Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    iget-object v2, p0, Lyr;->p:Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    if-eqz p3, :cond_d

    new-instance v0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;-><init>()V

    :cond_d
    iput-object v0, p0, Lyr;->p:Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;

    goto/16 :goto_0

    :pswitch_7
    if-eqz p3, :cond_e

    iget-object v0, p0, Lyr;->a:Landroid/content/Context;

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    invoke-virtual {v0}, Lwr;->a()V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lyr;->a:Landroid/content/Context;

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    invoke-virtual {v0}, Lwr;->b()V

    goto/16 :goto_0

    :pswitch_8
    if-eqz p3, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v1}, Lho;->bD()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lyr;->a:Landroid/content/Context;

    invoke-static {v2}, Lyb;->a(Landroid/content/Context;)Lyb;

    move-result-object v2

    invoke-virtual {v2, v7}, Lyb;->a(Z)V

    invoke-virtual {v1}, Lho;->bG()Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofLockActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "sim_change"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v1}, Lho;->bJ()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lyr;->a:Landroid/content/Context;

    invoke-static {v3}, Lft;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_10
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lyu;

    invoke-direct {v4, p0, v2, v0, v1}, Lyu;-><init>(Lyr;Ljava/lang/String;Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;Lho;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    :pswitch_9
    if-eqz p3, :cond_11

    invoke-direct {p0, p3}, Lyr;->b(Z)V

    iget-object v0, p0, Lyr;->b:Landroid/os/Handler;

    iget-object v1, p0, Lyr;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lyr;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lyr;->b:Landroid/os/Handler;

    iget-object v1, p0, Lyr;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lyr;->b:Landroid/os/Handler;

    iget-object v1, p0, Lyr;->e:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, p3}, Lyr;->b(Z)V

    goto/16 :goto_0

    :pswitch_a
    if-eqz p3, :cond_13

    if-eqz p3, :cond_12

    new-instance v0, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;-><init>()V

    :cond_12
    iput-object v0, p0, Lyr;->q:Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    iget-object v2, p0, Lyr;->q:Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    iget-object v2, p0, Lyr;->q:Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    if-eqz p3, :cond_14

    new-instance v0, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;-><init>()V

    :cond_14
    iput-object v0, p0, Lyr;->q:Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

    goto/16 :goto_0

    :pswitch_b
    if-eqz p3, :cond_16

    if-eqz p3, :cond_15

    new-instance v0, Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/BlueToothReceiver;-><init>()V

    :cond_15
    iput-object v0, p0, Lyr;->r:Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    iget-object v2, p0, Lyr;->r:Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    iget-object v2, p0, Lyr;->r:Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    if-eqz p3, :cond_17

    new-instance v0, Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/BlueToothReceiver;-><init>()V

    :cond_17
    iput-object v0, p0, Lyr;->r:Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

    goto/16 :goto_0

    :pswitch_c
    if-eqz p3, :cond_18

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v7}, Lov;->a(ZZZ)V

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lov;->a(I)V

    goto/16 :goto_0

    :pswitch_d
    if-eqz p3, :cond_1b

    iget-object v0, p0, Lyr;->u:Lpo;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lyr;->u:Lpo;

    iget-object v1, v0, Lpo;->f:Lpo$a;

    if-eqz v1, :cond_19

    iget-object v1, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lpo;->f:Lpo$a;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_19
    new-instance v0, Lpo;

    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lpo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyr;->u:Lpo;

    iget-object v0, p0, Lyr;->u:Lpo;

    iget-object v1, v0, Lpo;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lpo;->f:Lpo$a;

    if-nez v1, :cond_1a

    new-instance v1, Lpo$a;

    invoke-direct {v1, v0}, Lpo$a;-><init>(Lpo;)V

    iput-object v1, v0, Lpo;->f:Lpo$a;

    :cond_1a
    iget-object v1, v0, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    iget-object v0, v0, Lpo;->f:Lpo$a;

    invoke-virtual {v1, v2, v7, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v1, p0, Lyr;->u:Lpo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyr;->u:Lpo;

    iget-object v2, v1, Lpo;->f:Lpo$a;

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lpo;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, v1, Lpo;->f:Lpo$a;

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1c
    iput-object v0, p0, Lyr;->u:Lpo;

    goto/16 :goto_0

    :pswitch_e
    if-eqz p3, :cond_1d

    iget-object v0, p0, Lyr;->d:Lwn;

    if-nez v0, :cond_0

    iget-object v0, p0, Lyr;->a:Landroid/content/Context;

    invoke-static {v0}, Lwn;->a(Landroid/content/Context;)Lwn;

    move-result-object v0

    iput-object v0, p0, Lyr;->d:Lwn;

    goto/16 :goto_0

    :cond_1d
    iget-object v1, p0, Lyr;->d:Lwn;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lyr;->d:Lwn;

    goto/16 :goto_0

    :pswitch_f
    if-eqz p3, :cond_1f

    iget-object v0, p0, Lyr;->v:Lok;

    if-nez v0, :cond_0

    iget-object v0, p0, Lyr;->a:Landroid/content/Context;

    sget-object v1, Lok;->a:Lok;

    if-nez v1, :cond_1e

    new-instance v1, Lok;

    invoke-direct {v1, v0}, Lok;-><init>(Landroid/content/Context;)V

    sput-object v1, Lok;->a:Lok;

    :cond_1e
    sget-object v0, Lok;->a:Lok;

    iput-object v0, p0, Lyr;->v:Lok;

    goto/16 :goto_0

    :cond_1f
    iget-object v1, p0, Lyr;->v:Lok;

    if-eqz v1, :cond_0

    iput-object v0, p0, Lyr;->v:Lok;

    goto/16 :goto_0

    :pswitch_10
    if-eqz p3, :cond_21

    iget-object v1, p0, Lyr;->w:Lqb;

    if-nez v1, :cond_20

    new-instance v1, Lqb;

    invoke-direct {v1}, Lqb;-><init>()V

    iput-object v1, p0, Lyr;->w:Lqb;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lyr;->a:Landroid/content/Context;

    const-class v3, Lqb;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lyr;->w:Lqb;

    invoke-static {v2, v1}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;Landroid/content/Intent;)Lcom/tencent/tmsecure/common/BaseService;

    :cond_20
    :goto_4
    :pswitch_11
    if-eqz p3, :cond_22

    iget-object v0, p0, Lyr;->x:Lyf;

    if-nez v0, :cond_0

    new-instance v0, Lyf;

    invoke-direct {v0}, Lyf;-><init>()V

    iput-object v0, p0, Lyr;->x:Lyf;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lyr;->a:Landroid/content/Context;

    const-class v2, Lyf;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lyr;->x:Lyf;

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;Landroid/content/Intent;)Lcom/tencent/tmsecure/common/BaseService;

    goto/16 :goto_0

    :cond_21
    iget-object v1, p0, Lyr;->w:Lqb;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lyr;->w:Lqb;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Lcom/tencent/tmsecure/common/BaseService;)Z

    iput-object v0, p0, Lyr;->w:Lqb;

    goto :goto_4

    :cond_22
    iget-object v1, p0, Lyr;->x:Lyf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyr;->x:Lyf;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Lcom/tencent/tmsecure/common/BaseService;)Z

    iput-object v0, p0, Lyr;->x:Lyf;

    goto/16 :goto_0

    :pswitch_12
    new-instance v2, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liy;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_23

    iget-object v0, v2, Liy;->a:Landroid/content/SharedPreferences;

    const-string v2, "is_upload_started"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lwh;->a()Lwh;

    move-result-object v0

    invoke-virtual {v0}, Lwh;->b()V

    goto/16 :goto_0

    :cond_23
    sget-object v1, Lwh;->a:Lwh;

    if-eqz v1, :cond_0

    sput-object v0, Lwh;->a:Lwh;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
