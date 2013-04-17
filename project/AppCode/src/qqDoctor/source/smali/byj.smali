.class final Lbyj;
.super Ljava/lang/Object;


# static fields
.field private static c:Lbyj;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "LQQPIM/CloudInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbyj;->c:Lbyj;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lbyj;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lbyj;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lbyj;
    .locals 2

    const-class v1, Lbyj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbyj;->c:Lbyj;

    if-nez v0, :cond_0

    new-instance v0, Lbyj;

    invoke-direct {v0, p0}, Lbyj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbyj;->c:Lbyj;

    :cond_0
    sget-object v0, Lbyj;->c:Lbyj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(LQQPIM/CloudInfo;)V
    .locals 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmd;

    const/4 v2, -0x5

    new-instance v4, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v4}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/CloudCmd;->getParam()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    invoke-virtual {v0}, LQQPIM/CloudCmd;->getCmdid()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_0
    const-string v0, "cloudcmd"

    new-instance v5, LQQPIM/DeleteFileInfo;

    invoke-direct {v5}, LQQPIM/DeleteFileInfo;-><init>()V

    invoke-virtual {v4, v0, v5}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/DeleteFileInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LQQPIM/DeleteFileInfo;->getFile()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lbyj;->a:Landroid/content/Context;

    invoke-static {v0}, La;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "cloudcmd"

    new-instance v5, LQQPIM/InstallInfo;

    invoke-direct {v5}, LQQPIM/InstallInfo;-><init>()V

    invoke-virtual {v4, v0, v5}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/InstallInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LQQPIM/InstallInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lbyj;->a:Landroid/content/Context;

    const-string v6, "temp.apk"

    new-instance v7, Lbth;

    invoke-direct {v7, v5}, Lbth;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lbth;->f:Ljava/lang/String;

    iput-object v6, v7, Lbth;->g:Ljava/lang/String;

    const/4 v5, 0x1

    iput v5, v7, Lbth;->h:I

    const/4 v5, 0x0

    invoke-virtual {v7, v4, v5}, Lbth;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LQQPIM/InstallInfo;->getOption()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    move v0, v2

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lbyj;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbyj;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/temp.apk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lbyj;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbyj;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/temp.apk"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "cloudcmd"

    new-instance v5, LQQPIM/KillProcessInfo;

    invoke-direct {v5}, LQQPIM/KillProcessInfo;-><init>()V

    invoke-virtual {v4, v0, v5}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/KillProcessInfo;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lbyj;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/KillProcessInfo;->getProcess()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "cloudcmd"

    new-instance v5, LQQPIM/UninstallInfo;

    invoke-direct {v5}, LQQPIM/UninstallInfo;-><init>()V

    invoke-virtual {v4, v0, v5}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UninstallInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LQQPIM/UninstallInfo;->getOption()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    move v0, v2

    goto/16 :goto_1

    :sswitch_6
    iget-object v4, p0, Lbyj;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/UninstallInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto/16 :goto_1

    :sswitch_7
    iget-object v2, p0, Lbyj;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/UninstallInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DELETE"

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "cloudcmd"

    new-instance v5, LQQPIM/OpenLinkInfo;

    invoke-direct {v5}, LQQPIM/OpenLinkInfo;-><init>()V

    invoke-virtual {v4, v0, v5}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/OpenLinkInfo;

    if-eqz v0, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, LQQPIM/OpenLinkInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lbyj;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "cloudcmd"

    new-instance v5, LQQPIM/ExecShell;

    invoke-direct {v5}, LQQPIM/ExecShell;-><init>()V

    invoke-virtual {v4, v0, v5}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ExecShell;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lbyj;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/ExecShell;->getShellcmd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->r(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_9
        0x65 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_7
        0x5 -> :sswitch_6
    .end sparse-switch
.end method

.method private declared-synchronized b()V
    .locals 8

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbyj;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v4

    invoke-virtual {v4}, LQQPIM/TimeCtrl;->getTime()I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v4

    invoke-virtual {v4}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, LQQPIM/TipsInfo;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_4
    :goto_3
    :sswitch_0
    iget-object v1, p0, Lbyj;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :sswitch_1
    invoke-direct {p0, v0}, Lbyj;->a(LQQPIM/CloudInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()I
    .locals 6

    const-string v0, "softversion"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "build"

    invoke-static {v1}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v1

    const-string v2, "product"

    invoke-static {v2}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buildno="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&version="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&productid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LQQPIM/ClientVersionInfo;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const-string v5, ""

    invoke-direct {v2, v3, v4, v0, v5}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getUpdatesV2(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ServerCmdInfo;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lbyj;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v2, p0, Lbyj;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, LQQPIM/ServerCmdInfo;->getCloudinfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lbyj;->b()V

    :cond_1
    move v0, v1

    goto :goto_0
.end method
