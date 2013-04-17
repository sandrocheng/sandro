.class public Lof;
.super Lcom/tencent/tmsecure/module/networkload/BasicDownloadService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lof$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

.field private static g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lkv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lov;

.field private e:J

.field private f:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private h:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "QQSecureDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lof;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lof;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lof;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lof;->g:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/networkload/BasicDownloadService;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lof;->e:J

    new-instance v0, Log;

    invoke-direct {v0, p0}, Log;-><init>(Lof;)V

    iput-object v0, p0, Lof;->h:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    new-instance v0, Loh;

    invoke-direct {v0, p0}, Loh;-><init>(Lof;)V

    iput-object v0, p0, Lof;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lof;J)J
    .locals 0

    iput-wide p1, p0, Lof;->e:J

    return-wide p1
.end method

.method static synthetic a(Lof;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lof;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lkv;
    .locals 2

    const-class v1, Lof;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lof;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/util/List;)Lkv;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)",
            "Lkv;"
        }
    .end annotation

    const/4 v1, 0x0

    const-class v2, Lof;

    monitor-enter v2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v4, v0, Lkv;->d:Lkw;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lkv;->d:Lkw;

    invoke-virtual {v4}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static declared-synchronized a(Lkv;)V
    .locals 3

    const-class v1, Lof;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lkv;->d:Lkw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lof;->g:Ljava/util/Hashtable;

    iget-object v2, p0, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()Z
    .locals 3

    const/4 v0, 0x1

    const-class v1, Lof;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    sget-object v2, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getWaitingTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getRunningTasks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lof;)J
    .locals 2

    iget-wide v0, p0, Lof;->e:J

    return-wide v0
.end method

.method static synthetic b()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;
    .locals 1

    sget-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    const-class v1, Lof;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string v0, ".tmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    if-eqz v0, :cond_0

    sget-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getAllTasks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v3, v0, Lkv;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Lkv;->mState:I

    if-eq v3, v5, :cond_3

    sget-object v3, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->deleteTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Lkv;)V
    .locals 3

    const-class v1, Lof;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lkv;->d:Lkw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lof;->g:Ljava/util/Hashtable;

    iget-object v2, p0, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Lkv;)F
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-class v1, Lof;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    iget-wide v2, p0, Lkv;->mSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    :try_start_1
    iget v2, p0, Lkv;->mProgress:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    iget v0, p0, Lkv;->mProgress:F

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lkv;->mCurrentSize:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-wide v2, p0, Lkv;->mCurrentSize:J

    long-to-float v0, v2

    iget-wide v2, p0, Lkv;->mSize:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-float v0, v2

    iget-wide v2, p0, Lkv;->mSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lof;)Lov;
    .locals 1

    iget-object v0, p0, Lof;->c:Lov;

    return-object v0
.end method

.method static synthetic d(Lof;)Lcom/tencent/tmsecure/module/software/SoftwareManager;
    .locals 1

    iget-object v0, p0, Lof;->f:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    return-object v0
.end method

.method public static declared-synchronized d(Lkv;)Ljava/io/File;
    .locals 4

    const/4 v3, 0x3

    const-class v1, Lof;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lkv;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkv;->mParentPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v0, p0, Lkv;->mState:I

    if-ne v3, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkv;->mParentPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkv;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget v0, p0, Lkv;->mState:I

    if-ne v3, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lof;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkv;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkv;->mParentPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkv;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lof;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkv;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 4

    sget-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tencent/tmsecure/module/networkload/BasicDownloadService;->onBind()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    sput-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    sget-object v1, Lof;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->setDownloadDirPath(Ljava/lang/String;)V

    sget-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->setRunningTaskCountLimit(B)V

    sget-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-static {}, Lf;->i()Lhe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->setNetworkLoadTaskDao(Lcom/tencent/tmsecure/module/networkload/INetworkLoadTaskDao;)V

    sget-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lof;->h:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iput-object v0, p0, Lof;->c:Lov;

    const-class v0, Lcom/tencent/tmsecure/module/tools/FileChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/FileChangedManager;

    sget-object v1, Lof;->a:Ljava/lang/String;

    const/16 v2, 0x200

    new-instance v3, Lof$a;

    invoke-direct {v3, p0}, Lof$a;-><init>(Lof;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tmsecure/module/tools/FileChangedManager;->addListener(Ljava/lang/String;ILcom/tencent/tmsecure/module/tools/IFileChangedListener;)V

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lof;->f:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    :cond_0
    sget-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    return-object v0
.end method

.method public onDestory()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tmsecure/module/networkload/BasicDownloadService;->onDestory()V

    const/4 v0, 0x0

    sput-object v0, Lof;->d:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    sget-object v0, Lof;->g:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lof;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method
