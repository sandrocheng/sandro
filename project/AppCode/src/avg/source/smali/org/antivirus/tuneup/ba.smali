.class public Lorg/antivirus/tuneup/ba;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Lorg/antivirus/tuneup/ba;

.field private static f:[J


# instance fields
.field private e:Lorg/antivirus/tuneup/bd;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/Boolean;

.field private i:Z

.field private j:Landroid/content/pm/ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/antivirus/tuneup/ba;->a:[I

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rmnet0"

    aput-object v1, v0, v5

    const-string v1, "pdp0"

    aput-object v1, v0, v6

    const-string v1, "ppp0"

    aput-object v1, v0, v3

    const-string v1, "rmnet_sdio0"

    aput-object v1, v0, v7

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

    sput-object v0, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "eth0"

    aput-object v1, v0, v5

    const-string v1, "tiwlan0"

    aput-object v1, v0, v6

    const-string v1, "wlan0"

    aput-object v1, v0, v3

    const-string v1, "athwlan0"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "eth1"

    aput-object v2, v0, v1

    sput-object v0, Lorg/antivirus/tuneup/ba;->c:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lorg/antivirus/tuneup/ba;->d:Lorg/antivirus/tuneup/ba;

    new-array v0, v3, [J

    fill-array-data v0, :array_1

    sput-object v0, Lorg/antivirus/tuneup/ba;->f:[J

    return-void

    nop

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
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/tuneup/ba;->h:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lorg/antivirus/tuneup/ba;->i:Z

    new-instance v0, Lorg/antivirus/tuneup/bd;

    const-string v1, "tdb"

    invoke-direct {v0, p1, v1}, Lorg/antivirus/tuneup/bd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    iput-object p1, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/tuneup/ba;->h:Ljava/lang/Boolean;

    invoke-direct {p0}, Lorg/antivirus/tuneup/ba;->m()Z

    move-result v0

    iput-boolean v0, p0, Lorg/antivirus/tuneup/ba;->i:Z

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Lorg/antivirus/tuneup/ba;->j:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->j:Landroid/content/pm/ApplicationInfo;

    const/16 v1, 0x3f5

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->j:Landroid/content/pm/ApplicationInfo;

    const-string v1, "android.process.media"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->j:Landroid/content/pm/ApplicationInfo;

    const v1, 0x7f0901d5

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;I)J
    .locals 3

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lorg/antivirus/core/compatibility/FroyoTools;->getMobileRxUidBytes(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tcp_rcv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/tuneup/ba;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/tuneup/ba;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;
    .locals 2

    sget-object v0, Lorg/antivirus/tuneup/ba;->d:Lorg/antivirus/tuneup/ba;

    if-nez v0, :cond_1

    const-class v1, Lorg/antivirus/tuneup/ba;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/antivirus/tuneup/ba;->d:Lorg/antivirus/tuneup/ba;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/tuneup/ba;

    invoke-direct {v0, p0}, Lorg/antivirus/tuneup/ba;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/antivirus/tuneup/ba;->d:Lorg/antivirus/tuneup/ba;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lorg/antivirus/tuneup/ba;->d:Lorg/antivirus/tuneup/ba;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)[J
    .locals 4

    sget-object v0, Lorg/antivirus/tuneup/ba;->f:[J

    const/4 v1, 0x0

    const-string v2, "/proc/uid_stat/"

    invoke-static {v2, p0}, Lorg/antivirus/tuneup/ba;->a(Ljava/lang/String;I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    sget-object v0, Lorg/antivirus/tuneup/ba;->f:[J

    const/4 v1, 0x1

    const-string v2, "/proc/uid_stat/"

    invoke-static {v2, p0}, Lorg/antivirus/tuneup/ba;->b(Ljava/lang/String;I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    sget-object v0, Lorg/antivirus/tuneup/ba;->f:[J

    return-object v0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/antivirus/tuneup/ba;->c(Ljava/lang/String;)Ljava/io/RandomAccessFile;

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

    invoke-static {v2}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

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

    invoke-static {v2}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

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

    invoke-static {v2}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

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

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;I)J
    .locals 3

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Lorg/antivirus/core/compatibility/FroyoTools;->getMobileTxUidBytes(I)J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tcp_snd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/tuneup/ba;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private b(Z)[D
    .locals 10

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->h:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->h:Ljava/lang/Boolean;

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

    iput-object v0, p0, Lorg/antivirus/tuneup/ba;->h:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/antivirus/tuneup/ba;->c()Ljava/util/List;

    move-result-object v8

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/bd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_1
    if-ltz v7, :cond_1

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "/proc/uid_stat/"

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Lorg/antivirus/tuneup/ba;->a(Ljava/lang/String;I)J

    move-result-wide v2

    const-string v5, "/proc/uid_stat/"

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v4}, Lorg/antivirus/tuneup/ba;->b(Ljava/lang/String;I)J

    move-result-wide v4

    iget-boolean v6, p0, Lorg/antivirus/tuneup/ba;->i:Z

    invoke-virtual/range {v0 .. v6}, Lorg/antivirus/tuneup/bd;->a(Ljava/lang/String;JJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    sget-object v1, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Lorg/antivirus/core/compatibility/FroyoTools;->getMobileRxBytes()J

    move-result-wide v2

    invoke-static {}, Lorg/antivirus/core/compatibility/FroyoTools;->getMobileTxBytes()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/antivirus/tuneup/bd;->a(Ljava/lang/String;JJZ)V

    :cond_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [D

    if-eqz p1, :cond_a

    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaOngoingNotification()Z

    move-result v2

    invoke-virtual {p0}, Lorg/antivirus/tuneup/ba;->b()[D

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaWarningNotificationOn()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    aget-wide v3, v1, v0

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanNotificationThreshold()I

    move-result v0

    invoke-static {}, Lorg/antivirus/AVSettings;->getQuotaUsageWarningId()I

    move-result v5

    int-to-double v6, v0

    cmpl-double v6, v3, v6

    if-ltz v6, :cond_3

    const-wide/high16 v6, 0x4059

    cmpg-double v6, v3, v6

    if-gez v6, :cond_3

    if-eqz v5, :cond_5

    :cond_3
    const-wide/high16 v6, 0x4059

    cmpl-double v6, v3, v6

    if-ltz v6, :cond_4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    :cond_4
    int-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_c

    if-eqz v2, :cond_c

    :cond_5
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_11

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    const-wide/high16 v5, 0x4059

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_6

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    :cond_6
    const v3, 0x7f09012b

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[number]"

    const/4 v5, 0x0

    aget-wide v5, v1, v5

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0x7f09015a

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/antivirus/tuneup/ba;->f()I

    move-result v4

    if-gtz v4, :cond_d

    const v0, 0x7f09015e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "[used]"

    iget-object v6, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/4 v7, 0x1

    aget-wide v7, v1, v7

    double-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v5, "[total]"

    iget-object v6, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuotaBytes()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "[number]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-class v6, Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x2442

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "from_notification"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v5, Landroid/app/Notification;

    const v6, 0x7f0200f1

    const-wide/16 v7, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v6, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Landroid/app/Notification;->defaults:I

    if-eqz v2, :cond_f

    const/16 v2, 0xa

    iput v2, v5, Landroid/app/Notification;->flags:I

    :goto_5
    iget-object v2, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-virtual {v5, v2, v3, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x0

    aget-wide v2, v1, v0

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanNotificationThreshold()I

    move-result v0

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_10

    const/4 v0, 0x0

    aget-wide v2, v1, v0

    const-wide/high16 v4, 0x4059

    cmpg-double v0, v2, v4

    if-gez v0, :cond_10

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setQuotaUsageWarningId(I)V

    :cond_7
    :goto_6
    invoke-static {}, Lorg/antivirus/AVSettings;->isTrafficCounterOn()Z

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "dataPlanSet"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    aget-wide v3, v1, v0

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanNotificationThreshold()I

    move-result v0

    const-string v5, "dataPercentLeft"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "dataThreshold"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-static {v0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/antivirus/widget/a/k;->b(Landroid/os/Bundle;)Z

    :cond_9
    move-object v0, v1

    :cond_a
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/tuneup/ba;->h:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    move v7, v0

    :goto_7
    :try_start_3
    sget-object v0, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    sget-object v1, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    aget-object v1, v1, v7

    const-string v2, "/sys/class/net/"

    sget-object v3, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    aget-object v3, v3, v7

    const-string v4, "/statistics/rx_bytes"

    invoke-static {v2, v3, v4}, Lorg/antivirus/tuneup/ba;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "/sys/class/net/"

    sget-object v5, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    aget-object v5, v5, v7

    const-string v6, "/statistics/tx_bytes"

    invoke-static {v4, v5, v6}, Lorg/antivirus/tuneup/ba;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/antivirus/tuneup/bd;->a(Ljava/lang/String;JJZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!!!!!!!!!!!!!! exception in: updateTrafficStatsDB: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x1

    if-ne v4, v0, :cond_e

    const v0, 0x7f09015d

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "[used]"

    iget-object v6, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/4 v7, 0x1

    aget-wide v7, v1, v7

    double-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    const v0, 0x7f09012c

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "[used]"

    iget-object v6, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/4 v7, 0x1

    aget-wide v7, v1, v7

    double-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_f
    const/16 v2, 0x10

    iput v2, v5, Landroid/app/Notification;->flags:I

    goto/16 :goto_5

    :cond_10
    const/4 v0, 0x0

    aget-wide v2, v1, v0

    const-wide/high16 v4, 0x4059

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_7

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setQuotaUsageWarningId(I)V

    goto/16 :goto_6

    :cond_11
    if-eqz v2, :cond_7

    const-string v0, ""

    invoke-static {}, Lorg/antivirus/tuneup/ba;->f()I

    move-result v2

    if-gtz v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f09015e

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[used]"

    iget-object v4, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    const-string v2, "[total]"

    iget-object v3, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuotaBytes()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[number]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/antivirus/tuneup/ba;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-class v5, Lorg/antivirus/tuneup/TrafficMeterActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2442

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f09012b

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[number]"

    const/4 v6, 0x0

    aget-wide v6, v1, v6

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f0200f0

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v5, 0xa

    iput v5, v4, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_6

    :cond_12
    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f09015d

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[used]"

    iget-object v4, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f09012c

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[used]"

    iget-object v4, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    double-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8
.end method

.method private static c(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static final d()Z
    .locals 1

    invoke-static {}, Lorg/antivirus/AVSettings;->isTrafficCounterOn()Z

    move-result v0

    return v0
.end method

.method public static e()Ljava/util/Calendar;
    .locals 6

    const/4 v0, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanBillingDate()J

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

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataCycleValues()I

    move-result v1

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataCycleUnits()I

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

.method public static f()I
    .locals 6

    const-wide/16 v4, 0x3c

    invoke-static {}, Lorg/antivirus/tuneup/ba;->e()Ljava/util/Calendar;

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

.method private m()Z
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/tuneup/ba;->i:Z

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

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

    iput-boolean v0, p0, Lorg/antivirus/tuneup/ba;->i:Z

    :cond_0
    iget-boolean v0, p0, Lorg/antivirus/tuneup/ba;->i:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    return-void
.end method

.method public final a(J)V
    .locals 9

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lorg/antivirus/AVSettings;->setDataPlanBillingDate(J)V

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setQuotaUsageWarningId(I)V

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    invoke-virtual {v1}, Lorg/antivirus/tuneup/bd;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    const-string v2, "mobiletraffictotaltable"

    invoke-virtual {v1, v2}, Lorg/antivirus/tuneup/bd;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    invoke-static {v7}, Lorg/antivirus/tuneup/bd;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    sget-object v1, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Lorg/antivirus/core/compatibility/FroyoTools;->getMobileRxBytes()J

    move-result-wide v2

    invoke-static {}, Lorg/antivirus/core/compatibility/FroyoTools;->getMobileTxBytes()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/tuneup/bd;->a(Ljava/lang/String;JJ)V

    :cond_0
    invoke-virtual {p0}, Lorg/antivirus/tuneup/ba;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_2

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "/proc/uid_stat/"

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Lorg/antivirus/tuneup/ba;->a(Ljava/lang/String;I)J

    move-result-wide v2

    const-string v5, "/proc/uid_stat/"

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5, v4}, Lorg/antivirus/tuneup/ba;->b(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/tuneup/bd;->a(Ljava/lang/String;JJ)V

    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_1
    sget-object v0, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    sget-object v1, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, "/sys/class/net/"

    sget-object v3, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    aget-object v3, v3, v6

    const-string v4, "/statistics/rx_bytes"

    invoke-static {v2, v3, v4}, Lorg/antivirus/tuneup/ba;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "/sys/class/net/"

    sget-object v5, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    aget-object v5, v5, v6

    const-string v8, "/statistics/tx_bytes"

    invoke-static {v4, v5, v8}, Lorg/antivirus/tuneup/ba;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/tuneup/bd;->a(Ljava/lang/String;JJ)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public final a(Z)[D
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lorg/antivirus/tuneup/ba;->a(ZI)[D

    move-result-object v0

    return-object v0
.end method

.method public final a(ZI)[D
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/antivirus/tuneup/ba;->b(Z)[D

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

    invoke-direct {p0, p1}, Lorg/antivirus/tuneup/ba;->b(Z)[D

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)[J
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    invoke-virtual {v0, p1}, Lorg/antivirus/tuneup/bd;->b(Ljava/lang/String;)[J

    move-result-object v0

    sput-object v0, Lorg/antivirus/tuneup/ba;->f:[J

    return-object v0
.end method

.method public final b()[D
    .locals 12

    const-wide/16 v3, 0x0

    const/4 v11, 0x2

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-array v2, v11, [J

    aput-wide v3, v2, v1

    aput-wide v3, v2, v8

    move v0, v1

    :goto_0
    sget-object v3, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/antivirus/tuneup/ba;->e:Lorg/antivirus/tuneup/bd;

    sget-object v4, Lorg/antivirus/tuneup/ba;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/antivirus/tuneup/bd;->b(Ljava/lang/String;)[J

    move-result-object v3

    aget-wide v4, v2, v1

    aget-wide v6, v3, v1

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    aget-wide v4, v2, v8

    aget-wide v6, v3, v8

    add-long v3, v4, v6

    aput-wide v3, v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-wide v3, v2, v1

    aget-wide v5, v2, v8

    add-long v2, v3, v5

    long-to-double v2, v2

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataQuotaBytes()J

    move-result-wide v4

    long-to-double v4, v4

    new-array v0, v11, [D

    aput-wide v9, v0, v1

    cmpl-double v6, v4, v9

    if-eqz v6, :cond_1

    const-wide/high16 v6, 0x4059

    mul-double/2addr v6, v2

    div-double v4, v6, v4

    aput-wide v4, v0, v1

    :cond_1
    aput-wide v2, v0, v8

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->j:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final g()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {v3}, Lorg/antivirus/AVSettings;->setTrafficCounterOn(Z)V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lorg/antivirus/AVSettings;->setDataPlanBillingDate(J)V

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-static {v0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antivirus/widget/a/k;->b(Landroid/os/Bundle;)Z

    return-void
.end method

.method public final h()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/antivirus/tuneup/bb;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/bb;-><init>(Lorg/antivirus/tuneup/ba;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final i()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/antivirus/tuneup/bc;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/bc;-><init>(Lorg/antivirus/tuneup/ba;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final j()V
    .locals 6

    const/4 v3, 0x5

    invoke-virtual {p0}, Lorg/antivirus/tuneup/ba;->k()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-class v2, Lorg/antivirus/core/receivers/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "alarm_code"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "antivirus"

    const-string v2, "antivirus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Lorg/antivirus/tuneup/ba;->e()Ljava/util/Calendar;

    move-result-object v2

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

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

.method public final k()V
    .locals 7

    const v2, 0x927c0

    const/16 v1, 0x7530

    const/4 v5, 0x4

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataRefreshRate()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v3, Lorg/antivirus/tuneup/ba;->a:[I

    array-length v3, v3

    if-lt v0, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sget-object v3, Lorg/antivirus/tuneup/ba;->a:[I

    aget v0, v3, v0

    if-ge v0, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p0}, Lorg/antivirus/tuneup/ba;->m()Z

    move-result v1

    iput-boolean v1, p0, Lorg/antivirus/tuneup/ba;->i:Z

    iget-boolean v1, p0, Lorg/antivirus/tuneup/ba;->i:Z

    if-nez v1, :cond_4

    if-le v0, v2, :cond_3

    :goto_0
    move v4, v0

    :goto_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-class v2, Lorg/antivirus/core/receivers/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "alarm_code"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "antivirus"

    const-string v2, "antivirus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const/high16 v2, 0x800

    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

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

.method public final l()V
    .locals 6

    const/high16 v5, 0x800

    const/4 v4, 0x5

    const/4 v3, 0x4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-class v2, Lorg/antivirus/core/receivers/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "alarm_code"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "antivirus"

    const-string v2, "antivirus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-static {v1, v3, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-class v3, Lorg/antivirus/core/receivers/AlarmReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "alarm_code"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "antivirus"

    const-string v3, "antivirus"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    invoke-static {v2, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/ba;->g:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method
