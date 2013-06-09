.class public Lorg/antivirus/core/receivers/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final DAILY_INTERVAL:J = 0x5265c00L

.field public static final NEVER_INTERVAL:J = -0x1L

.field public static final WEEKLY_INTERVAL:J = 0x240c8400L

.field public static final c_alarmCode:Ljava/lang/String; = "alarm_code"

.field public static final c_alarmCodeCheck:I = 0x1

.field public static final c_alarmCodeScan:I = 0x3

.field public static final c_alarmCodeUpdate:I = 0x2

.field public static final c_antivirus:Ljava/lang/String; = "antivirus"

.field public static final c_trafficCounterEndPeriod:I = 0x5

.field public static final c_trafficCounterRefresh:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isValidInterval(J)Z
    .locals 2

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v0, p0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x240c8400

    cmp-long v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    const-string v0, "antivirus"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "antivirus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lorg/antivirus/core/AVCoreService;->SERVICE_IDENTIFIER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "__SAC"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    const-string v2, "alarm_code"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string v0, "Invalid alarm"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method
