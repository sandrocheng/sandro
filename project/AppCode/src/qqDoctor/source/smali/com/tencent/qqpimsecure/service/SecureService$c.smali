.class final Lcom/tencent/qqpimsecure/service/SecureService$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/service/SecureService$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/service/SecureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lve;

.field private d:Lvc;

.field private e:Lvd;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

.field private g:Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;

.field private h:Lcom/tencent/qqpimsecure/service/SDEventReceiver;

.field private i:Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

.field private j:Ljava/lang/String;

.field private synthetic k:Lcom/tencent/qqpimsecure/service/SecureService;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/service/SecureService;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->k:Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NormalService test"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createInComingSmsIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->addIntercepter(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lgw;->a()Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->k:Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/SecureService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-static {v0}, Lwn;->a(Landroid/content/Context;)Lwn;

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v4, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    new-instance v0, Lve;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->c:Lve;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "switch_suspession_window"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Labf;

    invoke-direct {v0}, Labf;-><init>()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->k:Lcom/tencent/qqpimsecure/service/SecureService;

    const-class v3, Labf;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;Landroid/content/Intent;)Lcom/tencent/tmsecure/common/BaseService;

    new-instance v0, Lvc;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lvc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->d:Lvc;

    new-instance v0, Lvd;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lvd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->e:Lvd;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->f:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->f:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->showSuspendedWindow()V

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2, v4}, Lyr;->a(Landroid/content/Context;BZ)Z

    new-instance v0, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->g:Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->g:Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->i:Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->i:Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lfv;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfv;->a()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-static {v0}, Labk;->a(Landroid/content/Context;)Labk;

    move-result-object v0

    invoke-virtual {v0}, Labk;->b()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfi;->b(Landroid/content/Context;)V

    new-instance v0, Lcom/tencent/qqpimsecure/service/SDEventReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/SDEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->h:Lcom/tencent/qqpimsecure/service/SDEventReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->h:Lcom/tencent/qqpimsecure/service/SDEventReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, "com.tencent.action.cloud_service"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lyt;

    invoke-direct {v2, v0}, Lyt;-><init>(Lyr;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "switch_suspession_window"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->c:Lve;

    invoke-virtual {v0}, Lve;->a()V

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v0, v0, Lyr;->c:Lcom/tencent/tmsecure/module/network/NetworkManager;

    new-instance v1, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v1, v1, Liy;->a:Landroid/content/SharedPreferences;

    const-string v2, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v3

    invoke-virtual {v3}, Lnp;->f()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setEnable(Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lvc;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->d:Lvc;

    sget-object v2, Lvc;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lvc;->d:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lvc;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    sget-object v0, Lvc;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->d:Lvc;

    invoke-virtual {v0}, Lvc;->a()V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_ADD:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Require_Info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;

    if-eqz v0, :cond_a

    iget v4, v0, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mRid:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_a

    sget-object v3, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v4, v3, Lyr;->d:Lwn;

    if-eqz v4, :cond_6

    iget-object v4, v3, Lyr;->d:Lwn;

    invoke-virtual {v4}, Lwn;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    if-eqz v0, :cond_7

    iget-object v3, v3, Lyr;->d:Lwn;

    invoke-virtual {v3, v0}, Lwn;->a(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_8

    sget-object v0, Lru;->a:Lru$a;

    iput v1, v0, Lru$a;->a:I

    :goto_2
    move v0, v1

    :goto_3
    sget-object v1, Lru;->a:Lru$a;

    iget-boolean v1, v1, Lru$a;->b:Z

    if-nez v1, :cond_9

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_9

    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    sget-object v0, Lru;->a:Lru$a;

    iput v2, v0, Lru$a;->a:I

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_9
    sget-object v1, Lru;->a:Lru$a;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lru;->a:Lru$a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->e:Lvd;

    invoke-virtual {v0, v3, p1}, Lvd;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/tencent/qqpimsecure/uilib/view/PermissionTipDialogView;->PERMISSION_DIALOG_DELETE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->e:Lvd;

    invoke-virtual {v0, v3, p1}, Lvd;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "switch_desk_assis_window"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->f:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->showSuspendedWindow()V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->c:Lve;

    invoke-virtual {v0, v2}, Lve;->a(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->d:Lvc;

    invoke-virtual {v0}, Lvc;->a()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->f:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/DeskAssistanceWindow;->closeSuspendedWindow()V

    const-class v0, Labf;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$c;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    invoke-static {}, Labv;->b()V

    invoke-static {}, Lzo;->b()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->g:Lcom/tencent/qqpimsecure/service/BatteryEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->i:Lcom/tencent/qqpimsecure/service/UssdBlockedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-static {v0}, Lsv;->a(Landroid/content/Context;)Lsv;

    move-result-object v0

    invoke-virtual {v0}, Lsv;->a()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    invoke-static {v0}, Labk;->a(Landroid/content/Context;)Labk;

    move-result-object v0

    invoke-virtual {v0}, Labk;->a()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$c;->h:Lcom/tencent/qqpimsecure/service/SDEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
