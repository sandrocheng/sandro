.class public final Lcom/tencent/feedback/eup/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static e:Lcom/tencent/feedback/eup/IEupUserConfirmer;

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static k:Lcom/tencent/feedback/eup/h;


# instance fields
.field private a:Landroid/content/Context;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-string v0, ""

    sput-object v0, Lcom/tencent/feedback/eup/h;->b:Ljava/lang/String;

    .line 45
    const/16 v0, 0x64

    sput v0, Lcom/tencent/feedback/eup/h;->c:I

    .line 47
    sput-object v1, Lcom/tencent/feedback/eup/h;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 48
    sput-object v1, Lcom/tencent/feedback/eup/h;->e:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/feedback/eup/h;->f:Z

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/tencent/feedback/eup/h;->g:Ljava/lang/String;

    .line 57
    sput-object v1, Lcom/tencent/feedback/eup/h;->k:Lcom/tencent/feedback/eup/h;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    .line 53
    iput-boolean v0, p0, Lcom/tencent/feedback/eup/h;->h:Z

    .line 54
    iput-boolean v0, p0, Lcom/tencent/feedback/eup/h;->i:Z

    .line 55
    iput-object v1, p0, Lcom/tencent/feedback/eup/h;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 75
    iput-object p1, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/tencent/feedback/eup/h;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/tencent/feedback/common/a/e;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 356
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 358
    :cond_0
    const-string v0, "collectEupData have null args !"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move-object v0, v1

    .line 467
    :goto_0
    return-object v0

    .line 365
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/feedback/common/a/e;

    invoke-direct {v0}, Lcom/tencent/feedback/common/a/e;-><init>()V

    .line 367
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/a/e;->b(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/a/e;->c(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/a/e;->a(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v3

    .line 375
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :try_start_1
    invoke-virtual {v3}, Lcom/tencent/feedback/common/CommonInfo;->getServerTimeGap()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/feedback/common/f;->a(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/feedback/common/a/e;->a(J)V

    .line 378
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 383
    if-eqz v4, :cond_3

    .line 386
    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/a/e;->d(Ljava/lang/String;)V

    .line 388
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
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

    .line 393
    array-length v6, v4

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v4, v3

    .line 396
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 458
    :catch_0
    move-exception v0

    .line 461
    const-string v2, "collect Eup Data fail!"

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 467
    goto/16 :goto_0

    .line 401
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/a/e;->g(Ljava/lang/String;)V

    .line 403
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 405
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 411
    if-eqz v3, :cond_5

    .line 414
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
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

    .line 419
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 421
    if-eqz v5, :cond_4

    .line 424
    array-length v6, v5

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_4

    aget-object v7, v5, v3

    .line 427
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 433
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/a/e;->i(Ljava/lang/String;)V

    .line 435
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 437
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack_TRACE:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/e;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cause_TRACE:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/e;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 445
    new-instance v3, Lcom/tencent/feedback/common/a/b;

    invoke-direct {v3, p0}, Lcom/tencent/feedback/common/a/b;-><init>(Landroid/content/Context;)V

    .line 447
    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/a/e;->e(Ljava/lang/String;)V

    .line 449
    new-instance v3, Lcom/tencent/feedback/eup/g;

    invoke-direct {v3}, Lcom/tencent/feedback/eup/g;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/feedback/eup/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/a/e;->f(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2, v3}, Lcom/tencent/feedback/common/a/e;->c(J)V

    .line 453
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

    invoke-virtual {v0, v2, v3}, Lcom/tencent/feedback/common/a/e;->b(J)V

    .line 455
    invoke-static {}, Lcom/tencent/feedback/common/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/common/a/e;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_7
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

.method public static declared-synchronized a()Lcom/tencent/feedback/eup/h;
    .locals 2

    .prologue
    .line 70
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/eup/h;->k:Lcom/tencent/feedback/eup/h;
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

    .line 95
    const-class v2, Lcom/tencent/feedback/eup/h;

    monitor-enter v2

    if-lez p0, :cond_0

    move v1, p0

    :goto_0
    :try_start_0
    sput v1, Lcom/tencent/feedback/eup/h;->c:I

    .line 96
    if-ge p0, v0, :cond_1

    :goto_1
    sput p0, Lcom/tencent/feedback/eup/h;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v2

    return-void

    .line 95
    :cond_0
    const/16 v1, 0x32

    goto :goto_0

    :cond_1
    move p0, v0

    .line 96
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    const-class v1, Lcom/tencent/feedback/eup/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/eup/h;->k:Lcom/tencent/feedback/eup/h;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/tencent/feedback/eup/h;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/feedback/eup/h;->k:Lcom/tencent/feedback/eup/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/tencent/feedback/eup/IEupUserConfirmer;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/eup/h;->e:Lcom/tencent/feedback/eup/IEupUserConfirmer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v0

    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/eup/h;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v0

    return-void

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/eup/h;->d:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit v0

    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 116
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/tencent/feedback/eup/h;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v0

    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 2

    .prologue
    .line 101
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/eup/h;->d:Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/feedback/eup/h;->g:Ljava/lang/String;
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

.method public static declared-synchronized c()Z
    .locals 2

    .prologue
    .line 111
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/feedback/eup/h;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()Lcom/tencent/feedback/eup/IEupUserConfirmer;
    .locals 2

    .prologue
    .line 140
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/eup/h;->e:Lcom/tencent/feedback/eup/IEupUserConfirmer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    const-class v0, Lcom/tencent/feedback/eup/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/feedback/eup/h;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized h()V
    .locals 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.register() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/tencent/feedback/eup/h;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v1, :cond_0

    .line 167
    iput-object v0, p0, Lcom/tencent/feedback/eup/h;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 170
    :cond_0
    instance-of v0, v0, Lcom/tencent/feedback/eup/h;

    if-nez v0, :cond_1

    .line 173
    sget-object v0, Lcom/tencent/feedback/eup/h;->k:Lcom/tencent/feedback/eup/h;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 175
    :cond_1
    const-string v0, "CrashHandler.register() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.unRegister() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 187
    :cond_0
    const-string v0, "CrashHandler.unRegister() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v6, 0x2

    const/4 v1, 0x0

    .line 251
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.handleException() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 350
    :goto_0
    monitor-exit p0

    return v0

    .line 255
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/feedback/eup/h;->i:Z

    if-eqz v0, :cond_2

    .line 260
    const-string v0, "crash happen , do not record more eup!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    move v0, v1

    .line 261
    goto :goto_0

    .line 264
    :cond_2
    invoke-static {}, Lcom/tencent/feedback/common/d;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/c;->a:I

    .line 265
    iget-object v3, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    const-string v4, "asc"

    const/4 v5, -0x1

    invoke-static {v3, v0, v4, v5}, Lcom/tencent/feedback/common/e;->a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 267
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_9

    .line 271
    const/4 v3, 0x0

    move v4, v1

    .line 272
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_d

    .line 275
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/e;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/e;->l()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 277
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/e;

    .line 282
    :goto_2
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 286
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/e;

    .line 289
    :cond_3
    if-eqz v0, :cond_8

    .line 292
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 293
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v3, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    const-string v0, "EUPDAO.deleteEupList() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    if-nez v3, :cond_5

    const-string v0, "deleteEupList() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move v0, v2

    :goto_3
    if-gtz v0, :cond_9

    .line 296
    const-string v0, "can\'t remove eup datas for insert a new one!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move v0, v1

    .line 297
    goto :goto_0

    .line 272
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 294
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Long;

    move v2, v1

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/e;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/e;->m()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_6
    invoke-static {v3, v4}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    move-result v0

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_3

    .line 301
    :cond_8
    const-string v0, "max size with crash ,can\'t do insert a catch type"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    move v0, v1

    .line 302
    goto/16 :goto_0

    .line 308
    :cond_9
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/tencent/feedback/eup/h;->a(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lcom/tencent/feedback/common/a/e;

    move-result-object v2

    .line 310
    if-nez v2, :cond_a

    .line 313
    const-string v0, "collect eup data fail!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move v0, v1

    .line 315
    goto/16 :goto_0

    .line 319
    :cond_a
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/AppInfo;->isContainReadLogPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 321
    const-string v0, "read log permission"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/tencent/feedback/eup/h;->b:Ljava/lang/String;

    sget v1, Lcom/tencent/feedback/eup/h;->c:I

    invoke-static {v0, v1}, Lcom/tencent/feedback/eup/m;->a(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/feedback/common/a/e;->a([B)V

    .line 336
    :goto_5
    if-eqz p3, :cond_c

    .line 337
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/tencent/feedback/common/a/e;->a(I)V

    .line 342
    :goto_6
    const-string v0, "to insert eup info"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tencent/feedback/common/e;->a(Landroid/content/Context;Lcom/tencent/feedback/common/a/e;)Z

    move-result v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 348
    const-string v1, "CrashHandler.handleException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 325
    :cond_b
    :try_start_2
    const-string v0, "cancel read log"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :try_start_3
    const-string v0, "no permission"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/feedback/common/a/e;->a([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 329
    :catch_0
    move-exception v0

    .line 331
    const/4 v1, 0x2

    :try_start_4
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v2, v1}, Lcom/tencent/feedback/common/a/e;->a([B)V

    .line 333
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 339
    :cond_c
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/tencent/feedback/common/a/e;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_d
    move-object v0, v3

    goto/16 :goto_2

    .line 331
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
    .line 126
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.setEnable() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 127
    iput-boolean p1, p0, Lcom/tencent/feedback/eup/h;->h:Z

    .line 128
    if-eqz p1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/tencent/feedback/eup/h;->h()V

    .line 135
    :goto_0
    const-string v0, "CrashHandler.setEnable() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/feedback/eup/h;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/eup/h;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 6

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.handleLocalEup() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 479
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 482
    iget-boolean v0, p0, Lcom/tencent/feedback/eup/h;->i:Z

    if-eqz v0, :cond_2

    .line 484
    const-string v0, "crash happen ,should not handle old eup!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 489
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v1

    .line 490
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    :try_start_3
    invoke-virtual {v1}, Lcom/tencent/feedback/common/CommonInfo;->getServerTimeGap()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/f;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    .line 495
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 497
    :try_start_4
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    const-wide/16 v4, -0x1

    invoke-static {v0, v4, v5, v2, v3}, Lcom/tencent/feedback/common/e;->a(Landroid/content/Context;JJ)I

    move-result v0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "del old sum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->a:Landroid/content/Context;

    const-string v1, "EUPDAO.querySum() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "querySum() context is null arg"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 501
    :goto_1
    if-gtz v0, :cond_4

    .line 503
    const-string v0, "no eup data!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 500
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v5}, Lcom/tencent/feedback/common/a/b;->b(Landroid/content/Context;[IJJ)I

    move-result v0

    goto :goto_1

    .line 507
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has eup data in local! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/tencent/feedback/eup/h;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 510
    const-string v0, "start activity for use select!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/feedback/eup/i;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/i;-><init>(Lcom/tencent/feedback/eup/h;)V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/tencent/feedback/eup/j;

    invoke-direct {v3, p0, v0}, Lcom/tencent/feedback/eup/j;-><init>(Lcom/tencent/feedback/eup/h;Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay post!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 515
    :goto_2
    const-string v0, "CrashHandler.handleLocalEup() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 513
    :cond_6
    const-string v0, "CrashHandler.startEupUpload() start!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/feedback/eup/k;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/k;-><init>(Lcom/tencent/feedback/eup/h;)V

    const-string v1, "RQD_EUPThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string v0, "CrashHandler.startEupUpload() end!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 500
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    const-string v0, "CrashHandler.uncaughtException() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/h;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/feedback/eup/h;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Z

    .line 204
    invoke-static {}, Lcom/tencent/feedback/eup/h;->b()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_1

    .line 207
    const-string v1, "your unchaught exception handler processing !"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 208
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :cond_1
    :goto_1
    :try_start_2
    const-string v0, "CrashHandler.uncaughtException() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/feedback/eup/h;->i:Z

    .line 226
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 229
    const-string v0, "system default handlering !"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/tencent/feedback/eup/h;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 211
    :catch_0
    move-exception v0

    .line 214
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 235
    :cond_2
    const-string v0, "try to kill this process !"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 237
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
