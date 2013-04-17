.class public final Labh;
.super Lcom/tencent/tmsecure/common/BaseService;


# static fields
.field private static c:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/Timer;

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Labh;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    new-instance v0, Labj;

    invoke-direct {v0, p0}, Labj;-><init>(Labh;)V

    iput-object v0, p0, Labh;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Labh;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Labh;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Labh;->c:Z

    new-instance v0, Laau;

    invoke-direct {v0}, Laau;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.qqpimsecure.CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_cache_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_enforce"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Labh;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Labh;->c:Z

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Labh;->c:Z

    return v0
.end method


# virtual methods
.method public final onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 6

    const-wide/32 v2, 0x5265c00

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    iput-object p1, p0, Labh;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Labh;->b:Ljava/util/Timer;

    iget-object v0, p0, Labh;->b:Ljava/util/Timer;

    new-instance v1, Labi;

    invoke-direct {v1, p0}, Labi;-><init>(Labh;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Labh;->a:Landroid/content/Context;

    iget-object v1, p0, Labh;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDestory()V
    .locals 2

    iget-object v0, p0, Labh;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labh;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    iget-object v0, p0, Labh;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Labh;->a:Landroid/content/Context;

    iget-object v1, p0, Labh;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onStart(Landroid/content/Intent;)V

    return-void
.end method
