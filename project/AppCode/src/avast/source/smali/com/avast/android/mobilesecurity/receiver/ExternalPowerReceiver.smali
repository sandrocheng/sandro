.class public Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExternalPowerReceiver.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a:Ljava/lang/Object;

    .line 38
    const/4 v0, -0x1

    sput v0, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 65
    sget-object v1, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    sget v0, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->b:I

    if-ne v0, v2, :cond_0

    .line 67
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->b(Landroid/content/Context;)I

    move-result v0

    .line 68
    if-eq v0, v2, :cond_1

    .line 69
    sput v0, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->b:I

    .line 83
    :cond_0
    sget v0, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->b:I

    monitor-exit v1

    :goto_0
    return v0

    .line 77
    :cond_1
    invoke-static {}, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(I)V
    .locals 2
    .parameter

    .prologue
    .line 94
    sget-object v1, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sput p0, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->b:I

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 111
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_0

    .line 115
    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 117
    if-nez v1, :cond_1

    .line 120
    invoke-static {}, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 124
    const/16 v0, 0xa

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    const-string v1, "ExternalPowerReceiver"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-static {}, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->b(Landroid/content/Context;)I

    move-result v0

    .line 48
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 49
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/receiver/ExternalPowerReceiver;->a(I)V

    .line 53
    :cond_1
    return-void
.end method
