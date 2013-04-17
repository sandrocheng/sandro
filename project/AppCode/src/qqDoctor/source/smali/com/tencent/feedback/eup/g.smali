.class public final Lcom/tencent/feedback/eup/g;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static e:Lcom/tencent/feedback/eup/IEupUserConfirmer;

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static l:Lcom/tencent/feedback/eup/g;


# instance fields
.field private a:Landroid/content/Context;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/tencent/feedback/eup/g;->b:Ljava/lang/String;

    .line 48
    const/16 v0, 0x64

    sput v0, Lcom/tencent/feedback/eup/g;->c:I

    .line 50
    sput-object v1, Lcom/tencent/feedback/eup/g;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 51
    sput-object v1, Lcom/tencent/feedback/eup/g;->e:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/feedback/eup/g;->f:Z

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/tencent/feedback/eup/g;->g:Ljava/lang/String;

    .line 61
    sput-object v1, Lcom/tencent/feedback/eup/g;->l:Lcom/tencent/feedback/eup/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    .line 56
    iput-boolean v0, p0, Lcom/tencent/feedback/eup/g;->h:Z

    .line 57
    iput-boolean v0, p0, Lcom/tencent/feedback/eup/g;->i:Z

    .line 58
    iput-object v1, p0, Lcom/tencent/feedback/eup/g;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 59
    iput-boolean v0, p0, Lcom/tencent/feedback/eup/g;->k:Z

    .line 74
    iput-object p1, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/tencent/feedback/eup/g;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/feedback/eup/g;
    .locals 2
    .parameter

    .prologue
    .line 65
    const-class v1, Lcom/tencent/feedback/eup/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/eup/g;->l:Lcom/tencent/feedback/eup/g;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 67
    new-instance v0, Lcom/tencent/feedback/eup/g;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/feedback/eup/g;->l:Lcom/tencent/feedback/eup/g;

    .line 69
    :cond_0
    sget-object v0, Lcom/tencent/feedback/eup/g;->l:Lcom/tencent/feedback/eup/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/tencent/feedback/eup/k;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 428
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 430
    :cond_0
    const-string v0, "collectEupData have null args !"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 538
    :goto_0
    return-object v0

    .line 437
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/feedback/eup/k;

    invoke-direct {v0}, Lcom/tencent/feedback/eup/k;-><init>()V

    .line 439
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/eup/k;->b(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/eup/k;->c(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/eup/k;->a(Ljava/lang/String;)V

    .line 445
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v3

    .line 447
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :try_start_1
    invoke-virtual {v3}, Lcom/tencent/feedback/common/CommonInfo;->getServerTimeGap()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/feedback/common/g;->a(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/feedback/eup/k;->a(J)V

    .line 450
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 455
    if-eqz v4, :cond_3

    .line 458
    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/eup/k;->d(Ljava/lang/String;)V

    .line 460
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    array-length v6, v4

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v4, v3

    .line 468
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 529
    :catch_0
    move-exception v0

    .line 532
    const-string v2, "collect Eup Data fail!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 538
    goto/16 :goto_0

    .line 473
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/eup/k;->g(Ljava/lang/String;)V

    .line 475
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 477
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 483
    if-eqz v3, :cond_5

    .line 486
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caused by:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 493
    if-eqz v3, :cond_4

    .line 496
    array-length v5, v3

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v3, v2

    .line 499
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 505
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/k;->i(Ljava/lang/String;)V

    .line 507
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 509
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack_TRACE:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cause_TRACE:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 517
    new-instance v2, Lcom/tencent/feedback/common/a/b;

    invoke-direct {v2, p0}, Lcom/tencent/feedback/common/a/b;-><init>(Landroid/content/Context;)V

    .line 518
    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/k;->e(Ljava/lang/String;)V

    .line 519
    new-instance v2, Lcom/tencent/feedback/eup/f;

    invoke-direct {v2}, Lcom/tencent/feedback/eup/f;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/k;->f(Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/tencent/feedback/common/DeviceInfo;->checkIsHaveCard()Z

    move-result v2

    if-nez v2, :cond_6

    const-wide/16 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2, v3}, Lcom/tencent/feedback/eup/k;->c(J)V

    .line 521
    new-instance v2, Landroid/os/StatFs;

    const-string v3, "/data"

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v4, v2

    int-to-long v2, v3

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/tencent/feedback/eup/k;->b(J)V

    .line 522
    invoke-static {}, Lcom/tencent/feedback/common/DeviceInfo;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/k;->h(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/k;->l(Ljava/lang/String;)V

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/k;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_6
    new-instance v2, Landroid/os/StatFs;

    const-string v3, "/sdcard"

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    int-to-long v4, v2

    int-to-long v2, v3

    mul-long/2addr v2, v4

    goto :goto_3
.end method

.method public static declared-synchronized a()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 2

    .prologue
    .line 100
    const-class v0, Lcom/tencent/feedback/eup/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/eup/g;->d:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x12c

    .line 94
    const-class v2, Lcom/tencent/feedback/eup/g;

    monitor-enter v2

    if-lez p0, :cond_0

    move v1, p0

    :goto_0
    :try_start_0
    sput v1, Lcom/tencent/feedback/eup/g;->c:I

    .line 95
    if-ge p0, v0, :cond_1

    :goto_1
    sput p0, Lcom/tencent/feedback/eup/g;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit v2

    return-void

    .line 94
    :cond_0
    const/16 v1, 0x32

    goto :goto_0

    :cond_1
    move p0, v0

    .line 95
    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Lcom/tencent/feedback/eup/IEupUserConfirmer;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    const-class v0, Lcom/tencent/feedback/eup/g;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/eup/g;->e:Lcom/tencent/feedback/eup/IEupUserConfirmer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v0

    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    const-class v0, Lcom/tencent/feedback/eup/g;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/eup/g;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v0

    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    const-class v0, Lcom/tencent/feedback/eup/g;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/eup/g;->d:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 115
    const-class v0, Lcom/tencent/feedback/eup/g;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/tencent/feedback/eup/g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 165
    const-class v0, Lcom/tencent/feedback/eup/g;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/eup/g;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit v0

    return-void

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Z
    .locals 2

    .prologue
    .line 110
    const-class v0, Lcom/tencent/feedback/eup/g;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/feedback/eup/g;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Lcom/tencent/feedback/eup/IEupUserConfirmer;
    .locals 2

    .prologue
    .line 150
    const-class v0, Lcom/tencent/feedback/eup/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/eup/g;->e:Lcom/tencent/feedback/eup/IEupUserConfirmer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    const-class v0, Lcom/tencent/feedback/eup/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/eup/g;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized g()Z
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/eup/g;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.register() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v1, :cond_0

    .line 177
    iput-object v0, p0, Lcom/tencent/feedback/eup/g;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 180
    :cond_0
    instance-of v0, v0, Lcom/tencent/feedback/eup/g;

    if-nez v0, :cond_1

    .line 183
    sget-object v0, Lcom/tencent/feedback/eup/g;->l:Lcom/tencent/feedback/eup/g;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 185
    :cond_1
    const-string v0, "CrashHandler.register() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.unRegister() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 197
    :cond_0
    const-string v0, "CrashHandler.unRegister() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.handleException() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/g;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 421
    :goto_0
    monitor-exit p0

    return v0

    .line 267
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 268
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/feedback/eup/g;->i:Z

    if-eqz v0, :cond_2

    .line 272
    const-string v0, "crash happen , do not record more eup!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_2
    invoke-static {}, Lcom/tencent/feedback/common/f;->a()Lcom/tencent/feedback/common/f$a;

    move-result-object v0

    iget v1, v0, Lcom/tencent/feedback/common/f$a;->a:I

    .line 278
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;)I

    move-result v0

    .line 279
    if-lt v0, v1, :cond_9

    .line 281
    const-string v0, "reach the max num of eup , do clean!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    const-string v2, "asc"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    invoke-static/range {v0 .. v10}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v3

    .line 284
    if-eqz v3, :cond_9

    .line 288
    const/4 v1, 0x0

    .line 289
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_19

    .line 292
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/k;

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->l()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 294
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/k;

    .line 299
    :goto_2
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 304
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/k;

    .line 307
    :cond_3
    if-eqz v0, :cond_8

    .line 310
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 311
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v2, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    const-string v0, "EUPDAO.deleteEupList() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    if-nez v2, :cond_5

    const-string v0, "deleteEupList() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_3
    if-gtz v0, :cond_9

    .line 314
    const-string v0, "can\'t remove eup datas for insert a new one!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 312
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Long;

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/k;

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->m()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    invoke-static {v2, v4}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    move-result v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 320
    :cond_8
    const-string v0, "max size with crash ,can\'t do insert a catch type"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 328
    :cond_9
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/tencent/feedback/eup/k;

    move-result-object v11

    .line 329
    if-nez v11, :cond_a

    .line 331
    const-string v0, "collect eup data fail!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 343
    :cond_a
    invoke-direct {p0}, Lcom/tencent/feedback/eup/g;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v11}, Lcom/tencent/feedback/eup/k;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 345
    const-string v0, "do merge eup!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/tencent/feedback/eup/k;->b(I)V

    .line 349
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    const/4 v1, 0x2

    const-string v2, "desc"

    const/4 v3, -0x1

    invoke-virtual {v11}, Lcom/tencent/feedback/eup/k;->q()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    invoke-static/range {v0 .. v10}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 352
    const-string v1, "existed record ,do update!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/k;

    .line 354
    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->s()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/eup/k;->b(I)V

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/k;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/tencent/feedback/eup/k;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/eup/k;->m(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    const-string v2, "EUPDAO.insertOrUpdateEUP() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    if-eqz v1, :cond_b

    if-nez v0, :cond_c

    :cond_b
    const-string v0, "context == null || bean == null,pls check"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 357
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_c
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    goto :goto_5

    .line 362
    :cond_d
    const-string v0, "new exception!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/tencent/feedback/eup/k;->b(I)V

    .line 368
    :cond_e
    const-string v0, "do normal insert! "

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 370
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->isStoreEupLogSdcard:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/AppInfo;->isContainWriteSdcardPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 372
    const-string v0, "save eup message sdcard"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n----------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v11}, Lcom/tencent/feedback/eup/k;->d()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/tencent/feedback/common/g;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n----------------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lcom/tencent/feedback/eup/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lcom/tencent/feedback/eup/k;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    const-string v0, "CrashHandler.saveOutside() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-gtz v0, :cond_10

    .line 387
    :cond_f
    :goto_6
    :try_start_4
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/AppInfo;->isContainReadLogPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 389
    const-string v0, "read log permission"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 390
    sget-object v0, Lcom/tencent/feedback/eup/g;->b:Ljava/lang/String;

    sget v1, Lcom/tencent/feedback/eup/g;->c:I

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/f$b;->a(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/tencent/feedback/eup/k;->a([B)V

    .line 405
    :goto_7
    if-eqz p3, :cond_17

    .line 406
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/tencent/feedback/eup/k;->a(I)V

    .line 410
    :goto_8
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v0

    .line 411
    if-nez v0, :cond_18

    const-string v0, ""

    .line 412
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contract:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/feedback/eup/ExceptionUpload;->getDefaultContract()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/tencent/feedback/eup/k;->j(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v11, v0}, Lcom/tencent/feedback/eup/k;->k(Ljava/lang/String;)V

    .line 416
    const-string v0, "to insert eup info"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;Lcom/tencent/feedback/eup/k;)Z

    move-result v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 419
    const-string v1, "CrashHandler.handleException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 377
    :cond_10
    :try_start_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/feedback/common/AppInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/euplog.txt"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_11
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_12
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-ltz v0, :cond_14

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v0

    :goto_a
    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :cond_13
    :goto_b
    :try_start_9
    const-string v0, "CrashHandler.saveOutside() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_6

    .line 379
    :catch_0
    move-exception v0

    .line 381
    :try_start_a
    const-string v1, "save eup message sdcard fail"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_6

    .line 377
    :cond_14
    :try_start_b
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    move-object v1, v0

    goto :goto_a

    :catch_1
    move-exception v0

    :try_start_c
    const-string v2, "euplog.txt can\'t write!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_13

    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    :try_start_e
    const-string v1, "create euplog.txt in sdcard fail!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_b

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_15

    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_15
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    .line 394
    :cond_16
    :try_start_10
    const-string v0, "cancel read log"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 397
    :try_start_11
    const-string v0, "no permission"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/tencent/feedback/eup/k;->a([B)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_7

    .line 399
    :catch_3
    move-exception v0

    .line 401
    const/4 v1, 0x2

    :try_start_12
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v11, v1}, Lcom/tencent/feedback/eup/k;->a([B)V

    .line 402
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    .line 408
    :cond_17
    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Lcom/tencent/feedback/eup/k;->a(I)V

    goto/16 :goto_8

    .line 411
    :cond_18
    invoke-virtual {v0}, Lcom/tencent/feedback/common/CommonInfo;->getUserid()Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v0

    goto/16 :goto_9

    :cond_19
    move-object v0, v1

    goto/16 :goto_2

    .line 401
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
    .end array-data
.end method

.method public final declared-synchronized b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.setEnable() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 126
    iput-boolean p1, p0, Lcom/tencent/feedback/eup/g;->h:Z

    .line 127
    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/tencent/feedback/eup/g;->h()V

    .line 135
    :goto_0
    const-string v0, "CrashHandler.setEnable() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/feedback/eup/g;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/eup/g;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/eup/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 22

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    const-string v1, "CrashHandler.handleLocalEup() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/feedback/eup/g;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 549
    const-string v1, "disable!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :goto_0
    monitor-exit p0

    return-void

    .line 553
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 555
    const-string v1, "context == null!,pls to check!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 559
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/feedback/eup/g;->i:Z

    if-eqz v1, :cond_2

    .line 561
    const-string v1, "crash happen ,should not handle old eup!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v1

    .line 566
    invoke-virtual {v1}, Lcom/tencent/feedback/common/CommonInfo;->getServerTimeGap()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/g;->a(J)J

    move-result-wide v1

    invoke-static {}, Lcom/tencent/feedback/common/f;->a()Lcom/tencent/feedback/common/f$a;

    move-result-object v3

    iget v3, v3, Lcom/tencent/feedback/common/f$a;->d:I

    mul-int/lit8 v3, v3, 0x18

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    const-wide/16 v4, -0x1

    invoke-static {v3, v4, v5, v1, v2}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;JJ)I

    move-result v1

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "del old sum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;)I

    move-result v21

    .line 573
    if-gtz v21, :cond_3

    .line 575
    const-string v1, "no eup data!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/tencent/feedback/eup/g;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/tencent/feedback/common/g;->b()J

    move-result-wide v8

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gez v1, :cond_4

    const-string v1, "get today Time failed! pls check! re size it current - 12h "

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x2932e00

    sub-long v8, v1, v3

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "desc"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    invoke-static/range {v1 .. v11}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    .line 582
    const-string v1, "no merge eup data to upload!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 580
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/feedback/eup/g;->a:Landroid/content/Context;

    const/4 v11, 0x1

    const-string v12, "desc"

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, -0x1

    const-wide/16 v17, -0x1

    move-wide/from16 v19, v8

    invoke-static/range {v10 .. v20}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 586
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has eup data in local! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/tencent/feedback/eup/g;->b()Z

    move-result v1

    if-nez v1, :cond_9

    .line 589
    const-string v1, "start activity for use select!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/feedback/eup/h;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/tencent/feedback/eup/h;-><init>(Lcom/tencent/feedback/eup/g;)V

    invoke-static {}, Lcom/tencent/feedback/common/DeviceInfo;->getApiLevel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_8

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/tencent/feedback/eup/i;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1}, Lcom/tencent/feedback/eup/i;-><init>(Lcom/tencent/feedback/eup/g;Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdk:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay post!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 595
    :goto_2
    const-string v1, "CrashHandler.handleLocalEup() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    :cond_8
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 593
    :cond_9
    const-string v1, "CrashHandler.startEupUpload() start!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/feedback/eup/j;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/tencent/feedback/eup/j;-><init>(Lcom/tencent/feedback/eup/g;)V

    const-string v2, "RQD_EUPThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "CrashHandler.startEupUpload() end!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.uncaughtException() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/g;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 251
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/feedback/eup/g;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Z

    .line 214
    invoke-static {}, Lcom/tencent/feedback/eup/g;->a()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_1

    .line 217
    const-string v1, "your unchaught exception handler processing !"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 218
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    :cond_1
    :goto_1
    :try_start_2
    const-string v0, "CrashHandler.uncaughtException() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/feedback/eup/g;->i:Z

    .line 237
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 240
    const-string v0, "system default handlering !"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 222
    :catch_0
    move-exception v0

    .line 225
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 247
    :cond_2
    const-string v0, "try to kill this process !"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 249
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
