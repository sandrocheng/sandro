.class public Laau;
.super Lcom/tencent/tmsecure/common/BaseService;


# static fields
.field private static h:Z

.field private static i:Z

.field private static j:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private c:Ljt;

.field private d:Lho;

.field private e:Lkd;

.field private f:Labe;

.field private g:Z

.field private k:Landroid/os/Handler;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Laau;->h:Z

    sput-boolean v0, Laau;->i:Z

    sput-boolean v0, Laau;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laau;->g:Z

    new-instance v0, Laav;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Laav;-><init>(Laau;Landroid/os/Looper;)V

    iput-object v0, p0, Laau;->k:Landroid/os/Handler;

    new-instance v0, Labb;

    invoke-direct {v0, p0}, Labb;-><init>(Laau;)V

    iput-object v0, p0, Laau;->l:Landroid/content/BroadcastReceiver;

    new-instance v0, Labc;

    invoke-direct {v0, p0}, Labc;-><init>(Laau;)V

    iput-object v0, p0, Laau;->m:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Laau;Ljava/util/List;)Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Laau;->a:Landroid/content/Context;

    if-eqz v1, :cond_2

    :goto_1
    invoke-static {v3, v1}, Lgx;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    move v3, v1

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkw;->D()I

    move-result v1

    :goto_3
    if-lez v3, :cond_1

    if-lez v1, :cond_1

    if-gt v1, v3, :cond_0

    :cond_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    invoke-interface {p1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method static synthetic a(Laau;)V
    .locals 0

    invoke-direct {p0}, Laau;->d()V

    return-void
.end method

.method static synthetic a(Laau;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Laau;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Laau;Z)V
    .locals 0

    invoke-direct {p0, p1}, Laau;->d(Z)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Laau;->c:Ljt;

    const-string v5, "sw_cache_apkmanager_download_1"

    iget-object v4, v4, Ljt;->a:Lhs;

    const-string v6, "appPath=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v4, p0, Laau;->c:Ljt;

    const-string v5, "sw_cache_apkmanager_other_1"

    iget-object v4, v4, Ljt;->a:Lhs;

    const-string v6, "appPath=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, p0, Laau;->e:Lkd;

    iget-object v3, v3, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v4, "apk_count"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Laau;->e:Lkd;

    iget-object v4, p0, Laau;->e:Lkd;

    iget-object v4, v4, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v5, "apk_count"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v3, v3, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v5, "apk_count"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laau;->f:Labe;

    iget-object v0, v0, Labe;->c:Ljt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljt;->b(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Laau;->f:Labe;

    iget-object v1, v1, Labe;->c:Ljt;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljt;->b(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Laau;->f:Labe;

    invoke-virtual {v1, v0}, Labe;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Laba;

    invoke-direct {v0, p1}, Laba;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Laba;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Laau;->h:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Laau;->h:Z

    return p0
.end method

.method static synthetic b(Laau;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Laau;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Laau;Z)V
    .locals 0

    invoke-direct {p0, p1}, Laau;->e(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Laau;->c:Ljt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laau;->c:Ljt;

    const-string v1, "sw_cache_mysoftware_1"

    iget-object v0, v0, Ljt;->a:Lhs;

    const-string v2, "pkgName=?"

    new-array v3, v7, [Ljava/lang/String;

    aput-object p1, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Laau;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v1, 0x79

    invoke-virtual {v0, p1, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    invoke-static {v0, v6}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;Z)Lkw;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Lkw;->b(I)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Laau;->c:Ljt;

    const-string v2, "sw_cache_mysoftware_1"

    invoke-virtual {v0, v2, v1}, Ljt;->a(Ljava/lang/String;Lkw;)V

    :cond_0
    iget-object v0, p0, Laau;->c:Ljt;

    iget-object v2, v0, Ljt;->j:Ljava/lang/String;

    const-string v3, "id ASC"

    invoke-virtual {v0, v2, v4, v4, v3}, Ljt;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lkw;->getVersionCode()I

    move-result v3

    invoke-virtual {v1}, Lkw;->getVersionCode()I

    move-result v4

    if-gt v3, v4, :cond_2

    iget-object v0, p0, Laau;->c:Ljt;

    const-string v3, "sw_cache_mysoftware_update_1"

    iget-object v0, v0, Ljt;->a:Lhs;

    const-string v4, "pkgName=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Laau;->e:Lkd;

    iget-object v3, p0, Laau;->e:Lkd;

    iget-object v3, v3, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v4, "update_app_count"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v4, "update_app_count"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lkw;->getVersionCode()I

    move-result v0

    invoke-virtual {v1}, Lkw;->getVersionCode()I

    move-result v3

    if-le v0, v3, :cond_1

    iget-object v0, p0, Laau;->c:Ljt;

    const-string v3, "sw_cache_mysoftware_update_1"

    iget-object v0, v0, Ljt;->a:Lhs;

    const-string v4, "pkgName=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Laau;->c:Ljt;

    const-string v3, "sw_cache_mysoftware_update_1"

    invoke-virtual {v0, v3, v1}, Ljt;->a(Ljava/lang/String;Lkw;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Laau;->i:Z

    return v0
.end method

.method static synthetic b(Laau;)Z
    .locals 1

    iget-boolean v0, p0, Laau;->g:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Laau;->i:Z

    return p0
.end method

.method static synthetic c(Laau;)Ljt;
    .locals 1

    iget-object v0, p0, Laau;->c:Ljt;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Laau;->c:Ljt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laau;->c:Ljt;

    const-string v1, "sw_cache_mysoftware_1"

    const-string v2, "pkgName = ?"

    new-array v3, v6, [Ljava/lang/String;

    aput-object p1, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljt;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laau;->e:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v2, "system_app_count"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Laau;->e:Lkd;

    iget-object v2, p0, Laau;->e:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "system_app_count"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "system_app_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_1
    iget-object v0, p0, Laau;->c:Ljt;

    const-string v2, "sw_cache_mysoftware_1"

    iget-object v0, v0, Ljt;->a:Lhs;

    const-string v3, "pkgName=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Laau;->c:Ljt;

    const-string v2, "sw_cache_mysoftware_update_1"

    iget-object v0, v0, Ljt;->a:Lhs;

    const-string v3, "pkgName=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laau;->e:Lkd;

    iget-object v2, p0, Laau;->e:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "update_app_count"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "update_app_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laau;->e:Lkd;

    iget-object v0, v0, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v2, "third_party_app_count"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Laau;->e:Lkd;

    iget-object v2, p0, Laau;->e:Lkd;

    iget-object v2, v2, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v3, "third_party_app_count"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "third_party_app_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Laau;->j:Z

    return v0
.end method

.method static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, Laau;->j:Z

    return p0
.end method

.method static synthetic d(Laau;)Lho;
    .locals 1

    iget-object v0, p0, Laau;->d:Lho;

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laaz;

    invoke-direct {v1, p0}, Laaz;-><init>(Laau;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Laaw;

    invoke-direct {v0, p0, p1}, Laaw;-><init>(Laau;Z)V

    invoke-virtual {v0}, Laaw;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Laau;)Labe;
    .locals 1

    iget-object v0, p0, Laau;->f:Labe;

    return-object v0
.end method

.method private declared-synchronized e(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Laay;

    invoke-direct {v0, p0, p1}, Laay;-><init>(Laau;Z)V

    invoke-virtual {v0}, Laay;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Laau;)Lkd;
    .locals 1

    iget-object v0, p0, Laau;->e:Lkd;

    return-object v0
.end method

.method static synthetic g(Laau;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laau;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Laau;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laau;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Laau;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laau;->g:Z

    return v0
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Laau;->a:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Laau;->d:Lho;

    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    iput-object v0, p0, Laau;->e:Lkd;

    new-instance v0, Labe;

    invoke-direct {v0}, Labe;-><init>()V

    iput-object v0, p0, Laau;->f:Labe;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Laau;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Laau;->c:Ljt;

    iget-object v0, p0, Laau;->l:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tencent.qqpimsecure.CACHE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Laau;->m:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.tencent.qqpimsecure.ACTION_STOP_LOADING"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestory()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    iget-object v0, p0, Laau;->a:Landroid/content/Context;

    iget-object v1, p0, Laau;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Laau;->a:Landroid/content/Context;

    iget-object v1, p0, Laau;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "extra_action_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "extra_action_package_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const-string v4, "action_type_package_add"

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Laau;->c:Ljt;

    if-eqz v0, :cond_2

    iget-object v4, p0, Laau;->c:Ljt;

    const-string v0, "sw_cache_mysoftware_1"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT count(*) FROM "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v4, Ljt;->a:Lhs;

    invoke-virtual {v5, v0}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v4, v4, Ljt;->a:Lhs;

    invoke-virtual {v4}, Lhs;->b()V

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    :cond_2
    :goto_3
    iput-boolean v1, p0, Laau;->g:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Laau;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v4, 0x79

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    invoke-static {v0, v2}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;Z)Lkw;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lkw;->b(I)V

    if-eqz v0, :cond_5

    iget-object v3, p0, Laau;->c:Ljt;

    const-string v4, "sw_cache_mysoftware_1"

    invoke-virtual {v3, v4, v0}, Ljt;->a(Ljava/lang/String;Lkw;)V

    :cond_5
    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Laau;->e:Lkd;

    iget-object v3, p0, Laau;->e:Lkd;

    iget-object v3, v3, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v4, "system_app_count"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "system_app_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_6
    iget-object v0, p0, Laau;->e:Lkd;

    iget-object v3, p0, Laau;->e:Lkd;

    iget-object v3, v3, Lkd;->a:Landroid/content/SharedPreferences;

    const-string v4, "third_party_app_count"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "third_party_app_count"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_7
    const-string v2, "action_type_package_remove"

    if-ne v0, v2, :cond_8

    invoke-direct {p0, v3}, Laau;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v2, "action_type_package_reinstall"

    if-ne v0, v2, :cond_2

    invoke-direct {p0, v3}, Laau;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_1
.end method
