.class public Lcom/avast/android/mobilesecurity/app/scanner/af;
.super Lcom/avast/android/mobilesecurity/scan/l;
.source "ScannerScanTask.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private A:Z

.field private B:Ljava/util/concurrent/Semaphore;

.field private C:Z

.field private D:Landroid/os/Handler;

.field private E:I

.field private F:Ljava/lang/Runnable;

.field protected final a:Landroid/content/pm/PackageManager;

.field protected b:Lcom/avast/android/mobilesecurity/t;

.field protected c:Lcom/avast/android/mobilesecurity/app/scanner/o;

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/os/PowerManager$WakeLock;

.field private t:Lcom/avast/android/mobilesecurity/app/account/e;

.field private u:Lcom/avast/android/generic/util/ad;

.field private v:Z

.field private w:Z

.field private final x:Z

.field private final y:I

.field private final z:Z


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/scan/l;-><init>(Lcom/avast/android/mobilesecurity/scan/ScanService;Landroid/os/Bundle;)V

    .line 85
    iput-boolean v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->o:Z

    .line 191
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/ag;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/scanner/ag;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/af;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->F:Ljava/lang/Runnable;

    .line 118
    const-string v1, ""

    .line 119
    const-string v0, ""

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 123
    if-nez v2, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 126
    :cond_0
    if-eqz v2, :cond_1

    .line 127
    const v3, 0x7f0c01ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 136
    :cond_1
    :goto_0
    new-instance v2, Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const/16 v3, 0x64

    invoke-direct {v2, v1, v0, v3}, Lcom/avast/android/mobilesecurity/scan/ScanProgress;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    .line 138
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    .line 139
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->a:Landroid/content/pm/PackageManager;

    .line 140
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    .line 141
    new-instance v0, Lcom/avast/android/mobilesecurity/app/account/e;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/account/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->t:Lcom/avast/android/mobilesecurity/app/account/e;

    .line 142
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/o;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/scanner/o;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->c:Lcom/avast/android/mobilesecurity/app/scanner/o;

    .line 144
    const-string v0, "update_vps_sequential"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->w:Z

    .line 146
    const-string v0, "update_vps_sequential"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->A:Z

    .line 147
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->A:Z

    if-eqz v0, :cond_2

    .line 148
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->B:Ljava/util/concurrent/Semaphore;

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->D:Landroid/os/Handler;

    .line 152
    :cond_2
    const-string v0, "skip_vps_update"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->x:Z

    .line 154
    const-string v0, "widgetScan"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->z:Z

    .line 156
    const-string v0, "flags"

    invoke-virtual {p2, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 157
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 158
    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->y:I

    .line 163
    :goto_1
    new-instance v0, Lcom/avast/android/generic/util/ad;

    invoke-direct {v0}, Lcom/avast/android/generic/util/ad;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->u:Lcom/avast/android/generic/util/ad;

    .line 164
    return-void

    .line 131
    :catch_0
    move-exception v2

    .line 132
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v3

    const-string v4, "Exception in ScannerScanTask constructor AVD-574"

    invoke-virtual {v3, v4, v2}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 160
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->y:I

    goto :goto_1
.end method

.method private a(Ljava/io/File;)J
    .locals 7
    .parameter

    .prologue
    .line 644
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 646
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v1

    .line 647
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v5, v0

    mul-long v0, v5, v1

    .line 648
    sub-long v0, v3, v0

    return-wide v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 565
    if-nez p1, :cond_4

    .line 566
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "packageName ISNULL"

    invoke-virtual {v0, v3, v4, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 568
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ar()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/avast/android/mobilesecurity/t;->l(Z)V

    .line 569
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/t;->c(I)V

    .line 570
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/t;->e(I)V

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->ar()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->as()I

    move-result v3

    if-lez v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/t;->l(Z)V

    .line 586
    return-void

    :cond_3
    move v0, v2

    .line 568
    goto :goto_0

    .line 572
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName ISNULL AND name LIKE \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "result"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/String;

    sget-object v8, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v8}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 577
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName ISNULL AND name LIKE \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "%\'"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 579
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v6}, Lcom/avast/android/mobilesecurity/t;->as()I

    move-result v6

    sub-int v4, v6, v4

    invoke-virtual {v5, v4}, Lcom/avast/android/mobilesecurity/t;->c(I)V

    .line 580
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/t;->at()I

    move-result v5

    sub-int v0, v5, v0

    invoke-virtual {v4, v0}, Lcom/avast/android/mobilesecurity/t;->e(I)V

    goto/16 :goto_1
.end method

.method private a(Ljava/io/File;J)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 596
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 597
    invoke-virtual {v6, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 599
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 600
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 602
    if-eqz v1, :cond_0

    .line 605
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 606
    iget-boolean v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->o:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 607
    invoke-virtual {v6, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 609
    :cond_1
    const/4 v0, 0x0

    .line 634
    :goto_2
    return v0

    .line 612
    :cond_2
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 613
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    monitor-enter v1

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->k:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    .line 616
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v3, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    .line 617
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v3, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    int-to-long v3, v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long/2addr v7, v9

    add-long/2addr v3, v7

    long-to-int v3, v3

    iput v3, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 618
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    long-to-int v3, v3

    iput v3, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 619
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->y:I

    or-int/lit8 v4, v4, 0x20

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;Landroid/content/pm/PackageInfo;J)Ljava/util/List;

    move-result-object v1

    .line 623
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->c:Lcom/avast/android/mobilesecurity/app/scanner/o;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x14

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/locking/core/App;I)V

    .line 626
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v0, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    rem-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_0

    .line 627
    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_0

    .line 619
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 630
    :cond_3
    const-string v0, "ScannerScanTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External storage availability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 634
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/scanner/af;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->i()V

    return-void
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    return-object v0
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/scanner/af;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    return-object v0
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/app/scanner/af;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->w:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->b(Landroid/content/Context;)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->r:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 302
    const/4 v1, 0x1

    const-string v2, "Avast! VirusScanner"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->s:Landroid/os/PowerManager$WakeLock;

    .line 303
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 304
    const-string v0, "ScannerScanTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wake lock acquired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->s:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 314
    const-string v1, "ScannerScanTask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wake lock released: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    return-void

    .line 314
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 326
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v2, 0x7f0c020f

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iput-boolean v3, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->m:Z

    .line 328
    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->C:Z

    .line 329
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->j()V

    .line 331
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->D:Landroid/os/Handler;

    const v1, 0x7f070027

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 333
    const-string v0, "ScannerScanTask"

    const-string v1, "Sequential VPS update called, acquiring semaphore permit."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->B:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    const-string v1, "ScannerScanTask"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aR()I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aS()I

    move-result v1

    .line 378
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v2, v0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/AlarmReceiver;->a(Landroid/content/Context;II)V

    .line 380
    :cond_0
    return-void
.end method

.method private o()Z
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 392
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v9}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 393
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 396
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "/system"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    monitor-enter v3

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->j:Z

    .line 403
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    .line 404
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const/4 v4, 0x0

    iput v4, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    .line 405
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const/4 v4, 0x0

    iput v4, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 406
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v5, 0x7f0c0205

    invoke-virtual {v4, v5}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    .line 407
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 410
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 411
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object v7, v0

    .line 412
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->a:Landroid/content/pm/PackageManager;

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 413
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    :try_start_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    .line 415
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v10

    const-wide/16 v13, 0x3e8

    div-long/2addr v5, v13

    long-to-int v3, v5

    iput v3, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 416
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 418
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for viruses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->E:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->y:I

    or-int/lit8 v5, v5, 0x20

    int-to-long v5, v5

    invoke-static/range {v1 .. v6}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;Landroid/content/pm/PackageInfo;J)Ljava/util/List;

    move-result-object v2

    .line 422
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->c:Lcom/avast/android/mobilesecurity/app/scanner/o;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/locking/core/App;I)V

    .line 424
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 425
    :try_start_4
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v3, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    .line 426
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v3, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 427
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 428
    :try_start_5
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aw()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 440
    :catch_0
    move-exception v1

    .line 441
    const-string v2, "Scanning error"

    invoke-static {v2, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v2

    const-string v3, "Scanning error"

    invoke-virtual {v2, v3, v1}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v9

    .line 446
    :goto_2
    return v1

    .line 407
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 416
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 427
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 432
    :try_start_b
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v3, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    iput v3, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->g:I

    .line 433
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 436
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v3, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    iput v3, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 437
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/avast/android/mobilesecurity/app/scanner/af;->a(ZZ)V

    .line 439
    :cond_3
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 446
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v8

    goto :goto_2

    .line 439
    :catchall_3
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    :cond_4
    move v1, v9

    .line 446
    goto :goto_2
.end method

.method private p()Z
    .locals 17

    .prologue
    .line 456
    const/4 v2, 0x1

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->q()V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->g()V

    .line 461
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v1, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    int-to-long v5, v1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    sub-long v7, v3, v5

    .line 462
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->o:Z

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x1

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/t;->aT()Ljava/util/List;

    move-result-object v3

    .line 465
    if-nez v3, :cond_1

    const/4 v4, 0x1

    move v6, v4

    .line 466
    :goto_0
    if-eqz v6, :cond_7

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->u:Lcom/avast/android/generic/util/ad;

    invoke-virtual {v3}, Lcom/avast/android/generic/util/ad;->c()Ljava/util/List;

    move-result-object v3

    move-object v5, v3

    .line 470
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v1

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    :cond_0
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->r()V

    .line 522
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->h()V

    .line 524
    return v2

    .line 465
    :cond_1
    const/4 v4, 0x0

    move v6, v4

    goto :goto_0

    .line 475
    :cond_2
    :try_start_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 477
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const/4 v12, 0x1

    iput-boolean v12, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->j:Z

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/avast/android/mobilesecurity/app/scanner/af;->a(Ljava/io/File;)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    long-to-int v12, v12

    iput v12, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const/4 v12, 0x0

    iput v12, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const/4 v12, 0x0

    iput v12, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 481
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v12, 0x1

    if-le v3, v12, :cond_4

    .line 482
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    if-eqz v6, :cond_3

    const v3, 0x7f0c020b

    :goto_5
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v3, v14}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    .line 490
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const-string v12, ""

    iput-object v12, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->c:Ljava/lang/String;

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    long-to-int v12, v12

    iput v12, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 492
    const/4 v3, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/avast/android/mobilesecurity/app/scanner/af;->a(ZZ)V

    .line 493
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7, v8}, Lcom/avast/android/mobilesecurity/app/scanner/af;->a(Ljava/io/File;J)Z

    move-result v2

    .line 497
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 498
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v11, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->g:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v12, v12, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    add-int/2addr v11, v12

    iput v11, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->g:I

    .line 499
    if-eqz v2, :cond_6

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v11, v11

    iput v11, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v11, v11, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->d:I

    iput v11, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->e:I

    .line 502
    const/4 v3, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/avast/android/mobilesecurity/app/scanner/af;->a(ZZ)V

    .line 507
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v1, v2

    .line 512
    :goto_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto/16 :goto_2

    .line 482
    :cond_3
    const v3, 0x7f0c020d

    goto/16 :goto_5

    .line 486
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    if-eqz v6, :cond_5

    const v3, 0x7f0c020a

    :goto_8
    invoke-virtual {v13, v3}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->b:Ljava/lang/String;

    goto :goto_6

    .line 493
    :catchall_0
    move-exception v3

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 508
    :catch_0
    move-exception v3

    .line 509
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t scan external storage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v10, "External storage scanning error"

    invoke-virtual {v1, v10, v3}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    move v1, v2

    goto :goto_7

    .line 486
    :cond_5
    const v3, 0x7f0c020c

    goto :goto_8

    .line 504
    :cond_6
    :try_start_8
    monitor-exit v10

    goto/16 :goto_3

    .line 507
    :catchall_1
    move-exception v3

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    .line 515
    :catch_1
    move-exception v1

    .line 516
    :try_start_a
    const-string v2, "External storage scanning error"

    invoke-static {v2, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v2

    const-string v3, "External storage scanning error"

    invoke-virtual {v2, v3, v1}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 518
    const/4 v2, 0x0

    .line 520
    invoke-direct/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->r()V

    goto/16 :goto_4

    :catchall_2
    move-exception v1

    invoke-direct/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->r()V

    throw v1

    :cond_7
    move-object v5, v3

    goto/16 :goto_1
.end method

.method private q()V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    .line 532
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.sd_card_scan_started"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 535
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    .line 542
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.sd_card_scan_stopped"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 545
    return-void
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "packageName notnull"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->as()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/avast/android/mobilesecurity/t;->l(Z)V

    .line 554
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->b(I)V

    .line 555
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->d(I)V

    .line 556
    return-void

    :cond_0
    move v0, v1

    .line 553
    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 710
    const v0, 0x7f0b0006

    return v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->E:I

    .line 208
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->k()V

    .line 210
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v4, 0x7f0c01ea

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->a:Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->m:Landroid/os/Handler;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->F:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->x:Z

    if-nez v2, :cond_0

    .line 213
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->A:Z

    if-eqz v2, :cond_4

    .line 214
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->m()V

    .line 220
    :cond_0
    :goto_0
    const-string v2, "ScannerScanTask"

    const-string v3, "Continuing with scan."

    invoke-static {v2, v3}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->v:Z

    .line 225
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->p:Z

    if-eqz v2, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->s()V

    .line 228
    :cond_1
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->q:Z

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->aT()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/avast/android/mobilesecurity/app/scanner/af;->a(Ljava/util/List;)V

    .line 233
    :cond_2
    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->p:Z

    if-eqz v2, :cond_7

    .line 234
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->o()Z

    move-result v2

    .line 235
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v1, v1, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    move v6, v1

    move v1, v2

    .line 239
    :goto_1
    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->q:Z

    if-eqz v2, :cond_6

    .line 240
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->p()Z

    move-result v1

    .line 241
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v0, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->f:I

    move v7, v0

    move v8, v1

    .line 244
    :goto_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->i:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v5, v5, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->g:I

    int-to-long v9, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    int-to-long v9, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    int-to-long v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 248
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->m:Landroid/os/Handler;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    const-string v2, "scanDone"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;Z)V

    .line 251
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    const-string v2, "lastScanObjects"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v3, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 252
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    const-string v2, "lastScanTime"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v3, v3, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->h:I

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;I)V

    .line 253
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    const-string v2, "lastScanDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/t;->a(Ljava/lang/String;J)V

    .line 254
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->b()Z

    .line 258
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->ar()I

    move-result v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->as()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->at()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->au()I

    move-result v2

    add-int v7, v1, v2

    .line 261
    if-lez v7, :cond_5

    .line 262
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->c()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_5

    .line 264
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v5, v1

    .line 268
    :goto_3
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->c:Lcom/avast/android/mobilesecurity/app/scanner/o;

    invoke-virtual {v1, v5}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(I)V

    .line 269
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V

    .line 271
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->t:Lcom/avast/android/mobilesecurity/app/account/e;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    iget v2, v2, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->g:I

    sget-object v3, Lcom/avast/android/generic/internet/c/a/av;->a:Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v1, v7, v2, v3}, Lcom/avast/android/mobilesecurity/app/account/e;->a(IILcom/avast/android/generic/internet/c/a/av;)V

    .line 273
    if-lez v7, :cond_3

    .line 274
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->j:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 278
    :cond_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 280
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->l()V

    .line 281
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->E:I

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    return-object v0

    .line 216
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->j()V

    .line 217
    const-string v2, "ScannerScanTask"

    const-string v3, "Parallel VPS update called."

    invoke-static {v2, v3}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 280
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->l()V

    .line 281
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->E:I

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    throw v0

    :cond_5
    move v5, v7

    goto :goto_3

    :cond_6
    move v7, v0

    move v8, v1

    goto/16 :goto_2

    :cond_7
    move v6, v0

    goto/16 :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/avast/android/mobilesecurity/scan/l;->a(Ljava/lang/Boolean;)V

    .line 353
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->n()V

    .line 354
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->l()V

    .line 355
    return-void
.end method

.method protected b()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 715
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const-class v2, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 716
    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->A:Z

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v1, 0x7f0c020f

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 734
    :goto_0
    return-object v0

    .line 729
    :cond_0
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->p:Z

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v1, 0x7f0c0205

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 731
    :cond_1
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->q:Z

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v1, 0x7f0c020a

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v1, 0x7f0c0204

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const v1, 0x7f0c01ea

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/scanner/af;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 667
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 668
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->o:Z

    .line 675
    :goto_0
    return-void

    .line 670
    :cond_0
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->o:Z

    goto :goto_0

    .line 673
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->o:Z

    goto :goto_0
.end method

.method g()V
    .locals 3

    .prologue
    .line 678
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/ah;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/scanner/ah;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/af;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->n:Landroid/content/BroadcastReceiver;

    .line 685
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 686
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/avast/android/mobilesecurity/scan/ScanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->v:Z

    .line 690
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->f()V

    .line 691
    return-void
.end method

.method h()V
    .locals 3

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->v:Z

    if-eqz v0, :cond_0

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/scan/ScanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->n:Landroid/content/BroadcastReceiver;

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->v:Z

    .line 706
    :cond_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 699
    const-string v1, "External storage register hasn\'t been registered"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "External storage register hasn\'t been registered"

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f070027

    if-ne v0, v1, :cond_1

    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->C:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "ScannerScanTask"

    const-string v1, "Sequential VPS update complete, releasing semaphore permit."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->C:Z

    .line 365
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->B:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 366
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->e:Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;->m:Z

    .line 368
    :cond_0
    monitor-exit p0

    .line 371
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/avast/android/mobilesecurity/scan/l;->onCancelled()V

    .line 345
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->u:Lcom/avast/android/generic/util/ad;

    invoke-virtual {v0}, Lcom/avast/android/generic/util/ad;->a()V

    .line 346
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->n()V

    .line 347
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/af;->l()V

    .line 348
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/scanner/af;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aO()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->p:Z

    .line 169
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aP()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->q:Z

    .line 170
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->r:Z

    .line 172
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->z:Z

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->p:Z

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->q:Z

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->A:Z

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/af;->d:Lcom/avast/android/mobilesecurity/scan/ScanService;

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    const v1, 0x7f070027

    invoke-virtual {v0, v1, p0}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 188
    :cond_1
    invoke-super {p0}, Lcom/avast/android/mobilesecurity/scan/l;->onPreExecute()V

    .line 189
    return-void
.end method
