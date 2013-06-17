.class public Lcom/avg/tuneup/traffic/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/avg/tuneup/traffic/s;

.field private static e:[J


# instance fields
.field private d:Lcom/avg/tuneup/traffic/v;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/Boolean;

.field private h:Z

.field private i:Landroid/content/pm/ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avg/tuneup/traffic/s;->a:[I

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rmnet0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pdp0"

    aput-object v2, v0, v1

    const-string v1, "ppp0"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "rmnet_sdio0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rmnet_sdio1"

    aput-object v2, v0, v1

    const-string v1, "rmnet_sdio2"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "ppp1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pdp_ip0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rmnet1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rmnet2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rmnet3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cdma_rmnet4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avg/tuneup/traffic/s;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/avg/tuneup/traffic/s;->c:Lcom/avg/tuneup/traffic/s;

    new-array v0, v3, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/avg/tuneup/traffic/s;->e:[J

    return-void

    :array_0
    .array-data 0x4
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0xa0t 0xbbt 0xdt 0x0t
        0x40t 0x77t 0x1bt 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/traffic/s;->g:Ljava/lang/Boolean;

    iput-boolean v4, p0, Lcom/avg/tuneup/traffic/s;->h:Z

    new-instance v0, Lcom/avg/tuneup/traffic/v;

    const-string v1, "tdb"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/avg/tuneup/traffic/v;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    iput-object p1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/traffic/s;->g:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/avg/tuneup/traffic/s;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avg/tuneup/traffic/s;->h:Z

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Lcom/avg/tuneup/traffic/s;->i:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->i:Landroid/content/pm/ApplicationInfo;

    const/16 v1, 0x3f5

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->i:Landroid/content/pm/ApplicationInfo;

    const-string v1, "android.process.media"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->i:Landroid/content/pm/ApplicationInfo;

    sget v1, Lcom/avg/a/g;->traffic_media_streaming:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/avg/tuneup/traffic/s;->b(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_1
    throw v0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/avg/tuneup/traffic/s;
    .locals 2

    sget-object v0, Lcom/avg/tuneup/traffic/s;->c:Lcom/avg/tuneup/traffic/s;

    if-nez v0, :cond_1

    const-class v1, Lcom/avg/tuneup/traffic/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avg/tuneup/traffic/s;->c:Lcom/avg/tuneup/traffic/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avg/tuneup/traffic/s;

    invoke-direct {v0, p0}, Lcom/avg/tuneup/traffic/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avg/tuneup/traffic/s;->c:Lcom/avg/tuneup/traffic/s;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/avg/tuneup/traffic/s;->c:Lcom/avg/tuneup/traffic/s;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a([DZ)V
    .locals 11

    const-wide/high16 v9, 0x4059

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    aget-wide v1, p1, v7

    cmpl-double v1, v1, v9

    if-ltz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    sget v2, Lcom/avg/a/g;->traffic_network_usage:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[number]"

    aget-wide v3, p1, v7

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    sget v2, Lcom/avg/a/g;->warning:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->g()I

    move-result v2

    if-gtz v2, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    sget v3, Lcom/avg/a/g;->traffic_network_usage_notification_midnight:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[used]"

    iget-object v4, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    aget-wide v5, p1, v8

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "[total]"

    iget-object v4, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-static {}, Lcom/avg/tuneup/j;->c()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[number]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.antivirus.ui.tablet.DualPaneActivity"

    const-string v4, "EXTRA_GOTO"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "antivirus.notification.DATA_USAGE"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x2442

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "from_notification"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-static {v0, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/app/Notification;

    sget v4, Lcom/avg/a/d;->notification_traffic_warning:I

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/app/Notification;->defaults:I

    if-eqz p2, :cond_5

    const/16 v4, 0xa

    iput v4, v3, Landroid/app/Notification;->flags:I

    :goto_3
    iget-object v4, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    aget-wide v0, p1, v7

    invoke-static {}, Lcom/avg/tuneup/j;->j()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6

    aget-wide v0, p1, v7

    cmpg-double v0, v0, v9

    if-gez v0, :cond_6

    invoke-static {v8}, Lcom/avg/tuneup/j;->f(I)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    if-ne v2, v8, :cond_3

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    sget v3, Lcom/avg/a/g;->traffic_network_usage_notification_day:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[used]"

    iget-object v4, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    aget-wide v5, p1, v8

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    sget v3, Lcom/avg/a/g;->traffic_network_usage_notification:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "[used]"

    iget-object v4, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    aget-wide v5, p1, v8

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "com.antivirus.ui.performance.traffic.AvTrafficMeterActivity"

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-class v0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    goto/16 :goto_2

    :cond_5
    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    goto :goto_3

    :cond_6
    aget-wide v0, p1, v7

    cmpl-double v0, v0, v9

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/avg/tuneup/j;->f(I)V

    goto :goto_4
.end method

.method private a(DZ)Z
    .locals 6

    const-wide/high16 v4, 0x4059

    invoke-static {}, Lcom/avg/tuneup/j;->j()I

    move-result v0

    invoke-static {}, Lcom/avg/tuneup/j;->l()I

    move-result v1

    int-to-double v2, v0

    cmpl-double v2, p1, v2

    if-ltz v2, :cond_0

    cmpg-double v2, p1, v4

    if-gez v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    cmpl-double v2, p1, v4

    if-ltz v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    int-to-double v0, v0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_3

    if-eqz p3, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private b(Z)V
    .locals 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->d()Ljava/util/List;

    move-result-object v10

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/v;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-eqz v7, :cond_0

    if-nez v10, :cond_4

    :cond_0
    if-nez v7, :cond_1

    :try_start_1
    const-string v0, "updateTrafficStatsDB: writeable db is null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_1
    if-nez v10, :cond_2

    const-string v0, "updateTrafficStatsDB: installed apps list is null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_2
    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_0
    return-void

    :cond_4
    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    :goto_1
    if-ltz v9, :cond_5

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "/proc/uid_stat/"

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v2}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;I)J

    move-result-wide v2

    const-string v5, "/proc/uid_stat/"

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v5, v4}, Lcom/avg/tuneup/traffic/s;->b(Ljava/lang/String;I)J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/avg/tuneup/traffic/s;->h:Z

    invoke-virtual/range {v0 .. v6}, Lcom/avg/tuneup/traffic/v;->a(Ljava/lang/String;JJZ)V

    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    sget-object v1, Lcom/avg/tuneup/traffic/s;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/avg/tuneup/traffic/v;->a(Ljava/lang/String;JJZ)V

    :cond_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_7
    :try_start_5
    sget-object v9, Lcom/avg/tuneup/traffic/s;->b:[Ljava/lang/String;

    array-length v10, v9

    :goto_2
    if-ge v8, v10, :cond_6

    aget-object v1, v9, v8

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    const-string v2, "/sys/class/net/"

    const-string v3, "/statistics/rx_bytes"

    invoke-virtual {p0, v2, v1, v3}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "/sys/class/net/"

    const-string v5, "/statistics/tx_bytes"

    invoke-virtual {p0, v4, v1, v5}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/avg/tuneup/traffic/v;->a(Ljava/lang/String;JJZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_3
    :try_start_6
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_8

    :try_start_8
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :cond_8
    :goto_5
    throw v0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/avg/tuneup/traffic/s;->e()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private c(Z)[D
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->g:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/tuneup/traffic/s;->g:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/traffic/s;->b(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [D

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/avg/tuneup/j;->m()Z

    move-result v1

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->b()[D

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/avg/tuneup/j;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    aget-wide v2, v0, v5

    invoke-direct {p0, v2, v3, v1}, Lcom/avg/tuneup/traffic/s;->a(DZ)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/avg/tuneup/traffic/s;->a([DZ)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const/16 v2, 0x61a8

    const/16 v3, 0x8

    invoke-static {}, Lcom/avg/tuneup/traffic/widget/TrafficWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/avg/tuneup/traffic/s;->g:Ljava/lang/Boolean;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/s;->a([D)V

    goto :goto_1
.end method

.method public static e()Z
    .locals 1

    invoke-static {}, Lcom/avg/tuneup/j;->a()Z

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/tuneup/traffic/s;->h:Z

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/tuneup/traffic/s;->h:Z

    :cond_0
    iget-boolean v0, p0, Lcom/avg/tuneup/traffic/s;->h:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)J
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-static {p2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tcp_rcv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    return-void
.end method

.method public a(J)V
    .locals 1

    invoke-static {p1, p2}, Lcom/avg/tuneup/j;->b(J)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avg/tuneup/j;->f(I)V

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->c()V

    return-void
.end method

.method public a([D)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v0, ""

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->g()I

    move-result v1

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    sget v2, Lcom/avg/a/g;->traffic_network_usage_notification_midnight:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[used]"

    iget-object v3, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    aget-wide v4, p1, v4

    double-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "[total]"

    iget-object v2, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-static {}, Lcom/avg/tuneup/j;->c()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[number]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v0, "#.#"

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.antivirus.ui.tablet.DualPaneActivity"

    const-string v4, "EXTRA_GOTO"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "antivirus.notification.DATA_USAGE"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x2442

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-static {v0, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    sget v4, Lcom/avg/a/g;->traffic_network_usage:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[number]"

    aget-wide v5, p1, v6

    invoke-virtual {v2, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    sget v4, Lcom/avg/a/d;->notification_traffic:I

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v4, 0xa

    iput v4, v3, Landroid/app/Notification;->flags:I

    iget-object v4, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    if-ne v1, v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    sget v2, Lcom/avg/a/g;->traffic_network_usage_notification_day:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[used]"

    iget-object v3, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    aget-wide v4, p1, v4

    double-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    sget v2, Lcom/avg/a/g;->traffic_network_usage_notification:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[used]"

    iget-object v3, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    aget-wide v4, p1, v4

    double-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v0, "com.antivirus.ui.performance.traffic.AvTrafficMeterActivity"

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-class v0, Lcom/avg/tuneup/traffic/TrafficMeterActivity;

    goto/16 :goto_2
.end method

.method public a(Z)[D
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/avg/tuneup/traffic/s;->a(ZI)[D

    move-result-object v0

    return-object v0
.end method

.method public a(ZI)[D
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/avg/tuneup/traffic/s;->c(Z)[D

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    if-ge v1, p2, :cond_0

    const-wide/16 v2, 0x190

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1}, Lcom/avg/tuneup/traffic/s;->c(Z)[D

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    return-object v0
.end method

.method public a(I)[J
    .locals 4

    sget-object v0, Lcom/avg/tuneup/traffic/s;->e:[J

    const/4 v1, 0x0

    const-string v2, "/proc/uid_stat/"

    invoke-virtual {p0, v2, p1}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    sget-object v0, Lcom/avg/tuneup/traffic/s;->e:[J

    const/4 v1, 0x1

    const-string v2, "/proc/uid_stat/"

    invoke-virtual {p0, v2, p1}, Lcom/avg/tuneup/traffic/s;->b(Ljava/lang/String;I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    sget-object v0, Lcom/avg/tuneup/traffic/s;->e:[J

    return-object v0
.end method

.method public a(ILjava/lang/String;)[J
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/avg/tuneup/traffic/s;->e:[J

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/avg/tuneup/traffic/s;->e:[J

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    invoke-virtual {v0, p2}, Lcom/avg/tuneup/traffic/v;->b(Ljava/lang/String;)[J

    move-result-object v0

    sput-object v0, Lcom/avg/tuneup/traffic/s;->e:[J

    sget-object v0, Lcom/avg/tuneup/traffic/s;->e:[J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public b(Ljava/lang/String;I)J
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    invoke-static {p2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tcp_snd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public b()[D
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/traffic/s;->b(I)[J

    move-result-object v0

    if-eqz v0, :cond_1

    aget-wide v4, v0, v7

    aget-wide v0, v0, v8

    add-long/2addr v0, v4

    long-to-double v0, v0

    :goto_0
    invoke-static {}, Lcom/avg/tuneup/j;->c()J

    move-result-wide v4

    long-to-double v4, v4

    const/4 v6, 0x2

    new-array v6, v6, [D

    aput-wide v2, v6, v7

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x4059

    mul-double/2addr v2, v0

    div-double/2addr v2, v4

    aput-wide v2, v6, v7

    :cond_0
    aput-wide v0, v6, v8

    return-object v6

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public b(I)[J
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [J

    aput-wide v4, v0, v3

    aput-wide v4, v0, v11

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object v4, Lcom/avg/tuneup/traffic/s;->b:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    iget-object v7, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    if-nez v7, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    invoke-virtual {v7, v6}, Lcom/avg/tuneup/traffic/v;->b(Ljava/lang/String;)[J

    move-result-object v6

    aget-wide v7, v0, v3

    aget-wide v9, v6, v3

    add-long/2addr v7, v9

    aput-wide v7, v0, v3

    aget-wide v7, v0, v11

    aget-wide v9, v6, v11

    add-long v6, v7, v9

    aput-wide v6, v0, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public c()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    invoke-virtual {v2}, Lcom/avg/tuneup/traffic/v;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    const-string v2, "mobiletraffictotaltable"

    invoke-virtual {v1, v2}, Lcom/avg/tuneup/traffic/v;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    invoke-virtual {v1, v6}, Lcom/avg/tuneup/traffic/v;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    sget-object v1, Lcom/avg/tuneup/traffic/s;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/avg/tuneup/traffic/v;->a(Ljava/lang/String;JJ)V

    :cond_0
    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->d()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "/proc/uid_stat/"

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v2}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;I)J

    move-result-wide v2

    const-string v5, "/proc/uid_stat/"

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v5, v4}, Lcom/avg/tuneup/traffic/s;->b(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/avg/tuneup/traffic/v;->a(Ljava/lang/String;JJ)V

    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/avg/tuneup/traffic/s;->b:[Ljava/lang/String;

    array-length v9, v8

    move v7, v0

    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v1, v8, v7

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->d:Lcom/avg/tuneup/traffic/v;

    const-string v2, "/sys/class/net/"

    const-string v3, "/statistics/rx_bytes"

    invoke-virtual {p0, v2, v1, v3}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "/sys/class/net/"

    const-string v5, "/statistics/tx_bytes"

    invoke-virtual {p0, v4, v1, v5}, Lcom/avg/tuneup/traffic/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/avg/tuneup/traffic/v;->a(Ljava/lang/String;JJ)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v0

    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_4
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method public d()Ljava/util/List;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->i:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public f()Ljava/util/Calendar;
    .locals 6

    const/4 v0, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Lcom/avg/tuneup/j;->k()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v2, Ljava/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-static {}, Lcom/avg/tuneup/j;->f()I

    move-result v1

    invoke-static {}, Lcom/avg/tuneup/j;->e()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {v2, v0, v1}, Ljava/util/GregorianCalendar;->add(II)V

    return-object v2

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public g()I
    .locals 6

    const-wide/16 v4, 0x3c

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->f()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    long-to-int v0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public h()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/avg/tuneup/j;->a(Z)V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/avg/tuneup/j;->b(J)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const/16 v2, 0x2af8

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/avg/tuneup/traffic/widget/TrafficWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/avg/toolkit/f;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method public i()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avg/tuneup/traffic/t;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/traffic/t;-><init>(Lcom/avg/tuneup/traffic/s;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public j()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avg/tuneup/traffic/u;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/traffic/u;-><init>(Lcom/avg/tuneup/traffic/s;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->m()V

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->l()V

    return-void
.end method

.method public l()V
    .locals 6

    const/4 v3, 0x2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-class v2, Lcom/avg/toolkit/RecurringTasks/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "alarm_code"

    const/16 v2, 0x2af8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "alarm_code2"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avg/tuneup/traffic/s;->f()Ljava/util/Calendar;

    move-result-object v2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public m()V
    .locals 7

    const/16 v2, 0x7530

    const/4 v1, 0x1

    invoke-static {}, Lcom/avg/tuneup/j;->h()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v3, Lcom/avg/tuneup/traffic/s;->a:[I

    array-length v3, v3

    if-lt v0, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sget-object v3, Lcom/avg/tuneup/traffic/s;->a:[I

    aget v0, v3, v0

    if-ge v0, v2, :cond_2

    move v0, v2

    :cond_2
    invoke-direct {p0}, Lcom/avg/tuneup/traffic/s;->o()Z

    move-result v2

    iput-boolean v2, p0, Lcom/avg/tuneup/traffic/s;->h:Z

    iget-boolean v2, p0, Lcom/avg/tuneup/traffic/s;->h:Z

    if-nez v2, :cond_4

    const v2, 0x927c0

    if-le v0, v2, :cond_3

    :goto_0
    move v4, v0

    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-class v3, Lcom/avg/toolkit/RecurringTasks/AlarmReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "alarm_code"

    const/16 v3, 0x2af8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "alarm_code2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const/high16 v3, 0x800

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v4, v0

    goto :goto_1
.end method

.method public n()V
    .locals 7

    const/high16 v6, 0x800

    const/16 v5, 0x2af8

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-class v2, Lcom/avg/toolkit/RecurringTasks/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "alarm_code"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "alarm_code2"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-static {v1, v3, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-class v3, Lcom/avg/toolkit/RecurringTasks/AlarmReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "alarm_code"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "alarm_code2"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    invoke-static {v2, v4, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/s;->f:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
