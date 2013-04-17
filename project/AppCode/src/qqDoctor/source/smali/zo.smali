.class public final Lzo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzo$a;
    }
.end annotation


# static fields
.field private static a:Lzo;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmi;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Lcom/tencent/tmsecure/module/applist/AppListManager;

.field private final e:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Ldw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldw",
            "<",
            "Lzo$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lho;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Landroid/os/Handler;

.field private final n:[Ljava/lang/String;

.field private final o:[Ljava/lang/String;

.field private final p:[Ljava/lang/String;

.field private final q:[Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private s:[Ljava/lang/String;

.field private t:Landroid/content/pm/ResolveInfo;

.field private u:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lzo;->a:Lzo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzo;->b:Ljava/util/List;

    iput-boolean v3, p0, Lzo;->g:Z

    new-instance v0, Ldw;

    invoke-direct {v0}, Ldw;-><init>()V

    iput-object v0, p0, Lzo;->h:Ldw;

    iput-object v5, p0, Lzo;->i:Ljava/lang/String;

    iput v3, p0, Lzo;->k:I

    iput-object v5, p0, Lzo;->m:Landroid/os/Handler;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "uid.system"

    aput-object v1, v0, v3

    const-string v1, "uid.shared"

    aput-object v1, v0, v4

    const-string v1, "uid.phone"

    aput-object v1, v0, v6

    const-string v1, "android.media"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "com.motorola.blur"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.uid.sec.activitywidget"

    aput-object v2, v0, v1

    iput-object v0, p0, Lzo;->n:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.uid.phone"

    aput-object v1, v0, v3

    iput-object v0, p0, Lzo;->o:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":service"

    aput-object v1, v0, v3

    const-string v1, ":remote"

    aput-object v1, v0, v4

    const-string v1, ":push"

    aput-object v1, v0, v6

    const-string v1, ":FriendService"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, ":BackgroundFriendService"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ":LocationFriendService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ":provider"

    aput-object v2, v0, v1

    iput-object v0, p0, Lzo;->p:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.BIND_WALLPAPER"

    aput-object v1, v0, v3

    iput-object v0, p0, Lzo;->q:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzo;->r:Ljava/util/List;

    iput-object v5, p0, Lzo;->t:Landroid/content/pm/ResolveInfo;

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    iput-object v0, p0, Lzo;->e:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lzo;->c:Landroid/content/pm/PackageManager;

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    iput-object v0, p0, Lzo;->d:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lzo;->j:Lho;

    iput-object p1, p0, Lzo;->f:Landroid/content/Context;

    new-instance v0, Lzp;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lzp;-><init>(Lzo;Landroid/os/Looper;)V

    iput-object v0, p0, Lzo;->m:Landroid/os/Handler;

    iget-object v0, p0, Lzo;->j:Lho;

    invoke-virtual {v0}, Lho;->at()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzo;->i:Ljava/lang/String;

    invoke-direct {p0}, Lzo;->n()V

    return-void
.end method

.method public static a()Lzo;
    .locals 3

    const-class v1, Labv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lzo;->a:Lzo;

    if-nez v0, :cond_0

    new-instance v0, Lzo;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lzo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzo;->a:Lzo;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lzo;->a:Lzo;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmi;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lmi;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lzo;->h:Ldw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzo;->h:Ldw;

    invoke-virtual {v0}, Ldw;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lzo;->m:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzo;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmi;

    iget-object v6, v0, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget-object v6, v6, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPackageName:Ljava/lang/String;

    iget-object v1, v1, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    :goto_2
    if-nez v0, :cond_4

    move v0, v2

    :goto_3
    if-eqz v0, :cond_0

    iget-object v0, p0, Lzo;->m:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzo;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_3
.end method

.method static synthetic a(Lzo;)Z
    .locals 1

    iget-object v0, p0, Lzo;->h:Ldw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzo;->h:Ldw;

    invoke-virtual {v0}, Ldw;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lzo;)Ldw;
    .locals 1

    iget-object v0, p0, Lzo;->h:Ldw;

    return-object v0
.end method

.method private b(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lzo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lzo;->m()V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v3, p0, Lzo;->b:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lzo;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmi;

    iget-object v5, v1, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v5

    invoke-static {v5}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;)Lkw;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, v1, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget-object v6, v6, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lkw;->k(Ljava/lang/String;)V

    iget-object v6, v1, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget v6, v6, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPriorityGroup:I

    invoke-virtual {v5, v6}, Lkw;->k(I)V

    iget-object v6, v1, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget v6, v6, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPriority:I

    invoke-virtual {v5, v6}, Lkw;->j(I)V

    iget-object v6, v1, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget v6, v6, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPid:I

    invoke-virtual {v5, v6}, Lkw;->o(I)V

    iget-wide v6, v1, Lmi;->b:J

    invoke-virtual {v5, v6, v7}, Lkw;->d(J)V

    iget-wide v6, v1, Lmi;->c:J

    invoke-virtual {v5, v6, v7}, Lkw;->e(J)V

    invoke-virtual {v5}, Lkw;->isSystemApp()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lzo;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lkw;->j(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_4

    invoke-direct {p0, v2}, Lzo;->c(Ljava/util/List;)V

    :cond_4
    invoke-static {v2}, Lzo;->d(Ljava/util/List;)V

    return-object v2
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lzo;->a:Lzo;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lzo;->p:[Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lzo;->p:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private c(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v11, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->G()J

    move-result-wide v4

    cmp-long v4, v4, v11

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lkw;->H()J

    move-result-wide v4

    cmp-long v4, v4, v11

    if-gtz v4, :cond_3

    :cond_2
    invoke-virtual {v0}, Lkw;->V()I

    move-result v0

    aput v0, v3, v1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lzo;->e:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v0, v3}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getRamSize([I)[Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    move v3, v2

    :goto_1
    array-length v0, v4

    if-ge v3, v0, :cond_0

    aget-object v5, v4, v3

    if-eqz p1, :cond_5

    if-eqz v5, :cond_5

    iget v0, v5, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mPid:I

    if-eqz v0, :cond_5

    iget-object v0, v5, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mInfo:Landroid/os/Debug$MemoryInfo;

    if-nez v0, :cond_7

    :cond_5
    aget-object v1, v4, v3

    iget-object v0, p0, Lzo;->b:Ljava/util/List;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    iget v0, v1, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mPid:I

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mInfo:Landroid/os/Debug$MemoryInfo;

    if-nez v0, :cond_9

    :cond_6
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_7
    move v1, v2

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->V()I

    move-result v6

    iget v7, v5, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mPid:I

    if-ne v6, v7, :cond_8

    iget-object v6, v5, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v6}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6

    shl-int/lit8 v6, v6, 0xa

    iget-object v7, v5, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v7

    shl-int/lit8 v7, v7, 0xa

    int-to-long v8, v6

    invoke-virtual {v0, v8, v9}, Lkw;->d(J)V

    int-to-long v6, v7

    invoke-virtual {v0, v6, v7}, Lkw;->e(J)V

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lzo;->b:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lzo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi;

    iget-wide v7, v0, Lmi;->b:J

    cmp-long v7, v7, v11

    if-lez v7, :cond_b

    iget-wide v7, v0, Lmi;->c:J

    cmp-long v7, v7, v11

    if-gtz v7, :cond_a

    :cond_b
    iget-object v7, v0, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget v7, v7, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPid:I

    iget v8, v1, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mPid:I

    if-ne v7, v8, :cond_a

    iget-object v7, v1, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v7

    shl-int/lit8 v7, v7, 0xa

    iget-object v8, v1, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {v8}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v8

    shl-int/lit8 v8, v8, 0xa

    int-to-long v9, v7

    iput-wide v9, v0, Lmi;->b:J

    int-to-long v7, v8

    iput-wide v7, v0, Lmi;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_c
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lzo;->c:Landroid/content/pm/PackageManager;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    iget-object v6, p0, Lzo;->q:[Ljava/lang/String;

    array-length v7, v6

    move v1, v0

    :goto_2
    if-ge v1, v7, :cond_3

    aget-object v8, v6, v1

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkw;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lkw;->G()J

    move-result-wide v4

    invoke-virtual {v1}, Lkw;->G()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lkw;->d(J)V

    invoke-virtual {v0}, Lkw;->H()J

    move-result-wide v4

    invoke-virtual {v1}, Lkw;->H()J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lkw;->e(J)V

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static d(Lkw;)Z
    .locals 1

    invoke-virtual {p0}, Lkw;->J()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Lkw;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lhg;

    invoke-direct {v3}, Lhg;-><init>()V

    iget-object v3, v3, Lhg;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lzo;->j(Lkw;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-direct {p0, p1}, Lzo;->i(Lkw;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lzo;->l:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzo;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lzo;->h(Lkw;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzo;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lzo;->s:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lzo;->s:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_8

    :cond_7
    move v0, v2

    :goto_1
    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lzo;->s:[Ljava/lang/String;

    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_a

    aget-object v5, v3, v0

    invoke-virtual {p1}, Lkw;->E()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Lkw;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    sget-object v0, Ladd;->a:Ladd;

    if-nez v0, :cond_c

    new-instance v0, Ladd;

    invoke-direct {v0}, Ladd;-><init>()V

    sput-object v0, Ladd;->a:Ladd;

    :cond_c
    sget-object v3, Ladd;->a:Ladd;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v3, Ladd;->c:LQQPIM/SoftList;

    if-nez v0, :cond_d

    iget-object v0, v3, Ladd;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    sget-object v5, LQQPIM/SoftListType;->NOTKILLLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/applist/AppListManager;->loadAppList(LQQPIM/SoftListType;)LQQPIM/SoftList;

    move-result-object v0

    iput-object v0, v3, Ladd;->c:LQQPIM/SoftList;

    :cond_d
    iget-object v0, v3, Ladd;->c:LQQPIM/SoftList;

    if-eqz v0, :cond_10

    iget-object v0, v0, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftElementInfo;

    iget-object v6, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget v6, v0, LQQPIM/SoftElementInfo;->softsize:I

    if-nez v6, :cond_e

    iget-object v6, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    if-eqz v6, :cond_f

    iget-object v6, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_f

    iget-object v0, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ladd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_f
    move v0, v1

    :goto_3
    if-eqz v0, :cond_11

    move v0, v2

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto :goto_3

    :cond_11
    invoke-virtual {p1}, Lkw;->E()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v4, p0, Lzo;->o:[Ljava/lang/String;

    array-length v5, v4

    move v0, v2

    :goto_4
    if-ge v0, v5, :cond_13

    aget-object v6, v4, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v0, v1

    :goto_5
    if-eqz v0, :cond_14

    move v0, v2

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    move v0, v2

    goto :goto_5

    :cond_14
    move v0, v1

    goto/16 :goto_0
.end method

.method private g(Lkw;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lkw;->E()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lzo;->n:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private h(Lkw;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lzo;->t:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzo;->t:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzo;->r:Ljava/util/List;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private i(Lkw;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lzo;->j(Lkw;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lzo;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j(Lkw;)I
    .locals 7

    const/4 v0, -0x1

    iget-object v1, p0, Lzo;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lzo;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v1, p0, Lzo;->i:Ljava/lang/String;

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    :goto_1
    if-eq v1, v0, :cond_3

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lzo;->i:Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lzo;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Lzo;->i:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object v6, v1

    move v1, v2

    move-object v2, v6

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static l()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private m()V
    .locals 5

    iget-boolean v0, p0, Lzo;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lzo;->b:Ljava/util/List;

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getAllRunningProcess(Z)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    new-instance v4, Lmi;

    invoke-direct {v4}, Lmi;-><init>()V

    iput-object v0, v4, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lzo;->b:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iput-object v2, p0, Lzo;->b:Ljava/util/List;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1, v2}, Lzo;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private n()V
    .locals 4

    iget-object v1, p0, Lzo;->r:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lzo;->u:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lzo;->u:Landroid/content/Intent;

    iget-object v0, p0, Lzo;->u:Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lzo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lzo;->c:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lzo;->u:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lzo;->r:Ljava/util/List;

    invoke-direct {p0}, Lzo;->o()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzo;->s:[Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private o()[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lzo;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lzo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lzo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    :try_start_0
    iget-object v3, p0, Lzo;->c:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lzo;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    aput-object v0, v2, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(I)J
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    iget-object v2, p0, Lzo;->e:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v2, v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getRamSize([I)[Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    array-length v2, v3

    if-lez v2, :cond_1

    array-length v0, v3

    new-array v2, v0, [Landroid/os/Debug$MemoryInfo;

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    iget-object v4, v4, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;->mInfo:Landroid/os/Debug$MemoryInfo;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    :goto_1
    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public final a(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lzo;->b(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lzo;->f:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-object v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzo;->l:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    invoke-static {p1}, Lzo;->d(Ljava/util/List;)V

    iget v2, p0, Lzo;->k:I

    iget-object v3, p0, Lzo;->b:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lzo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi;

    if-eqz v0, :cond_0

    iget-object v5, v0, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lzo;->h()Ljava/util/List;

    iget v0, p0, Lzo;->k:I

    if-eq v2, v0, :cond_3

    iget-object v0, p0, Lzo;->m:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzo;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iput-boolean v9, p0, Lzo;->g:Z

    return-void

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lkw;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lzo;->b:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lzo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lmi;->a:Lcom/tencent/tmsecure/module/optimize/ProcessEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/optimize/ProcessEntity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzo;->g:Z

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget v0, p0, Lzo;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lzo;->k:I

    iget-object v0, p0, Lzo;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lzo;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final declared-synchronized a(Lkw;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-direct {p0, p1}, Lzo;->j(Lkw;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    iget-object v2, p0, Lzo;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lzo;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzo;->i:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lzo;->j:Lho;

    iget-object v1, p0, Lzo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lho;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lzo;->i:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzo;->i:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final a(Lzo$a;)V
    .locals 1

    iget-object v0, p0, Lzo;->h:Ldw;

    invoke-virtual {v0, p1}, Ldw;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/content/ComponentName;)Z
    .locals 4

    invoke-direct {p0}, Lzo;->n()V

    iget-object v0, p0, Lzo;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lzo;->t:Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {p0, v0}, Lzo;->c(Lkw;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b(Lzo$a;)V
    .locals 1

    iget-object v0, p0, Lzo;->h:Ldw;

    invoke-virtual {v0, p1}, Ldw;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final declared-synchronized b(Lkw;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lzo;->l:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lzo;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lzo;->d:Lcom/tencent/tmsecure/module/applist/AppListManager;

    sget-object v4, LQQPIM/SoftListType;->BLACKLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    invoke-virtual {v3, v2, v4}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lhg;

    invoke-direct {v3}, Lhg;-><init>()V

    iget-object v3, v3, Lhg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lzo;->h(Lkw;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lzo;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lzo;->d:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, LQQPIM/SoftListType;->WHITELIST_KILL_PROCESS:LQQPIM/SoftListType;

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lkw;->K()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lzo;->g(Lkw;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lkw;->F()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lzo;->b(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzo;->g:Z

    return-void
.end method

.method public final c(Lkw;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lzo;->f(Lkw;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lzo;->j(Lkw;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-direct {p0, p1}, Lzo;->i(Lkw;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lzo;->d:Lcom/tencent/tmsecure/module/applist/AppListManager;

    sget-object v4, LQQPIM/SoftListType;->BLACKLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    invoke-virtual {v3, v0, v4}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lkw;->K()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_4

    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lzo;->g(Lkw;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lkw;->F()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzo;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    sget-object v0, Ladd;->a:Ladd;

    if-nez v0, :cond_8

    new-instance v0, Ladd;

    invoke-direct {v0}, Ladd;-><init>()V

    sput-object v0, Ladd;->a:Ladd;

    :cond_8
    sget-object v3, Ladd;->a:Ladd;

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v3, Ladd;->c:LQQPIM/SoftList;

    if-nez v0, :cond_9

    iget-object v0, v3, Ladd;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    sget-object v5, LQQPIM/SoftListType;->NOTKILLLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/applist/AppListManager;->loadAppList(LQQPIM/SoftListType;)LQQPIM/SoftList;

    move-result-object v0

    iput-object v0, v3, Ladd;->c:LQQPIM/SoftList;

    :cond_9
    iget-object v0, v3, Ladd;->c:LQQPIM/SoftList;

    if-eqz v0, :cond_c

    iget-object v0, v0, LQQPIM/SoftList;->vctSofts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftElementInfo;

    iget-object v6, v0, LQQPIM/SoftElementInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v0, LQQPIM/SoftElementInfo;->softsize:I

    if-ne v6, v2, :cond_a

    iget-object v6, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    iget-object v0, v0, LQQPIM/SoftElementInfo;->cert:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ladd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_b
    move v0, v2

    :goto_2
    if-eqz v0, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_2

    :cond_d
    move v0, v2

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lzo;->g:Z

    return v0
.end method

.method public final e()V
    .locals 0

    invoke-direct {p0}, Lzo;->m()V

    return-void
.end method

.method public final e(Lkw;)Z
    .locals 2

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lhg;

    invoke-direct {v1}, Lhg;-><init>()V

    iget-object v1, v1, Lhg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lzo;->i(Lkw;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    invoke-virtual {p0}, Lzo;->h()Ljava/util/List;

    return-void
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lzo;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lzo;->m()V

    :cond_0
    iget v0, p0, Lzo;->k:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lzo;->h()Ljava/util/List;

    :cond_1
    iget v0, p0, Lzo;->k:I

    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lzo;->a(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->J()I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lzo;->k:I

    return-object v4
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lzo;->a(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzo;->a(Z)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-direct {p0, v0}, Lzo;->f(Lkw;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lzo;->c(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final k()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lzo;->a(Landroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
