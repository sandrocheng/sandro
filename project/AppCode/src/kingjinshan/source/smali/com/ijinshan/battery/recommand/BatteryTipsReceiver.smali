.class public Lcom/ijinshan/battery/recommand/BatteryTipsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryTipsReceiver.java"


# instance fields
.field private final a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    const/16 v0, 0x1e

    iput v0, p0, Lcom/ijinshan/battery/recommand/BatteryTipsReceiver;->a:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/battery/recommand/BatteryTipsReceiver;->b:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0b0319

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "level"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_0

    .line 47
    invoke-static {p1}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 54
    const-string v3, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    :goto_1
    if-nez v0, :cond_2

    .line 62
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    .line 63
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v4, "notifylowbattery"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v0}, Lcom/keniu/security/MoSecurityApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 72
    const v2, 0x7f0b030c

    invoke-virtual {v0, v2}, Lcom/keniu/security/MoSecurityApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x119

    const v6, 0x7f020008

    move v2, v1

    invoke-static/range {v0 .. v6}, Lcom/keniu/security/util/au;->a(Landroid/content/Context;IILjava/lang/String;Landroid/app/PendingIntent;II)V

    .line 83
    :cond_2
    const-string v0, "com.ijinshan.mguard_preferences"

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    const-string v1, "battery_low_notified"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    iget-boolean v0, p0, Lcom/ijinshan/battery/recommand/BatteryTipsReceiver;->b:Z

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    iput-boolean v8, p0, Lcom/ijinshan/battery/recommand/BatteryTipsReceiver;->b:Z

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method
