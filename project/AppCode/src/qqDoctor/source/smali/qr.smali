.class public final Lqr;
.super Ljava/lang/Object;


# static fields
.field private static e:Lqr;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LQQPIM/CloudInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LQQPIM/CloudInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudInfoRes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lqr;->e:Lqr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqr;->a:Landroid/content/Context;

    const-string v0, "nldb.sdb"

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "rule_store.sys"

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_COMMON_NAME:Ljava/lang/String;

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->ROM_THIRDPART_NAME:Ljava/lang/String;

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_UNUSUAL_NAME:Ljava/lang/String;

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_ROM_NAME:Ljava/lang/String;

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_WITHPLUGIN_NAME:Ljava/lang/String;

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "qv_base.amf"

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "trusturls.dat"

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "net_interface_type_traffic_stat.dat"

    invoke-static {p1, v0, v1}, La;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "tips"

    const-string v1, "tips.dat"

    invoke-static {p1, v0, v1}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lqr;->b:Ljava/util/List;

    const-string v0, "p_tips"

    const-string v1, "p_tips.dat"

    invoke-static {p1, v0, v1}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lqr;->c:Ljava/util/List;

    const-string v0, "tips_res"

    const-string v1, "tips_res.dat"

    invoke-static {p1, v0, v1}, Lfj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lqr;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqr;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lqr;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqr;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lqr;->b:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqr;->b:Ljava/util/List;

    :cond_2
    return-void
.end method

.method static synthetic a(Lqr;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lqr;
    .locals 1

    sget-object v0, Lqr;->e:Lqr;

    if-nez v0, :cond_0

    new-instance v0, Lqr;

    invoke-direct {v0, p0}, Lqr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lqr;->e:Lqr;

    :cond_0
    sget-object v0, Lqr;->e:Lqr;

    return-object v0
.end method

.method private declared-synchronized a(LQQPIM/CloudInfo;LQQPIM/CloudInfoRes;)V
    .locals 6

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p2, v0}, LQQPIM/CloudInfoRes;->setPhase(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-virtual {p2, v0}, LQQPIM/CloudInfoRes;->setTime(I)V

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, -0x6

    invoke-virtual {p2, v0}, LQQPIM/CloudInfoRes;->setRes(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p2, v2}, LQQPIM/CloudInfoRes;->setRes(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmd;

    invoke-virtual {p0, p1, v0}, Lqr;->a(LQQPIM/CloudInfo;LQQPIM/CloudCmd;)I

    move-result v2

    new-instance v4, LQQPIM/CloudCmdRes;

    invoke-virtual {v0}, LQQPIM/CloudCmd;->getSeqid()I

    move-result v5

    if-nez v2, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {v4, v5, v0}, LQQPIM/CloudCmdRes;-><init>(II)V

    invoke-virtual {p2}, LQQPIM/CloudInfoRes;->getCmdres()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, LQQPIM/CloudInfoRes;->setRes(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private a(LQQPIM/ServerCmdInfo;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lqr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, LQQPIM/ServerCmdInfo;->getCloudinfos()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lqr;->b:Ljava/util/List;

    iget-object v0, p0, Lqr;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    iget-object v1, p0, Lqr;->b:Ljava/util/List;

    const-string v3, "tips"

    const-string v4, "tips.dat"

    invoke-static {v0, v1, v3, v4}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lqr;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfoRes;

    iget-object v1, p0, Lqr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQQPIM/CloudInfo;

    invoke-virtual {v1}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/CloudInfoRes;->getTipsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v1, LQQPIM/CmdInfoRes;

    invoke-direct {v1}, LQQPIM/CmdInfoRes;-><init>()V

    invoke-virtual {v1, v3}, LQQPIM/CmdInfoRes;->setInfores(Ljava/util/ArrayList;)V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportTipsRes(LQQPIM/CmdInfoRes;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfoRes;

    iget-object v3, p0, Lqr;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lqr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LQQPIM/CloudInfo;

    new-instance v0, LQQPIM/CloudInfoRes;

    invoke-virtual {v3}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/TimeCtrl;->getTime()I

    move-result v7

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v7}, LQQPIM/CloudInfoRes;-><init>(Ljava/lang/String;IILjava/util/ArrayList;III)V

    iget-object v1, p0, Lqr;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lqr;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    iget-object v1, p0, Lqr;->d:Ljava/util/ArrayList;

    const-string v2, "tips_res"

    const-string v3, "tips_res.dat"

    invoke-static {v0, v1, v2, v3}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    move v1, v5

    goto :goto_1
.end method

.method static synthetic b(Lqr;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lqr;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lqr;)V
    .locals 4

    iget-object v0, p0, Lqr;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    iget-object v1, p0, Lqr;->b:Ljava/util/List;

    const-string v2, "tips"

    const-string v3, "tips.dat"

    invoke-static {v0, v1, v2, v3}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic d(Lqr;)V
    .locals 4

    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    iget-object v1, p0, Lqr;->c:Ljava/util/List;

    const-string v2, "p_tips"

    const-string v3, "p_tips.dat"

    invoke-static {v0, v1, v2, v3}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pm install "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lqr;)V
    .locals 4

    iget-object v0, p0, Lqr;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    iget-object v1, p0, Lqr;->d:Ljava/util/ArrayList;

    const-string v2, "tips_res"

    const-string v3, "tips_res.dat"

    invoke-static {v0, v1, v2, v3}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mount -o remount,rw /"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 0777 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I

    move-result v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pm uninstall "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pm disable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pm enable "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptAsRoot([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(LQQPIM/CloudInfo;LQQPIM/CloudCmd;)I
    .locals 10

    const/high16 v9, 0x1000

    const-wide/16 v7, 0x3e8

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x5

    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {p2}, LQQPIM/CloudCmd;->getParam()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    invoke-virtual {p2}, LQQPIM/CloudCmd;->getCmdid()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return v2

    :sswitch_0
    new-instance v0, Lss;

    iget-object v2, p0, Lqr;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1, v6}, Lss;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0}, Lss;->e()V

    invoke-virtual {v0}, Lss;->b()I

    move-result v2

    goto :goto_0

    :sswitch_1
    new-instance v0, Lacg;

    iget-object v2, p0, Lqr;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1, v6}, Lacg;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0}, Lacg;->e()V

    invoke-virtual {v0}, Lacg;->b()I

    move-result v2

    goto :goto_0

    :sswitch_2
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/DeleteFileInfo;

    invoke-direct {v4}, LQQPIM/DeleteFileInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/DeleteFileInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, LQQPIM/DeleteFileInfo;->getFile()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v0}, Lqr;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/InstallInfo;

    invoke-direct {v4}, LQQPIM/InstallInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/InstallInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/InstallInfo;->getUrl()Ljava/lang/String;

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/InstallInfo;->getOption()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/temp.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v1

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/temp.apk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqr;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/KillProcessInfo;

    invoke-direct {v4}, LQQPIM/KillProcessInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/KillProcessInfo;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/KillProcessInfo;->getProcess()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqr;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/UninstallInfo;

    invoke-direct {v4}, LQQPIM/UninstallInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/UninstallInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/UninstallInfo;->getOption()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_8
    iget-object v2, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/UninstallInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v1

    goto/16 :goto_0

    :sswitch_9
    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/UninstallInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqr;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/OpenLinkInfo;

    invoke-direct {v4}, LQQPIM/OpenLinkInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/OpenLinkInfo;

    if-eqz v0, :cond_5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, LQQPIM/OpenLinkInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_2
    move v2, v1

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/ExecShell;

    invoke-direct {v4}, LQQPIM/ExecShell;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ExecShell;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v0}, LQQPIM/ExecShell;->getShellcmd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqr;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "cloudcmd"

    new-instance v3, LQQPIM/MQQSecRunInfo;

    invoke-direct {v3}, LQQPIM/MQQSecRunInfo;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/SwitchSet;

    invoke-direct {v4}, LQQPIM/SwitchSet;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SwitchSet;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CloudServiceManager switchSet.getSwitchid() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/SwitchSet;->getSwitchid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/SwitchSet;->getSwitchid()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lho;->a()Lho;

    move-result-object v3

    invoke-virtual {v0}, LQQPIM/SwitchSet;->getIsopen()B

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "auto_upload_crash"

    invoke-virtual {v3, v0, v6}, Lho;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "auto_upload_crash"

    invoke-virtual {v3, v0, v1}, Lho;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lho;->a()Lho;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CloudServiceManager switchSet.getIsopen() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/SwitchSet;->getIsopen()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/SwitchSet;->getIsopen()B

    move-result v0

    if-ne v0, v6, :cond_2

    invoke-virtual {v3, v6}, Lho;->L(Z)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Lho;->L(Z)V

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "cloudcmd"

    new-instance v3, LQQPIM/ImageAds;

    invoke-direct {v3}, LQQPIM/ImageAds;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ImageAds;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/ImageAds;->getLocation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v1}, Lsi;->a(Landroid/content/Context;)Lsi;

    move-result-object v1

    new-instance v3, Llu;

    invoke-direct {v3}, Llu;-><init>()V

    invoke-virtual {v0}, LQQPIM/ImageAds;->getLocation()I

    move-result v4

    invoke-virtual {v1, v4}, Lsi;->a(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Llu;->c:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/ImageAds;->getPicurl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llu;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/ImageAds;->getLinkurl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Llu;->b:Ljava/lang/String;

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v4

    invoke-virtual {v4}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v7

    iput-wide v4, v3, Llu;->e:J

    invoke-virtual {v0}, LQQPIM/ImageAds;->getShowtime()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v4, v7

    iput-wide v4, v3, Llu;->d:J

    invoke-virtual {v1, v3}, Lsi;->a(Llu;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lwq;->a()Lwq;

    move-result-object v1

    new-instance v3, Lwq$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3}, Lwq$a;-><init>()V

    invoke-virtual {v0}, LQQPIM/ImageAds;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwq$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v4

    invoke-virtual {v4}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwq$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/ImageAds;->getLinkurl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwq$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/ImageAds;->getShowtime()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v4, v7

    iput-wide v4, v3, Lwq$a;->d:J

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v4, v7

    iput-wide v4, v3, Lwq$a;->e:J

    iput-boolean v6, v3, Lwq$a;->f:Z

    invoke-virtual {v1, v3}, Lwq;->a(Lwq$a;)Z

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/OpenUIActionInfo;

    invoke-direct {v4}, LQQPIM/OpenUIActionInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/OpenUIActionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/OpenUIActionInfo;->getAction()I

    move-result v3

    const v4, 0x7289888

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, LQQPIM/OpenUIActionInfo;->getUiid()I

    move-result v3

    const v4, 0xb74274

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " CloudServiceManager getTitle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/OpenUIActionInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getMsg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, LQQPIM/OpenUIActionInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v3

    invoke-virtual {v3}, Lnp;->a()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    const-string v4, "tool_box_setting_info"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "tool_box_set_default"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    new-instance v1, Lacz;

    invoke-direct {v1}, Lacz;-><init>()V

    invoke-virtual {v0}, LQQPIM/OpenUIActionInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LQQPIM/OpenUIActionInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lacz;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v3, 0x66ad

    invoke-virtual {v1, v3}, Lnd;->a(I)V

    const-string v1, "cloudcmd"

    new-instance v3, LQQPIM/VirusUpdateInfo;

    invoke-direct {v3}, LQQPIM/VirusUpdateInfo;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/VirusUpdateInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lqr;->a:Landroid/content/Context;

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "update_data"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "extra_back_to_main"

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v3

    const/16 v4, 0x66b0

    invoke-virtual {v3, v4}, Lnd;->a(I)V

    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/KillToolInfo;

    invoke-direct {v4}, LQQPIM/KillToolInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/KillToolInfo;

    if-eqz v0, :cond_0

    new-instance v3, Lkw;

    invoke-direct {v3}, Lkw;-><init>()V

    iget-object v4, v0, LQQPIM/KillToolInfo;->pkgname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v0, v0, LQQPIM/KillToolInfo;->certmd5:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lkw;->setCertMD5(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v3, v0, v1}, Lkw;->a(Lkw;II)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_back_to_main"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "cloudcmd"

    new-instance v3, LQQPIM/RecommendSoft;

    invoke-direct {v3}, LQQPIM/RecommendSoft;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RecommendSoft;

    if-eqz v0, :cond_4

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/RecommendSoft;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lho;->J(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CloudServiceManager setQQphonebookUrl "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/RecommendSoft;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    if-eqz p1, :cond_0

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/TipsInfo;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lho;->H(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CloudServiceManager setQQphonebookTipsInfo "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/TipsInfo;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/TipsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lho;->I(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CloudServiceManager setQQphonebookTipsTitle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/TipsInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/DayColorEggs;

    invoke-direct {v4}, LQQPIM/DayColorEggs;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/DayColorEggs;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v3}, Lqt;->a(Landroid/content/Context;)Lqt;

    move-result-object v3

    new-instance v4, Lma;

    invoke-direct {v4}, Lma;-><init>()V

    invoke-virtual {v0}, LQQPIM/DayColorEggs;->getNvalue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lma;->b:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/DayColorEggs;->getEggurl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lma;->c:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/DayColorEggs;->getOrbit()I

    move-result v5

    iput v5, v4, Lma;->f:I

    invoke-virtual {v0}, LQQPIM/DayColorEggs;->getToast()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lma;->g:Ljava/lang/String;

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v5

    invoke-virtual {v5}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lma;->a:Ljava/lang/String;

    iput-boolean v1, v4, Lma;->e:Z

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v1

    int-to-long v5, v1

    mul-long/2addr v5, v7

    iput-wide v5, v4, Lma;->k:J

    invoke-virtual {v0}, LQQPIM/DayColorEggs;->getBshare()Z

    move-result v1

    iput-boolean v1, v4, Lma;->h:Z

    invoke-virtual {v0}, LQQPIM/DayColorEggs;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lma;->j:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/DayColorEggs;->getWording()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lma;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lqt;->a(Lma;)V

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/LotteryColorEggs;

    invoke-direct {v4}, LQQPIM/LotteryColorEggs;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/LotteryColorEggs;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v3}, Lqt;->a(Landroid/content/Context;)Lqt;

    move-result-object v3

    new-instance v4, Llx;

    invoke-direct {v4}, Llx;-><init>()V

    invoke-virtual {v0}, LQQPIM/LotteryColorEggs;->getActivityid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llx;->b:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/LotteryColorEggs;->getEggurl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llx;->c:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/LotteryColorEggs;->getOrbit()I

    move-result v5

    iput v5, v4, Llx;->f:I

    invoke-virtual {v0}, LQQPIM/LotteryColorEggs;->getWording()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llx;->g:Ljava/lang/String;

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v5

    invoke-virtual {v5}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llx;->a:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/LotteryColorEggs;->getPrize()LQQPIM/LotteryPrize;

    move-result-object v5

    invoke-virtual {v5}, LQQPIM/LotteryPrize;->getPrizeid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llx;->k:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/LotteryColorEggs;->getCheckurl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Llx;->i:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/LotteryColorEggs;->getPrizeurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Llx;->h:Ljava/lang/String;

    iput-boolean v1, v4, Llx;->e:Z

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v7

    iput-wide v0, v4, Llx;->j:J

    invoke-virtual {v3, v4}, Lqt;->a(Llx;)V

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "cloudcmd"

    new-instance v4, LQQPIM/FuncActivityInfo;

    invoke-direct {v4}, LQQPIM/FuncActivityInfo;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/FuncActivityInfo;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v3}, Lqt;->a(Landroid/content/Context;)Lqt;

    move-result-object v3

    new-instance v4, Lld;

    invoke-direct {v4}, Lld;-><init>()V

    invoke-virtual {v0}, LQQPIM/FuncActivityInfo;->getActivityid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lld;->b:Ljava/lang/String;

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v5

    invoke-virtual {v5}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lld;->a:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/FuncActivityInfo;->getWording()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lld;->c:Ljava/lang/String;

    invoke-virtual {v0}, LQQPIM/FuncActivityInfo;->getDetailurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lld;->d:Ljava/lang/String;

    iput-boolean v1, v4, Lld;->e:Z

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v7

    iput-wide v0, v4, Lld;->f:J

    iget-object v0, v4, Lld;->a:Ljava/lang/String;

    iget-object v1, v3, Lqt;->a:Lhn;

    const-string v5, "color_egg_activity_config"

    const-string v6, "tips_id"

    invoke-virtual {v1, v0, v5, v6}, Lhn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3, v4}, Lqt;->a(Lld;)V

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "cloudcmd"

    new-instance v3, LQQPIM/PromptImpeach;

    invoke-direct {v3}, LQQPIM/PromptImpeach;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/PromptImpeach;

    if-eqz v0, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v0}, LQQPIM/PromptImpeach;->getBswitch()Z

    move-result v3

    invoke-virtual {v1, v3}, Lho;->M(Z)V

    invoke-virtual {v0}, LQQPIM/PromptImpeach;->getActionmarkstr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lho;->K(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/PromptImpeach;->getMaxreport()I

    move-result v3

    invoke-virtual {v1, v3}, Lho;->E(I)V

    invoke-virtual {v0}, LQQPIM/PromptImpeach;->getBfiltercontent()Z

    move-result v3

    invoke-virtual {v1, v3}, Lho;->N(Z)V

    invoke-virtual {v0}, LQQPIM/PromptImpeach;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lho;->L(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/PromptImpeach;->getMaxsinglereport()I

    move-result v0

    invoke-virtual {v1, v0}, Lho;->G(I)V

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v3, v7

    invoke-virtual {v1, v3, v4}, Lho;->A(J)V

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "cloudcmd"

    new-instance v3, LQQPIM/SmsRecoverRule;

    invoke-direct {v3}, LQQPIM/SmsRecoverRule;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_c
        0x9 -> :sswitch_b
        0x65 -> :sswitch_a
        0x66 -> :sswitch_11
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12d -> :sswitch_d
        0x12e -> :sswitch_10
        0x137 -> :sswitch_14
        0x138 -> :sswitch_12
        0x139 -> :sswitch_13
        0x13e -> :sswitch_15
        0x13f -> :sswitch_17
        0x140 -> :sswitch_18
        0x141 -> :sswitch_19
        0x191 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x5 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_8
        0x5 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_e
        0x6 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4b1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized a(I)V
    .locals 11

    const/4 v2, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lqr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v5

    invoke-virtual {v5}, LQQPIM/TimeCtrl;->getTime()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v1

    invoke-virtual {v1}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lqr;->c(Ljava/lang/String;)LQQPIM/CloudInfoRes;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lqr;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lqr;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, LQQPIM/CloudInfoRes;->setPhase(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v3, v7

    invoke-virtual {v1, v3}, LQQPIM/CloudInfoRes;->setTime(I)V

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v3

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTime()LQQPIM/TimeCtrl;

    move-result-object v7

    invoke-virtual {v7}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v3}, LQQPIM/TimeCtrl;->getValidEndTime()I

    move-result v3

    int-to-long v9, v3

    cmp-long v3, v7, v9

    if-gez v3, :cond_6

    :cond_5
    move v3, v4

    :goto_3
    if-nez v3, :cond_7

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, LQQPIM/CloudInfoRes;->setRes(I)V

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v7

    invoke-virtual {v7}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, LQQPIM/TipsInfo;->getType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move-object v1, v2

    goto :goto_2

    :sswitch_0
    const v3, 0x728a058

    if-eq p1, v3, :cond_8

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/tencent/qqpimsecure/ui/activity/TipsDialog;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, LQQPIM/CloudInfoRes;->setRes(I)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v0, v1}, Lqr;->a(LQQPIM/CloudInfo;LQQPIM/CloudInfoRes;)V

    goto :goto_2

    :sswitch_1
    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lss;->b(Landroid/content/Context;LQQPIM/CloudInfo;)V

    iget-object v3, p0, Lqr;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lss;->a(Landroid/content/Context;LQQPIM/CloudInfo;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lov;->a()Lov;

    move-result-object v3

    iget-object v7, p0, Lqr;->a:Landroid/content/Context;

    invoke-virtual {v3, v7, v0}, Lov;->a(Landroid/content/Context;LQQPIM/CloudInfo;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, LQQPIM/CloudInfoRes;->setRes(I)V

    goto/16 :goto_2

    :cond_9
    move-object v1, v2

    goto/16 :goto_2

    :sswitch_2
    invoke-direct {p0, v0, v1}, Lqr;->a(LQQPIM/CloudInfo;LQQPIM/CloudInfoRes;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0, v5}, Lqr;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    monitor-exit p0

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x6 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v3

    invoke-virtual {v3}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    iget-object v1, p0, Lqr;->c:Ljava/util/List;

    const-string v2, "p_tips"

    const-string v3, "p_tips.dat"

    invoke-static {v0, v1, v2, v3}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudInfoRes;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, LQQPIM/CloudInfoRes;

    invoke-direct {v1}, LQQPIM/CloudInfoRes;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, LQQPIM/CmdInfoRes;

    invoke-direct {v1, v0}, LQQPIM/CmdInfoRes;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lqs;

    invoke-direct {v3, p0, v1, v0}, Lqs;-><init>(Lqr;LQQPIM/CmdInfoRes;Ljava/util/ArrayList;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lqr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/CloudInfo;",
            ">;)Z"
        }
    .end annotation

    const/16 v12, 0xc9

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQQPIM/CloudCmd;

    invoke-virtual {v1}, LQQPIM/CloudCmd;->getCmdid()I

    move-result v1

    if-ne v1, v12, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v6

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LQQPIM/CloudInfo;

    invoke-virtual {v1}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqr;->c(Ljava/lang/String;)LQQPIM/CloudInfoRes;

    move-result-object v8

    invoke-virtual {v1}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmd;

    invoke-virtual {p0, v1, v0}, Lqr;->a(LQQPIM/CloudInfo;LQQPIM/CloudCmd;)I

    move-result v4

    new-instance v10, LQQPIM/CloudCmdRes;

    invoke-virtual {v0}, LQQPIM/CloudCmd;->getSeqid()I

    move-result v11

    if-nez v4, :cond_4

    move v2, v3

    :goto_3
    invoke-direct {v10, v11, v2}, LQQPIM/CloudCmdRes;-><init>(II)V

    invoke-virtual {v8}, LQQPIM/CloudInfoRes;->getCmdres()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_5

    invoke-virtual {v8, v6}, LQQPIM/CloudInfoRes;->setRes(I)V

    :cond_3
    invoke-virtual {v1}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqr;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, LQQPIM/CloudCmd;->getCmdid()I

    move-result v0

    if-ne v0, v12, :cond_8

    move v0, v3

    :goto_4
    move v5, v0

    goto :goto_2

    :cond_6
    move v6, v5

    :cond_7
    return v6

    :cond_8
    move v0, v5

    goto :goto_4
.end method

.method public final declared-synchronized b()I
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v2

    new-instance v3, LQQPIM/ClientVersionInfo;

    const/4 v4, 0x4

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "buildno="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lqx;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lqx;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&productid=1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-direct {v3, v4, v5, v6, v7}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "nldb.sdb"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, LQQPIM/ClientVersionInfo;

    const/4 v6, 0x1

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, LQQPIM/ConfInfo;->getFilename()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, LQQPIM/ConfInfo;->getTimestamp()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&checksum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, LQQPIM/ConfInfo;->getChecksum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&pfutimestamp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, LQQPIM/ConfInfo;->getPfutimestamp()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-direct {v5, v6, v7, v4, v8}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "rule_store.sys"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getSmsCheckerConfInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, LQQPIM/ClientVersionInfo;

    const/4 v6, 0x2

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, LQQPIM/ConfInfo;->getFilename()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, LQQPIM/ConfInfo;->getTimestamp()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&checksum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, LQQPIM/ConfInfo;->getChecksum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-direct {v5, v6, v7, v4, v8}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "qv_base.amf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v4, LQQPIM/ClientVersionInfo;

    const/4 v5, 0x3

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "time="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/VirusClientInfo;->getTimestamp()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, LQQPIM/VirusClientInfo;->getVersion()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-direct {v4, v5, v6, v0, v7}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_COMMON_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/tmsecure/module/update/UpdateConfig;->ROM_THIRDPART_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/tmsecure/module/update/UpdateConfig;->WHITELIST_UNUSUAL_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_ROM_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/tencent/tmsecure/module/update/UpdateConfig;->BLACKLIST_WITHPLUGIN_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "trusturls.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "net_interface_type_traffic_stat.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ConfInfo;

    new-instance v4, LQQPIM/ClientVersionInfo;

    const/16 v5, 0x15

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LQQPIM/ConfInfo;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&time="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, LQQPIM/ConfInfo;->getTimestamp()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&checksum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, LQQPIM/ConfInfo;->getChecksum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    invoke-direct {v4, v5, v6, v0, v7}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    :try_start_1
    new-instance v0, LQQPIM/ClientVersionInfo;

    const/16 v3, 0xb

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildno="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lqx;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqx;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&productid=1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-direct {v0, v3, v4, v2, v5}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getUpdatesV2(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-eqz v2, :cond_c

    if-gez v2, :cond_b

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6731

    invoke-virtual {v0, v1, v2}, Lnd;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    move v0, v2

    :goto_1
    monitor-exit p0

    return v0

    :cond_c
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ServerCmdInfo;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lqr;->a:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lqr;->a:Landroid/content/Context;

    const-class v5, Lcom/tencent/qqpimsecure/service/SecureService;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "com.tencent.action.cloud_service"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lqr;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, LQQPIM/ServerCmdInfo;->getNextcheckinterval()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lho;->j(J)V

    invoke-direct {p0, v0}, Lqr;->a(LQQPIM/ServerCmdInfo;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lqr;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    move v0, v2

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)LQQPIM/CloudInfo;
    .locals 3

    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v2

    invoke-virtual {v2}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)LQQPIM/CloudInfoRes;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lqr;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfoRes;

    invoke-virtual {v0}, LQQPIM/CloudInfoRes;->getTipsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LQQPIM/CloudInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x7

    const/4 v8, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lqr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LQQPIM/TipsInfo;->getType()I

    move-result v3

    if-ne v3, v9, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    iget-object v3, p0, Lqr;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lqr;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lqr;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lqr;->a:Landroid/content/Context;

    iget-object v2, p0, Lqr;->b:Ljava/util/List;

    const-string v3, "tips"

    const-string v4, "tips.dat"

    invoke-static {v0, v2, v3, v4}, Lfj;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqr;->c(Ljava/lang/String;)LQQPIM/CloudInfoRes;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v8}, LQQPIM/CloudInfoRes;->setPhase(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v0, v4}, LQQPIM/CloudInfoRes;->setTime(I)V

    invoke-virtual {v0, v8}, LQQPIM/CloudInfoRes;->setRes(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lqr;->a(Ljava/util/ArrayList;)V

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, LQQPIM/TipsInfo;->getType()I

    move-result v3

    if-ne v3, v9, :cond_7

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v1
.end method

.method public final d()V
    .locals 8

    const/4 v7, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lqr;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LQQPIM/TipsInfo;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    iget-object v3, p0, Lqr;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqr;->c(Ljava/lang/String;)LQQPIM/CloudInfoRes;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, LQQPIM/CloudInfoRes;->setPhase(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v0, v3}, LQQPIM/CloudInfoRes;->setTime(I)V

    invoke-virtual {v0, v7}, LQQPIM/CloudInfoRes;->setAction(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LQQPIM/CloudInfoRes;->setRes(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lqr;->a(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method
