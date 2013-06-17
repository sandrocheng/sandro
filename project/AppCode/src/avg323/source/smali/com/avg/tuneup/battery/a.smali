.class public Lcom/avg/tuneup/battery/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/avg/tuneup/battery/b;

.field private b:Lcom/avg/tuneup/battery/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0xb

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-static {}, Lcom/avg/tuneup/j;->n()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "level"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "status"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/avg/tuneup/j;->p()I

    move-result v2

    invoke-static {}, Lcom/avg/tuneup/j;->o()I

    move-result v3

    if-gt v1, v3, :cond_4

    if-eq v0, v5, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.antivirus.ui.tablet.DualPaneActivity"

    const-string v3, "EXTRA_GOTO"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "antivirus.notification.BATTERY"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x2442

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "from_notification"

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/avg/a/g;->battery_notification_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    sget v4, Lcom/avg/a/d;->notification_low_battery:I

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    sget v4, Lcom/avg/a/g;->battery_notification_body:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_3

    const-string v0, "getSystemService(Context.NOTIFICATION_SERVICE) returned null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :goto_3
    invoke-static {v1}, Lcom/avg/tuneup/j;->h(I)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "com.antivirus.ui.performance.battery.AvBatterySaveSettingsActivity"

    goto :goto_1

    :catch_0
    move-exception v0

    const-class v0, Lcom/avg/tuneup/battery/BatterySaveSettingsActivity;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_0

    invoke-static {v4}, Lcom/avg/tuneup/j;->h(I)V

    if-ne v0, v5, :cond_0

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/avg/tuneup/j;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/battery/a;->a:Lcom/avg/tuneup/battery/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avg/tuneup/battery/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avg/tuneup/battery/b;-><init>(I)V

    iput-object v0, p0, Lcom/avg/tuneup/battery/a;->a:Lcom/avg/tuneup/battery/b;

    iget-object v0, p0, Lcom/avg/tuneup/battery/a;->a:Lcom/avg/tuneup/battery/b;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/avg/tuneup/battery/a;->a:Lcom/avg/tuneup/battery/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/battery/a;->a:Lcom/avg/tuneup/battery/b;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/tuneup/battery/a;->a:Lcom/avg/tuneup/battery/b;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0x61a8

    const/16 v1, 0x8

    invoke-static {}, Lcom/avg/tuneup/battery/widget/BatteryWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/battery/a;->b:Lcom/avg/tuneup/battery/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avg/tuneup/battery/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/avg/tuneup/battery/b;-><init>(I)V

    iput-object v0, p0, Lcom/avg/tuneup/battery/a;->b:Lcom/avg/tuneup/battery/b;

    iget-object v0, p0, Lcom/avg/tuneup/battery/a;->b:Lcom/avg/tuneup/battery/b;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/avg/tuneup/battery/a;->b:Lcom/avg/tuneup/battery/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/battery/a;->b:Lcom/avg/tuneup/battery/b;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/tuneup/battery/a;->b:Lcom/avg/tuneup/battery/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
