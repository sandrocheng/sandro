.class public final Lfd;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lfd;->a:Ljava/lang/Thread;

    return-void
.end method

.method public static a(Z)V
    .locals 3

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    invoke-virtual {v1}, Lov;->h()V

    const-class v1, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/BlueToothReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/InOutCallReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/TimedTaskReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/FastBootReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/MMSReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/NetWorkEventReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/widget/NetworkStateChangeReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/tmsecure/common/TMSBootReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/RootBroadcast;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/widget/WidgetUpdateBoradcastReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/ConnectionDetector;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/widget/NetSetWidgetProvider;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/widget/TaskManagerWidgetProvider;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/tencent/qqpimsecure/service/OperatorDataSyncTaskReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p0, :cond_0

    const-class v1, Lcom/tencent/qqpimsecure/service/BootReceiver;

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    invoke-static {}, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->a()Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;->finish()V

    :cond_1
    invoke-static {v0}, Lcom/tencent/feedback/Analytics;->onAppExited(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfe;

    invoke-direct {v1}, Lfe;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lfd;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
