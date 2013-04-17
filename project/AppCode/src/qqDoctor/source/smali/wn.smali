.class public final Lwn;
.super Ljava/lang/Object;


# static fields
.field private static g:Lwn;


# instance fields
.field private a:Lho;

.field private b:Lja;

.field private final c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field private d:Landroid/content/Context;

.field private final e:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lwn;->g:Lwn;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lwn;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwn;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lwn;->h:Landroid/os/Handler;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lwn;->a:Lho;

    new-instance v0, Lja;

    invoke-direct {v0}, Lja;-><init>()V

    iput-object v0, p0, Lwn;->b:Lja;

    iput-object p1, p0, Lwn;->d:Landroid/content/Context;

    new-instance v0, Lwo;

    iget-object v1, p0, Lwn;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lwo;-><init>(Lwn;Landroid/os/Looper;)V

    iput-object v0, p0, Lwn;->h:Landroid/os/Handler;

    iget-object v0, p0, Lwn;->d:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lwn;->j:Landroid/app/NotificationManager;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lwn;->e:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v0, p0, Lwn;->f:Ljava/util/List;

    iget-object v1, p0, Lwn;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lwn;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lwn;->i:Ljava/util/List;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lwn;
    .locals 1

    sget-object v0, Lwn;->g:Lwn;

    if-nez v0, :cond_0

    new-instance v0, Lwn;

    invoke-direct {v0, p0}, Lwn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lwn;->g:Lwn;

    :cond_0
    sget-object v0, Lwn;->g:Lwn;

    return-object v0
.end method

.method static synthetic a(Lwn;Lmb;Lmb$a;)V
    .locals 9

    const v8, 0x1248c57

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lwn;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lwn;->i:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    new-instance v1, Lms;

    invoke-direct {v1}, Lms;-><init>()V

    iput-object v0, v1, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iput-boolean v7, p1, Lmb;->d:Z

    iget-object v0, p0, Lwn;->d:Landroid/content/Context;

    const v1, 0x7f0b0b2e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"%s\""

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p1, Lmb;->b:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwn;->d:Landroid/content/Context;

    const v3, 0x7f0b0b2f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwn;->j:Landroid/app/NotificationManager;

    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020237

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    iget-object v3, p0, Lwn;->d:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/tencent/qqpimsecure/ui/activity/NotificationAdblockActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "extra_back_to_main"

    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_FROM_NOTIFICATION"

    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lwn;->d:Landroid/content/Context;

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lwn;->d:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lwn;->j:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v6, p1, Lmb;->d:Z

    goto :goto_0
.end method

.method private a(Lmb;Lmb$a;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lwn;->b:Lja;

    iget-object v3, p1, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lja;->a(Ljava/lang/String;)Lmb;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v0, v4, Lmb;->a:Ljava/lang/String;

    iput-object v0, p1, Lmb;->a:Ljava/lang/String;

    iget-object v0, v4, Lmb;->b:Ljava/lang/String;

    iput-object v0, p1, Lmb;->b:Ljava/lang/String;

    iget v0, v4, Lmb;->c:I

    iput v0, p1, Lmb;->c:I

    iget-boolean v0, v4, Lmb;->d:Z

    iput-boolean v0, p1, Lmb;->d:Z

    iget v0, v4, Lmb;->e:I

    iput v0, p1, Lmb;->e:I

    :cond_3
    :goto_1
    if-eqz p1, :cond_8

    iget v0, p1, Lmb;->c:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_2
    if-eqz v0, :cond_9

    iget v0, p2, Lmb$a;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p2, Lmb$a;->e:I

    move v0, v2

    :goto_3
    if-nez v4, :cond_11

    move v3, v1

    :goto_4
    if-eqz v3, :cond_4

    iget-object v3, p0, Lwn;->b:Lja;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lja;->a(Lmb;)Landroid/content/ContentValues;

    move-result-object v4

    iget-object v5, v3, Lja;->a:Lhs;

    const-string v6, "notification_app"

    const-string v7, "pkg"

    invoke-virtual {v5, v6, v7, v4}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v3, v3, Lja;->a:Lhs;

    invoke-virtual {v3}, Lhs;->b()V

    :cond_4
    iget-object v3, p2, Lmb$a;->i:Lmb;

    iget-boolean v3, v3, Lmb;->d:Z

    if-nez v3, :cond_5

    iget v3, p2, Lmb$a;->e:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_12

    :goto_5
    if-eqz v1, :cond_1

    :cond_5
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, ""

    iput-object v1, p2, Lmb$a;->c:Ljava/lang/String;

    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p2, Lmb$a;->d:I

    iget-object v1, p0, Lwn;->b:Lja;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p2}, Lja;->a(Lmb$a;)Landroid/content/ContentValues;

    move-result-object v2

    iget-object v3, v1, Lja;->a:Lhs;

    const-string v4, "notification_msg"

    const-string v5, "pkg"

    invoke-virtual {v3, v4, v5, v2}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_6

    iput-wide v2, p2, Lmb$a;->h:J

    :cond_6
    iget-object v1, v1, Lja;->a:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lwn;->e:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v3, p1, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lmb;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_2

    :cond_9
    if-eqz p1, :cond_a

    iget v0, p1, Lmb;->c:I

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_7
    if-eqz v0, :cond_b

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_7

    :cond_b
    iget-object v0, p1, Lmb;->a:Ljava/lang/String;

    invoke-static {v0}, Lxf;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_8
    if-eqz v0, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lwn;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_9
    if-ge v3, v5, :cond_e

    iget-object v6, p1, Lmb;->a:Ljava/lang/String;

    iget-object v0, p0, Lwn;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_8

    :cond_d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    :cond_e
    move v0, v2

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lwn;->a:Lho;

    invoke-virtual {v0}, Lho;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lmb;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lwn;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    new-instance v5, Lwp;

    invoke-direct {v5, p0, p1, p2}, Lwp;-><init>(Lwn;Lmb;Lmb$a;)V

    invoke-virtual {v3, v0, v5, v2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    :cond_10
    move v0, v1

    goto/16 :goto_3

    :cond_11
    move v3, v2

    goto/16 :goto_4

    :cond_12
    move v1, v2

    goto/16 :goto_5

    :cond_13
    iput-object v1, p2, Lmb$a;->c:Ljava/lang/String;

    goto/16 :goto_6
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lwn;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lwn;->h:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final a(Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x4

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    array-length v1, v1

    if-gtz v1, :cond_3

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_1

    iget-object v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    array-length v1, v1

    if-ge v1, v7, :cond_4

    :cond_1
    :goto_1
    invoke-direct {p0, v5, v0}, Lwn;->a(Lmb;Lmb$a;)Z

    move-result v3

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iget-object v1, v5, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljf;->a(Ljava/lang/String;)Lkx;

    move-result-object v4

    if-eqz v4, :cond_2

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->isFinishInit()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_6

    move v1, v2

    :goto_2
    invoke-static {}, Lho;->a()Lho;

    move-result-object v6

    invoke-virtual {v6}, Lho;->by()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v4, v1}, Lja;->a(Lkx;I)V

    :goto_3
    iget v1, v4, Lkx;->a:I

    iget-object v6, v4, Lkx;->e:[B

    iget-object v4, v4, Lkx;->b:Ljava/lang/String;

    invoke-static {v1, v6, v4}, Lxf;->a(I[BLjava/lang/String;)Lcom/tencent/tmsecure/module/permission/PermissionTableItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/permission/PermissionManager;->updatePermissionTable(Lcom/tencent/tmsecure/module/permission/PermissionTableItem;)V

    iget-object v0, p0, Lwn;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v5, Lmb;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lwn;->h:Landroid/os/Handler;

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return v3

    :cond_3
    new-instance v1, Lmb;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-direct {v1, v3}, Lmb;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    const-string v3, ""

    iget-object v4, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    array-length v4, v4

    const/4 v6, 0x5

    if-lt v4, v6, :cond_9

    iget-object v3, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo1:[Ljava/lang/String;

    aget-object v3, v3, v7

    move-object v4, v3

    :goto_4
    if-nez v1, :cond_8

    const-string v1, ""

    move-object v3, v1

    :goto_5
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    new-instance v1, Lmb$a;

    invoke-direct {v1, v5, v3, v0, v4}, Lmb$a;-><init>(Lmb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/permission/PermissionRequestInfo;->mInfo2:[I

    aget v0, v0, v2

    int-to-long v3, v0

    iput-wide v3, v1, Lmb$a;->f:J

    move-object v0, v1

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v6, v4, Lkx;->e:[B

    const/16 v7, 0xc

    int-to-byte v1, v1

    aput-byte v1, v6, v7

    goto :goto_3

    :cond_8
    move-object v3, v1

    goto :goto_5

    :cond_9
    move-object v4, v3

    goto :goto_4
.end method

.method public final b()V
    .locals 18

    const-class v1, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->findAllNotificationInfo()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v9, v2

    :goto_0
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lwn;->b:Lja;

    const-string v3, "SELECT * FROM notification_app WHERE ad_like=1 AND setting=0"

    iget-object v4, v2, Lja;->a:Lhs;

    invoke-virtual {v4, v3}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {v3}, Lja;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget-object v2, v2, Lja;->a:Lhs;

    invoke-virtual {v2}, Lhs;->b()V

    if-eqz v9, :cond_0

    if-nez v10, :cond_3

    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;

    if-eqz v2, :cond_2

    new-instance v6, Lmb;

    iget-object v3, v2, Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    invoke-direct {v6, v3}, Lmb;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;->mTickerText:Ljava/lang/String;

    const-string v7, ""

    const-string v8, ""

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    new-instance v10, Lmb$a;

    invoke-direct {v10, v6, v7, v3, v8}, Lmb$a;-><init>(Lmb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, v2, Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;->mNotificationID:J

    iput-wide v7, v10, Lmb$a;->f:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10}, Lwn;->a(Lmb;Lmb$a;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/adcheck/AdcheckManager;->clear(Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;)Z

    :cond_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v9, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_0

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;

    iget-wide v11, v2, Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;->mNotificationID:J

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v2, 0x0

    move v6, v2

    move v5, v4

    move v4, v3

    :goto_3
    if-ge v6, v13, :cond_7

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lmb;

    const/4 v7, 0x0

    iget-object v8, v3, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/adcheck/NotificationInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v3, Lmb;->f:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_b

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lwn;->b:Lja;

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Lja;->d(Lmb;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v3, Lmb;->f:Ljava/util/List;

    :cond_5
    iget-object v2, v3, Lmb;->f:Ljava/util/List;

    move-object v8, v2

    :goto_4
    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v14, :cond_a

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb$a;

    if-eqz v2, :cond_6

    iget-wide v15, v2, Lmb$a;->f:J

    cmp-long v2, v15, v11

    if-nez v2, :cond_6

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v2, 0x1

    move v3, v5

    move/from16 v17, v4

    move v4, v2

    move/from16 v2, v17

    :goto_6
    if-nez v4, :cond_8

    :goto_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v2

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    :cond_7
    move v2, v4

    move v3, v5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v2

    goto :goto_2

    :cond_9
    return-void

    :cond_a
    move v2, v4

    move v3, v5

    move v4, v7

    goto :goto_6

    :cond_b
    move-object v8, v2

    goto :goto_4

    :cond_c
    move v2, v4

    move v3, v5

    goto :goto_7
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lwn;->a:Lho;

    invoke-virtual {v0}, Lho;->di()Z

    move-result v0

    return v0
.end method
