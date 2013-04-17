.class public final Laah;
.super Lcom/tencent/tmsecure/common/BaseService;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    new-instance v0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;-><init>()V

    iput-object v0, p0, Laah;->b:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Laah;->a:Landroid/content/Context;

    iget-object v0, p0, Laah;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laah;->a:Landroid/content/Context;

    iget-object v1, p0, Laah;->b:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Laah;->a:Landroid/content/Context;

    iget-object v1, p0, Laah;->b:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final onDestory()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    iget-object v0, p0, Laah;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laah;->a:Landroid/content/Context;

    iget-object v1, p0, Laah;->b:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
