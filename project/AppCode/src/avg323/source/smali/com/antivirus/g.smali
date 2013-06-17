.class public Lcom/antivirus/g;
.super Lcom/antivirus/core/scanners/a;


# instance fields
.field a:Lcom/avg/toolkit/RecurringTasks/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/antivirus/core/b;Ljava/util/ArrayList;Lcom/avg/widget/g;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/antivirus/core/scanners/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/antivirus/core/b;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/c;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "1"

    const v2, 0x7f09023f

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "8"

    const v2, 0x7f090240

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "9"

    const v2, 0x7f090241

    invoke-static {p0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(II)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    const v1, 0x7f020069

    iget-object v3, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const v3, 0x7f0900d8

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-class v6, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string v5, "ScannerClient"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget v5, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/app/Notification;->defaults:I

    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-class v6, Lcom/antivirus/ui/main/HandheldMainActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;II)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020069

    iget-object v3, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const v2, 0x7f0900d8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v3, p3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget v5, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v1, Landroid/app/Notification;->defaults:I

    const/16 v5, 0x10

    iput v5, v1, Landroid/app/Notification;->flags:I

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/g;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/g;->b(II)V

    return-void
.end method

.method static synthetic b(Lcom/antivirus/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(II)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    const v1, 0x7f020069

    iget-object v3, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const v3, 0x7f0900d8

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-class v6, Lcom/antivirus/ui/scan/results/ScanResultsActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-class v6, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "antivirus.notification.SCAN_RESULTS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "EXTRA_GOTO"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const/high16 v5, 0x3000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "ScannerClient"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "from_notification"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v5, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget v5, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/app/Notification;->defaults:I

    const/16 v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-class v6, Lcom/antivirus/ui/scan/results/ScanResultsActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/antivirus/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 10

    const-wide/32 v4, 0x5265c00

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->d()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_0
    invoke-virtual {v0, v2, v3}, Lcom/antivirus/core/b;->c(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    const-wide v6, 0x4194997000000000L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-long v6, v6

    add-long/2addr v2, v6

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0, v2, v3}, Lcom/antivirus/core/b;->b(J)V

    invoke-super {p0}, Lcom/antivirus/core/scanners/a;->c()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-class v6, Lcom/avg/toolkit/RecurringTasks/AlarmReceiver;

    invoke-direct {v2, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "securityUpdate"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "alarm_code"

    const/16 v6, 0x7d0

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "alarm_code2"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v3, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v2, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v2}, Lcom/antivirus/core/b;->d()J

    move-result-wide v2

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->e()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    invoke-super {p0}, Lcom/antivirus/core/scanners/a;->c()V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 9

    const/16 v8, 0x10

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/antivirus/core/scanners/ad;

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-direct {v1, v0}, Lcom/antivirus/core/scanners/ad;-><init>(Lcom/antivirus/core/b;)V

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/avg/ui/general/c/i;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/antivirus/core/scanners/ad;->b(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, v1, Lcom/antivirus/core/scanners/ad;->a:Lcom/antivirus/core/scanners/e;

    iget-boolean v1, v1, Lcom/antivirus/core/scanners/e;->a:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-class v3, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x2442

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "default_tab_name"

    sget-object v3, Lcom/antivirus/ui/callmessagefilter/fragment/n;->b:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "default_filter_option"

    sget-object v3, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->b:Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    invoke-virtual {v3}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const v3, 0x7f090239

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020122

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const v6, 0x7f090206

    invoke-static {v5, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput v8, v3, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const v6, 0x7f090207

    invoke-static {v5, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method a(ILcom/antivirus/core/scanners/c;Ljava/lang/Object;)V
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const v1, 0x7f09015a

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const v2, 0x7f09015c

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    check-cast p3, Lcom/antivirus/core/scanners/ScannerSmsResult;

    invoke-super {p0, v0, v1, p2, p3}, Lcom/antivirus/core/scanners/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ScannerSmsResult;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    check-cast p3, Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-super {p0, p2, p3}, Lcom/antivirus/core/scanners/a;->a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ScannerFilesResult;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    check-cast p3, Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-super {p0, p2, p3}, Lcom/antivirus/core/scanners/a;->a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/core/scanners/ScannerPackagesResult;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/g;->a:Lcom/avg/toolkit/RecurringTasks/b;

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/avg/toolkit/RecurringTasks/b;->a(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    sget-object v1, Lcom/antivirus/l;->b:Lcom/antivirus/l;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/antivirus/g;->a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/l;Lcom/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/antivirus/g;->a:Lcom/avg/toolkit/RecurringTasks/b;

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/RecurringTasks/b;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "alarm_code2"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/antivirus/g;->f()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/antivirus/core/scanners/a;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/l;Lcom/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v2, 0x4

    const/4 v7, 0x1

    sget-object v0, Lcom/antivirus/l;->b:Lcom/antivirus/l;

    if-ne p2, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v3}, Lcom/antivirus/core/b;->g()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v5}, Lcom/antivirus/core/b;->f()J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v3}, Lcom/antivirus/core/b;->f()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v3, v0, v1}, Lcom/antivirus/core/b;->d(J)V

    :cond_2
    sget-object v0, Lcom/antivirus/l;->b:Lcom/antivirus/l;

    if-ne p2, v0, :cond_3

    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    if-ne p1, v0, :cond_3

    invoke-super {p0, p1}, Lcom/antivirus/core/scanners/a;->b(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v0

    iget-wide v0, v0, Lcom/antivirus/core/scanners/h;->a:J

    cmp-long v3, v0, v8

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    :cond_3
    if-nez p3, :cond_b

    new-instance v3, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    invoke-direct {v3}, Lcom/antivirus/core/scanners/ScannerFilesConfig;-><init>()V

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x1869f

    :goto_1
    iput v0, v3, Lcom/antivirus/core/scanners/ScannerFilesConfig;->g:I

    :goto_2
    iget-object v0, v3, Lcom/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v0, v4, :cond_8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v1, v3, Lcom/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v0, Lcom/antivirus/k;->a:[I

    invoke-virtual {p1}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/io/File;

    const-string v4, "/mnt"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_8
    move-object v0, v1

    goto :goto_3

    :pswitch_0
    const/4 v2, -0x1

    sget-object v0, Lcom/antivirus/l;->a:Lcom/antivirus/l;

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    :goto_4
    sget-object v0, Lcom/antivirus/l;->a:Lcom/antivirus/l;

    if-ne p2, v0, :cond_a

    new-instance v1, Lcom/antivirus/h;

    invoke-direct {v1, p0}, Lcom/antivirus/h;-><init>(Lcom/antivirus/g;)V

    :goto_5
    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/avg/ui/general/c/i;->b(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v4, p4

    move-object v5, p1

    invoke-super/range {v0 .. v6}, Lcom/antivirus/core/scanners/a;->a(Lcom/antivirus/core/scanners/j;ILcom/antivirus/core/scanners/m;Landroid/os/Messenger;Lcom/antivirus/core/scanners/c;Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    goto :goto_4

    :pswitch_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    goto :goto_4

    :pswitch_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/antivirus/core/scanners/ScannerFilesConfig;->d:Ljava/lang/Boolean;

    goto :goto_4

    :cond_a
    const v0, 0x7f090157

    const v1, 0x7f090158

    invoke-direct {p0, v0, v1}, Lcom/antivirus/g;->a(II)V

    new-instance v1, Lcom/antivirus/i;

    invoke-direct {v1, p0}, Lcom/antivirus/i;-><init>(Lcom/antivirus/g;)V

    goto :goto_5

    :cond_b
    move-object v3, p3

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V
    .locals 4

    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, p2}, Lcom/antivirus/core/scanners/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "firstScan"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "threatFound"

    invoke-virtual {p1}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ScannerClient"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "threatCount"

    invoke-virtual {p1}, Lcom/antivirus/core/scanners/h;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_plugin_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const/16 v2, 0x61a8

    const/16 v3, 0x8

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 9

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/antivirus/core/scanners/a;->a(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-class v2, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/antivirus/core/scanners/z;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/antivirus/core/b;->d(J)V

    :cond_0
    invoke-direct {p0}, Lcom/antivirus/g;->f()V

    new-instance v0, Lcom/avg/toolkit/RecurringTasks/b;

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-string v2, "SNCAS"

    const-wide/32 v3, 0x5265c00

    const/16 v7, 0x7d0

    move v6, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/avg/toolkit/RecurringTasks/b;-><init>(Landroid/content/Context;Ljava/lang/String;JZZIZ)V

    iput-object v0, p0, Lcom/antivirus/g;->a:Lcom/avg/toolkit/RecurringTasks/b;

    return-void

    :cond_1
    move v0, v5

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "__SAC2"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/antivirus/core/scanners/a;->b(Landroid/os/Bundle;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    sget-object v1, Lcom/antivirus/l;->b:Lcom/antivirus/l;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/antivirus/g;->a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/l;Lcom/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V

    goto :goto_1

    :sswitch_1
    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    sget-object v1, Lcom/antivirus/l;->c:Lcom/antivirus/l;

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/antivirus/g;->a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/l;Lcom/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/antivirus/g;->d(Landroid/os/Bundle;)V

    goto :goto_1

    :sswitch_3
    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/c;

    sget-object v3, Lcom/antivirus/l;->a:Lcom/antivirus/l;

    const-string v1, "ScannerConfig"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    const-string v2, "__SAH"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/antivirus/g;->a(Lcom/antivirus/core/scanners/c;Lcom/antivirus/l;Lcom/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lcom/antivirus/g;->a()V

    goto :goto_1

    :sswitch_5
    const-string v0, "__SAD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "ScannerClient"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/c;

    const-string v2, "ScannerResult"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/antivirus/g;->a(ILcom/antivirus/core/scanners/c;Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/antivirus/g;->c(Landroid/os/Bundle;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0xb -> :sswitch_6
        0x6a -> :sswitch_0
        0x6b -> :sswitch_1
    .end sparse-switch
.end method

.method c(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "pkgname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "catname"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-class v5, Lcom/antivirus/ui/scan/UnInstall;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "categtory"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appName"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1800

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "suspicious"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, ""

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method d(Landroid/os/Bundle;)V
    .locals 8

    invoke-static {}, Lcom/antivirus/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, ""

    :try_start_0
    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    const-string v1, "package:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updating"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-string v2, "U"

    invoke-static {v1, v0, v2}, Lcom/antivirus/core/d/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    move-object v2, v0

    :goto_2
    :try_start_2
    invoke-static {}, Lcom/antivirus/ui/backup/apps/ah;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/antivirus/ui/backup/apps/ah;->G()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/antivirus/ui/backup/apps/ah;->G()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const v3, 0x7f090159

    const v4, 0x7f090159

    invoke-direct {p0, v1, v3, v4}, Lcom/antivirus/g;->a(Landroid/content/Context;II)V

    new-instance v1, Lcom/avg/ui/general/c/c;

    const/16 v3, 0xf

    const-wide/16 v4, 0x1b58

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/avg/ui/general/c/c;-><init>(Landroid/app/NotificationManager;IJ)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    new-instance v1, Lcom/antivirus/j;

    invoke-direct {v1, p0}, Lcom/antivirus/j;-><init>(Lcom/antivirus/g;)V

    new-instance v3, Lcom/antivirus/core/scanners/ScannerPackagesConfig;

    invoke-direct {v3}, Lcom/antivirus/core/scanners/ScannerPackagesConfig;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v3, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->b:Ljava/lang/Boolean;

    iget-object v0, v3, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/g;->c:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x1869f

    :goto_4
    iput v0, v3, Lcom/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/antivirus/core/scanners/c;->c:Lcom/antivirus/core/scanners/c;

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/avg/ui/general/c/i;->b(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    invoke-super/range {v0 .. v6}, Lcom/antivirus/core/scanners/a;->a(Lcom/antivirus/core/scanners/j;ILcom/antivirus/core/scanners/m;Landroid/os/Messenger;Lcom/antivirus/core/scanners/c;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-string v2, "A"

    invoke-static {v1, v0, v2}, Lcom/antivirus/core/d/a/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v2, v1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :cond_4
    const/4 v0, 0x5

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/g;->a:Lcom/avg/toolkit/RecurringTasks/b;

    iget-object v1, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/avg/toolkit/RecurringTasks/b;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/g;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-super {p0}, Lcom/antivirus/core/scanners/a;->onDestroy()V

    return-void
.end method
