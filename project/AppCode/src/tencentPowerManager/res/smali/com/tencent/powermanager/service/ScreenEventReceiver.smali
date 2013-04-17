.class public Lcom/tencent/powermanager/service/ScreenEventReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Le$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/powermanager/service/ScreenEventReceiver;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ScreenEventReceiver"

    iput-object v0, p0, Lcom/tencent/powermanager/service/ScreenEventReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method private static a()V
    .locals 3

    const-class v1, Lcom/tencent/powermanager/service/ScreenEventReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/powermanager/service/ScreenEventReceiver;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/powermanager/service/ScreenEventReceiver;->a:Ljava/lang/String;

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Laj;->a()V

    :cond_0
    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->g()V

    :cond_1
    invoke-static {}, Lac;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lac;->b()V

    :cond_2
    new-instance v0, Lcc;

    invoke-direct {v0}, Lcc;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "powermanager_action_report"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/tencent/powermanager/service/ScreenEventReceiver;->a()V

    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/service/ScreenEventReceiver;->a:Ljava/lang/String;

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->r()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Laj;->b()V

    :cond_5
    sget-boolean v3, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lr;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lac;->b(Landroid/content/Context;)V

    :cond_6
    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    invoke-virtual {v0}, Ly;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v0

    invoke-virtual {v0, v2}, Ly;->o(Z)V

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lr;->a(I)V

    invoke-virtual {v0}, Lr;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Ls$a;->e()Ly;

    move-result-object v4

    invoke-static {}, Lap;->a()Lap;

    move-result-object v0

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v5

    invoke-virtual {v4}, Ly;->y()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    invoke-static {}, Laq;->a()Laq;

    move-result-object v6

    invoke-virtual {v6}, Laq;->e()V

    :goto_1
    invoke-virtual {v4}, Ly;->z()I

    move-result v6

    invoke-virtual {v5, v6}, Lr;->c(I)V

    invoke-virtual {v4}, Ly;->w()Z

    move-result v6

    invoke-virtual {v0, v6}, Lap;->a(Z)Z

    invoke-virtual {v4}, Ly;->x()Z

    move-result v6

    invoke-virtual {v0, v6}, Lap;->b(Z)Z

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v6, 0x7f04

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ly;->A()I

    move-result v6

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lr;->e(I)V

    invoke-virtual {v4}, Ly;->E()Z

    move-result v0

    invoke-virtual {v5, v0}, Lr;->b(Z)V

    invoke-virtual {v4}, Ly;->B()Z

    move-result v0

    invoke-virtual {v5, v0}, Lr;->c(Z)V

    invoke-virtual {v4}, Ly;->D()Z

    move-result v0

    invoke-static {v0}, Lr;->d(Z)V

    invoke-virtual {v4}, Ly;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->c()V

    :goto_2
    new-instance v5, Landroid/content/Intent;

    const-string v0, "action.mode.status.changed"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "extra_wifi_status"

    invoke-virtual {v4}, Ly;->w()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "extra_gprs_status"

    invoke-virtual {v4}, Ly;->x()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "extra_vibrate"

    invoke-virtual {v4}, Ly;->B()Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_5
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "extra_flight_status"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_screen_light"

    invoke-virtual {v4}, Ly;->y()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lds;->a()Lds;

    move-result-object v0

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06009f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lds;->b(Ljava/lang/String;)V

    invoke-static {}, Laf;->a()Laf;

    move-result-object v0

    invoke-virtual {v0}, Laf;->c()D

    move-result-wide v0

    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lbo;->a(D)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Laq;->a()Laq;

    move-result-object v7

    invoke-virtual {v7}, Laq;->d()V

    invoke-static {}, Laq;->a()Laq;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Laq;->a(ILandroid/content/Context;)V

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lah;->a()Lah;

    move-result-object v0

    invoke-virtual {v0}, Lah;->b()V

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_5
.end method
