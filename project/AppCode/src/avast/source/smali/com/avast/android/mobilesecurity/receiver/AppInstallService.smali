.class public Lcom/avast/android/mobilesecurity/receiver/AppInstallService;
.super Landroid/app/IntentService;
.source "AppInstallService.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    sput-object v0, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "AppInstallService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method private a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 146
    const-string v0, "rescan"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const/high16 v0, 0x1000

    invoke-static {p0, v6, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 149
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 151
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->b:J

    sub-long/2addr v0, v2

    .line 120
    sget-object v2, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v1, "rescan"

    invoke-virtual {p1, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 53
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scanning newly installed application:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 56
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/avast/android/mobilesecurity/t;

    .line 58
    if-nez v9, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const-string v0, "Update itself"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/avast/android/mobilesecurity/receiver/a;

    invoke-direct {v0, p0, v8}, Lcom/avast/android/mobilesecurity/receiver/a;-><init>(Lcom/avast/android/mobilesecurity/receiver/AppInstallService;Lcom/avast/android/mobilesecurity/t;)V

    new-array v1, v11, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "common"

    const-string v3, "appUpdated"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v3, v10, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 77
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->e:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 83
    const-string v0, "eulaDone"

    invoke-virtual {v8, v0, v11}, Lcom/avast/android/mobilesecurity/t;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0, v1, v10}, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 85
    if-nez v0, :cond_3

    .line 87
    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    invoke-direct {p0, v1, v2}, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 93
    :cond_3
    if-eqz v0, :cond_6

    .line 94
    sget-object v1, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->a:Ljava/lang/String;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    invoke-virtual {v8}, Lcom/avast/android/mobilesecurity/t;->ag()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v8}, Lcom/avast/android/mobilesecurity/t;->ai()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    const/4 v2, 0x2

    invoke-static {p0, v0, v2}, Lcom/avast/android/mobilesecurity/app/scanner/OnDemandScannerScanService;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)V

    .line 99
    :cond_4
    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorScanService;->a(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 100
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->a:Ljava/lang/String;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->b:J

    .line 103
    :cond_5
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_6
    if-nez v9, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/receiver/AppInstallService;->a(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
