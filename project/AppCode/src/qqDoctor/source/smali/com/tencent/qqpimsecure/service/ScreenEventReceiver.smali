.class public Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static b:Z


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ScreenEventReceiver"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;->b:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;->a:Ljava/lang/String;

    sput-boolean v7, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;->b:Z

    invoke-static {}, Labv;->d()V

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    sget-wide v1, Lfs;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpimsecure/service/ScreenEventReceiver;->b:Z

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    invoke-virtual {v0}, Lzo;->c()V

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    invoke-virtual {v0}, Lvh;->c()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->g()V

    invoke-static {}, Labv;->c()V

    new-instance v0, Lit;

    invoke-direct {v0, p1}, Lit;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lit;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    sget-wide v1, Lfs;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "switch_suspession_window"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lho;->aN()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lho;->aO()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lho;->aL()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x240c8400

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.tencent.action.cloud_service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    invoke-virtual {v0}, Lho;->dr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lho;->dq()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v7}, Lho;->R(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lho;->i(J)V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    const v1, 0x7f0b03dc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lov;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    sget-wide v1, Lfs;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/network/NetworkManager;->setInterval(J)V

    goto/16 :goto_1
.end method
