.class final Lcom/tencent/qqpimsecure/service/SecureService$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/service/SecureService$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/service/SecureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private b:Landroid/app/NotificationManager;

.field private c:Lve;

.field private d:Lvc;

.field private e:Landroid/content/Context;

.field private synthetic f:Lcom/tencent/qqpimsecure/service/SecureService;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/service/SecureService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/SecureService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/service/SecureService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->b:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const v1, 0x7f0201b9

    iput v1, v0, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/service/SecureService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0515

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/service/SecureService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b04f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->f:Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v4}, Lcom/tencent/qqpimsecure/service/SecureService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0519

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v0, Lve;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->c:Lve;

    new-instance v0, Lvc;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lvc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->d:Lvc;

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v6}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v6}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v7, v6}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2, v6}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v6}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v6}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v6}, Lyr;->a(Landroid/content/Context;BZ)Z

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "switch_suspession_window"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->c:Lve;

    invoke-virtual {v0}, Lve;->a()V

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

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

    :cond_0
    sget-object v0, Lvc;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->d:Lvc;

    sget-object v1, Lvc;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvc;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lvc;->a(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lvc;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->d:Lvc;

    invoke-virtual {v0}, Lvc;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->c:Lve;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lve;->a(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->d:Lvc;

    invoke-virtual {v0}, Lvc;->a()V

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    sget-object v0, Lcom/tencent/qqpimsecure/service/SecureService$a;->a:Lyr;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/SecureService$a;->e:Landroid/content/Context;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    return-void
.end method
