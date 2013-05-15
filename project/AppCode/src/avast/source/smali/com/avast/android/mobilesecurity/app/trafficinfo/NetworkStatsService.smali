.class public Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;
.super Landroid/app/Service;
.source "NetworkStatsService.java"


# static fields
.field public static a:Z

.field public static b:J

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:Landroid/os/PowerManager$WakeLock;

.field private static volatile o:Lcom/avast/android/mobilesecurity/app/trafficinfo/d;

.field private static final q:Ljava/lang/Object;

.field private static final r:Ljava/lang/Object;

.field private static final s:Ljava/lang/Object;


# instance fields
.field private g:Z

.field private h:Ljava/util/HashMap;

.field private i:Landroid/content/pm/PackageManager;

.field private j:Landroid/app/AlarmManager;

.field private k:Landroid/net/ConnectivityManager;

.field private l:Landroid/app/PendingIntent;

.field private m:Z

.field private volatile n:Landroid/os/Looper;

.field private p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c:J

    .line 51
    sget-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c:J

    sput-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->d:J

    .line 52
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->e:J

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    .line 78
    const-wide/32 v0, -0x3b9ac9ff

    sput-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->q:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->r:Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->g:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->i:Landroid/content/pm/PackageManager;

    .line 75
    iput-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m:Z

    .line 119
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    .line 486
    return-void
.end method

.method private a(Landroid/net/NetworkInfo;)Lcom/avast/android/mobilesecurity/app/trafficinfo/c;
    .locals 3
    .parameter

    .prologue
    .line 133
    new-instance v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    invoke-direct {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;-><init>()V

    .line 135
    if-nez p1, :cond_0

    .line 137
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 138
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/f;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    .line 139
    const/4 v0, -0x1

    iput v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->d:I

    .line 140
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    move-object v0, v1

    .line 161
    :goto_0
    return-object v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    :goto_1
    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 147
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 151
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 152
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/f;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    .line 159
    :goto_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->d:I

    move-object v0, v1

    .line 161
    goto :goto_0

    .line 145
    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    :goto_3
    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    .line 156
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/f;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    goto :goto_2

    .line 155
    :cond_4
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 167
    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 168
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 686
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    :goto_0
    return-void

    .line 689
    :cond_0
    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 690
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->f:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 692
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 694
    const/4 v2, 0x1

    const-string v3, "AWS NW Stats"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->f:Landroid/os/PowerManager$WakeLock;

    .line 697
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 699
    const-class v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 498
    .line 502
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a()V

    .line 504
    const/4 v0, 0x0

    .line 506
    if-eqz p1, :cond_12

    .line 507
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 509
    :goto_0
    sget-object v5, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->q:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 511
    :try_start_1
    const-string v0, "AvastMobileSecurityNetworkInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling network info intent "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->g:Z

    if-nez v0, :cond_11

    .line 517
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->j:Landroid/app/AlarmManager;

    .line 519
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->k:Landroid/net/ConnectivityManager;

    .line 520
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->i:Landroid/content/pm/PackageManager;

    .line 522
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->k:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 523
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/net/NetworkInfo;)Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 533
    :try_start_2
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v1

    move v0, v1

    .line 548
    :goto_1
    const/4 v6, 0x1

    :try_start_3
    iput-boolean v6, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->g:Z

    .line 550
    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->k:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 551
    invoke-direct {p0, v6}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/net/NetworkInfo;)Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    move-result-object v6

    .line 553
    if-nez v4, :cond_c

    .line 583
    :cond_0
    :goto_2
    iget-object v4, v6, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    if-eq v4, v7, :cond_2

    .line 585
    const-string v2, "AvastMobileSecurityNetworkInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connectivity state change "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v6, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget-boolean v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    if-eqz v2, :cond_1

    .line 589
    const-string v2, "AvastMobileSecurityNetworkInfoUid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connectivity state change "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v6, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v2, v1

    .line 594
    :cond_2
    iget-object v4, v6, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    if-eq v4, v7, :cond_4

    .line 596
    const-string v2, "AvastMobileSecurityNetworkInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network type change "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v6, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    sget-boolean v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    if-eqz v2, :cond_3

    .line 600
    const-string v2, "AvastMobileSecurityNetworkInfoUid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network type change "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v6, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->c:Lcom/avast/android/mobilesecurity/app/trafficinfo/f;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v2, v1

    .line 605
    :cond_4
    iget-object v4, v6, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    if-eq v4, v7, :cond_6

    .line 607
    const-string v2, "AvastMobileSecurityNetworkInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Roaming change "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v6, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    sget-boolean v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    if-eqz v2, :cond_5

    .line 611
    const-string v2, "AvastMobileSecurityNetworkInfoUid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Roaming change "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v7, v7, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v6, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v2, v1

    .line 617
    :cond_6
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    const-string v7, "AvastMobileSecurityNetworkInfo"

    invoke-virtual {v4, v7}, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a(Ljava/lang/String;)V

    .line 619
    sget-boolean v4, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    if-eqz v4, :cond_7

    .line 620
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    const-string v7, "AvastMobileSecurityNetworkInfoUid"

    invoke-virtual {v4, v7}, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a(Ljava/lang/String;)V

    .line 622
    :cond_7
    if-eqz v2, :cond_8

    move v0, v1

    .line 627
    :cond_8
    if-eqz v0, :cond_9

    .line 629
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b()V

    .line 631
    :cond_9
    if-eqz v3, :cond_a

    .line 633
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->d()V

    .line 636
    :cond_a
    if-eqz v2, :cond_b

    .line 638
    iput-object v6, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    .line 640
    :cond_b
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 643
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m()V

    .line 645
    :goto_3
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 538
    :try_start_4
    const-string v1, "AvastAntiTheft"

    const-string v2, "Issue reading network stats service data"

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->g:Z

    .line 541
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 643
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m()V

    goto :goto_3

    .line 557
    :cond_c
    :try_start_5
    const-string v7, "com.avast.android.mobilesecurity.action.CLEAN_DATA"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 559
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h()V

    .line 560
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 643
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m()V

    goto :goto_3

    .line 562
    :cond_d
    :try_start_6
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    move v0, v1

    .line 565
    goto/16 :goto_2

    .line 566
    :cond_f
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 568
    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 570
    const-string v7, "com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    move v0, v1

    .line 572
    goto/16 :goto_2

    .line 573
    :cond_10
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 575
    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->q:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 576
    :try_start_7
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->k()V

    .line 577
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 643
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m()V

    goto :goto_3

    .line 578
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    .line 640
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 643
    :catchall_2
    move-exception v0

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m()V

    throw v0

    :cond_11
    move v3, v2

    move v0, v2

    goto/16 :goto_1

    :cond_12
    move-object v4, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public static c()Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 651
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 659
    :goto_0
    return v0

    .line 654
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 655
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->l:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->j:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 181
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->l:Landroid/app/PendingIntent;

    .line 184
    const-string v0, "AvastMobileSecurityNetworkInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm manager poll interval is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 187
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->j:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    sget-wide v4, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->d:J

    add-long/2addr v2, v4

    sget-wide v4, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->d:J

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->l:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 189
    return-void
.end method

.method private e()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/c;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    sget-object v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/e;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/e;

    if-ne v0, v2, :cond_6

    .line 203
    const-string v0, "AvastMobileSecurityNetworkInfo"

    const-string v2, "Performing poll"

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 208
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 210
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 212
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 216
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    int-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 222
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aL()I

    move-result v4

    .line 224
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v9, v1

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Long;

    .line 226
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    move-object v2, v0

    .line 232
    :cond_1
    if-nez v2, :cond_3

    .line 234
    :try_start_0
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    invoke-direct/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;-><init>(JLcom/avast/android/mobilesecurity/app/trafficinfo/c;ILjava/util/Date;J)V

    .line 235
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 241
    :goto_2
    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_7

    move v0, v10

    .line 244
    :goto_3
    :try_start_1
    sget-boolean v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-wide v12, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    cmp-long v1, v8, v12

    if-nez v1, :cond_2

    .line 246
    const-string v1, "AvastMobileSecurityNetworkInfoUid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Poll for UID "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v8, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", begin dump:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "AvastMobileSecurityNetworkInfoUid"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Ljava/lang/String;Z)V

    .line 248
    const-string v1, "AvastMobileSecurityNetworkInfoUid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Poll for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v8, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end dump."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_4
    move v9, v0

    .line 263
    goto/16 :goto_1

    .line 238
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    invoke-virtual/range {v2 .. v7}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/c;ILjava/util/Date;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 259
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v9

    .line 261
    :goto_5
    const-string v2, "AvastMobileSecurityNetworkInfo"

    const-string v3, "Problem in poll"

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 265
    :cond_4
    iput-boolean v10, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m:Z

    .line 267
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->j()V

    .line 269
    if-eqz v9, :cond_5

    .line 271
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->f()V

    .line 274
    :cond_5
    const-string v0, "AvastMobileSecurityNetworkInfo"

    const-string v1, "Poll performed"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_6
    return-void

    .line 259
    :catch_1
    move-exception v1

    goto :goto_5

    :cond_7
    move v0, v9

    goto :goto_3
.end method

.method private f()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 299
    sget-object v3, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->q:Ljava/lang/Object;

    monitor-enter v3

    .line 300
    :try_start_0
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m:Z

    if-eqz v0, :cond_3

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 303
    const-string v0, "AvastMobileSecurityNetworkInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Writing network info data at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "..."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 309
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 312
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    move v2, v1

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 314
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    .line 315
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 317
    const-string v10, "AvastMobileSecurityNetworkInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Writing UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1, v8}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Ljava/util/ArrayList;)V

    .line 319
    add-int/lit8 v2, v2, 0x1

    .line 322
    :cond_1
    sget-boolean v10, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-wide v12, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 324
    const-string v10, "AvastMobileSecurityNetworkInfoUid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Write for UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", begin dump:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v10, "AvastMobileSecurityNetworkInfoUid"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Ljava/lang/String;Z)V

    .line 326
    const-string v1, "AvastMobileSecurityNetworkInfoUid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Write for UID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", end dump."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 340
    :catch_0
    move-exception v0

    move v1, v2

    .line 341
    :goto_1
    :try_start_3
    const-string v2, "AvastMobileSecurityNetworkInfo"

    const-string v6, "Can not write network info data"

    invoke-static {v2, v6, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v1

    .line 346
    :goto_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 347
    const-string v6, "AvastMobileSecurityNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrote network info data at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " successfully (took "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long/2addr v0, v4

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->j()V

    .line 350
    if-lez v2, :cond_2

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    const-string v1, "com.avast.android.mobilesecurity.trafficinfo.STATS_DB_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-static {v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 355
    const-string v1, "com.avast.android.generic.CENTRAL_SERVICE_PERMISSION"

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 358
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m:Z

    .line 360
    :cond_3
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 361
    return-void

    .line 331
    :cond_4
    :try_start_5
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.avast.android.mobilesecurity"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 337
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 339
    const-string v8, "AvastMobileSecurityNetworkInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Write duration is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long/2addr v0, v6

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 342
    :catchall_0
    move-exception v0

    :try_start_7
    throw v0

    .line 360
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 332
    :catch_1
    move-exception v0

    .line 333
    :try_start_8
    const-string v1, "AvastMobileSecurity"

    const-string v6, "Exception while inserting restore element"

    invoke-static {v1, v6, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 340
    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method private g()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 365
    sget-object v8, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->q:Ljava/lang/Object;

    monitor-enter v8

    .line 366
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 367
    const-string v2, "AvastMobileSecurityNetworkInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading network info data at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v9

    .line 370
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v11

    .line 372
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-nez v0, :cond_0

    .line 373
    monitor-exit v8

    .line 455
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 377
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 378
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aL()I

    move-result v7

    .line 380
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 382
    invoke-static {}, Lcom/avast/android/mobilesecurity/r;->a()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/avast/android/mobilesecurity/r;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 384
    if-eqz v1, :cond_3

    .line 388
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Landroid/database/Cursor;Ljava/util/HashMap;)Lcom/avast/android/mobilesecurity/app/trafficinfo/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 400
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 405
    :cond_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 412
    :cond_3
    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 413
    const-string v2, "AvastMobileSecurityNetworkInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read network info data at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 416
    const/4 v6, 0x0

    .line 417
    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    .line 420
    iget-wide v1, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->b:J

    cmp-long v1, v9, v1

    if-ltz v1, :cond_4

    iget-wide v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->c:J

    cmp-long v0, v11, v0

    if-gez v0, :cond_5

    .line 425
    :cond_4
    const/4 v6, 0x1

    .line 429
    :cond_5
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 432
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    .line 434
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->p:Lcom/avast/android/mobilesecurity/app/trafficinfo/c;

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(ZLcom/avast/android/mobilesecurity/app/trafficinfo/c;Ljava/util/Date;JZI)V

    goto :goto_3

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 395
    :catch_0
    move-exception v0

    .line 397
    :try_start_6
    const-string v2, "AvastMobileSecurityNetworkInfo"

    const-string v3, "Can not read network info"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 404
    :catchall_1
    move-exception v0

    .line 405
    if-eqz v1, :cond_6

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 408
    :cond_6
    :goto_4
    :try_start_8
    throw v0

    .line 437
    :cond_7
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->j()V

    .line 439
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    if-eqz v0, :cond_8

    .line 441
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    sget-wide v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 442
    if-eqz v0, :cond_9

    .line 444
    const-string v0, "AvastMobileSecurityNetworkInfoUid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", begin dump:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    sget-wide v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    const-string v1, "AvastMobileSecurityNetworkInfoUid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Ljava/lang/String;Z)V

    .line 446
    const-string v0, "AvastMobileSecurityNetworkInfoUid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end dump."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_8
    :goto_5
    iput-boolean v6, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m:Z

    .line 454
    monitor-exit v8

    goto/16 :goto_0

    .line 449
    :cond_9
    const-string v0, "AvastMobileSecurityNetworkInfoUid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", no network data available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 407
    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_4
.end method

.method private h()V
    .locals 4

    .prologue
    .line 458
    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 460
    :try_start_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 466
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 463
    const-string v2, "AvastMobileSecurityNetworkInfo"

    const-string v3, "Clean data failed"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 475
    invoke-static {}, Lcom/avast/android/mobilesecurity/r;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 479
    const-string v1, "com.avast.android.mobilesecurity.trafficinfo.STATS_DB_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    invoke-static {v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 481
    const-string v1, "com.avast.android.generic.CENTRAL_SERVICE_PERMISSION"

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->stopSelf()V

    .line 484
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 664
    invoke-static {}, Lcom/avast/android/generic/util/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    const-string v0, "AvastMobileSecurityNetworkInfo"

    const-string v1, "--- NETWORK POLL DUMP ---"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->h:Ljava/util/HashMap;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    .line 668
    if-eqz v0, :cond_0

    .line 669
    const-string v1, "AvastMobileSecurityNetworkInfo"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Ljava/lang/String;Z)V

    .line 681
    :cond_0
    const-string v0, "AvastMobileSecurityNetworkInfo"

    const-string v1, "--- END NETWORK POLL DUMP ---"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 711
    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 713
    :try_start_0
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->g:Z

    if-eqz v0, :cond_0

    .line 715
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->l()V

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->g:Z

    .line 719
    :cond_0
    monitor-exit v1

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 724
    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->n:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 727
    const/4 v0, 0x0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->o:Lcom/avast/android/mobilesecurity/app/trafficinfo/d;

    .line 728
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->f()V

    .line 731
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->m()V

    .line 732
    return-void

    .line 728
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 736
    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 739
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->f:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 740
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 749
    return-void

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 744
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    if-eqz v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 90
    const-string v1, "com.avast.dummy.traffictester"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 91
    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    sput-boolean v4, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    .line 100
    const-wide/32 v0, -0x3b9ac9ff

    sput-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    .line 101
    sget-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c:J

    sput-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->d:J

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a:Z

    .line 95
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    int-to-long v0, v0

    sput-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    .line 96
    sget-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->e:J

    sput-wide v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->d:J

    .line 97
    const-string v0, "AvastMobileSecurityNetworkInfoUid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found traffic tester app with UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabling UID tracing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->g:Z

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->e()V

    .line 197
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->k()V

    .line 707
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 280
    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->o:Lcom/avast/android/mobilesecurity/app/trafficinfo/d;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "NetworkStatsService"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 287
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->n:Landroid/os/Looper;

    .line 288
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/d;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->n:Landroid/os/Looper;

    invoke-direct {v0, p0, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/d;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;Landroid/os/Looper;)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->o:Lcom/avast/android/mobilesecurity/app/trafficinfo/d;

    .line 290
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    sget-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->o:Lcom/avast/android/mobilesecurity/app/trafficinfo/d;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/d;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 293
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 294
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    sget-object v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->o:Lcom/avast/android/mobilesecurity/app/trafficinfo/d;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/d;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void

    .line 290
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
