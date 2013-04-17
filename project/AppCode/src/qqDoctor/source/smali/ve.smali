.class public final Lve;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Ljava/lang/String;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

.field private e:Landroid/content/Context;

.field private f:Lit;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;

.field private i:Z

.field private final j:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lve;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ManagerTrafficSuspessionWindow"

    iput-object v0, p0, Lve;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lve;->i:Z

    new-instance v0, Lvf;

    invoke-direct {v0, p0}, Lvf;-><init>(Lve;)V

    iput-object v0, p0, Lve;->j:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lve;->e:Landroid/content/Context;

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lve;->f:Lit;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lve;->b:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic a(Lve;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lve;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lve;)Lit;
    .locals 1

    iget-object v0, p0, Lve;->f:Lit;

    return-object v0
.end method

.method static synthetic c(Lve;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lve;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    invoke-static {}, Lve;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lve;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lve;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static d()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lve;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lve;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lve;->i:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lve;->i:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lve;->e:Landroid/content/Context;

    iget-object v2, p0, Lve;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lve;->f:Lit;

    invoke-virtual {v0}, Lit;->m()Z

    move-result v0

    iget-object v1, p0, Lve;->f:Lit;

    invoke-virtual {v1}, Lit;->n()Z

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    sget-wide v1, Lfs;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    sget-boolean v0, Lve;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    iget-object v1, p0, Lve;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    :cond_1
    iget-object v0, p0, Lve;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    sget-object v2, Lkg;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->addCallBack()V

    sput-boolean v3, Lve;->a:Z

    invoke-static {}, Lve;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lve;->b()V

    :cond_2
    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    sget-wide v1, Lfs;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    sget-boolean v0, Lve;->a:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lve;->a(Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lve;->e:Landroid/content/Context;

    iget-object v1, p0, Lve;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lve;->f:Lit;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit;->f(Z)V

    iput-boolean v2, p0, Lve;->i:Z

    :cond_0
    iget-object v0, p0, Lve;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;->removeCallBack()V

    iget-object v0, p0, Lve;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    sput-boolean v2, Lve;->a:Z

    iget-object v0, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lve;->d:Lcom/tencent/qqpimsecure/uilib/view/SuspendedTrafficMonitoringView;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lve;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lve;->g:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lve;->h:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lvg;

    invoke-direct {v0, p0}, Lvg;-><init>(Lve;)V

    iput-object v0, p0, Lve;->h:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lve;->g:Landroid/os/Handler;

    iget-object v1, p0, Lve;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lve;->g:Landroid/os/Handler;

    iget-object v1, p0, Lve;->h:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
