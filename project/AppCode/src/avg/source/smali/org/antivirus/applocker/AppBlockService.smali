.class public Lorg/antivirus/applocker/AppBlockService;
.super Landroid/app/Service;


# instance fields
.field private final a:J

.field private b:Lorg/antivirus/applocker/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lorg/antivirus/applocker/AppBlockService;->a:J

    return-void
.end method

.method private a(Z)V
    .locals 7

    const-wide/16 v4, 0x64

    const/4 v6, 0x0

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lorg/antivirus/applocker/AppBlockService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/applocker/AppBlockService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0xdd

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lorg/antivirus/applocker/a;

    invoke-direct {v0}, Lorg/antivirus/applocker/a;-><init>()V

    iput-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    sget-object v0, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    iget-object v0, v0, Lorg/antivirus/core/b/a;->d:Lorg/antivirus/core/b/c;

    sget-object v1, Lorg/antivirus/core/b/c;->c:Lorg/antivirus/core/b/c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    invoke-virtual {v0, v2}, Lorg/antivirus/applocker/a;->a(Z)V

    iget-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    invoke-virtual {v0, p0}, Lorg/antivirus/applocker/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lorg/antivirus/applocker/AppBlockService;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/antivirus/applocker/AppBlockService;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/antivirus/applocker/AppBlockService;->a(Z)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    if-eqz p1, :cond_1

    const-string v0, "__SAC"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    iget-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    invoke-virtual {p0}, Lorg/antivirus/applocker/AppBlockService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/a;->c(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    invoke-virtual {v0}, Lorg/antivirus/applocker/a;->a()V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    invoke-virtual {v0, p0}, Lorg/antivirus/applocker/a;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/antivirus/applocker/AppBlockService;->a(Z)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    const-string v1, "__SAD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/antivirus/applocker/a;->a(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/antivirus/applocker/AppBlockService;->a(Z)V

    iget-object v0, p0, Lorg/antivirus/applocker/AppBlockService;->b:Lorg/antivirus/applocker/a;

    invoke-virtual {v0, v1}, Lorg/antivirus/applocker/a;->a(Z)V

    invoke-virtual {p0}, Lorg/antivirus/applocker/AppBlockService;->stopSelf()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_3
        0x79 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xdd -> :sswitch_0
        0xde -> :sswitch_4
    .end sparse-switch
.end method
