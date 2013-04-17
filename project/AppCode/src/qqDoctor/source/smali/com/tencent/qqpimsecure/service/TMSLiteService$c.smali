.class final Lcom/tencent/qqpimsecure/service/TMSLiteService$c;
.super Lbzt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/service/TMSLiteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

.field private b:Lcom/tencent/tmsecure/module/applist/AppListManager;

.field private c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private synthetic d:Lcom/tencent/qqpimsecure/service/TMSLiteService;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/TMSLiteService;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-direct {p0}, Lbzt;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->a:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbzo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->a:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, v4}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getAllAppPackageStats(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageStats;

    if-eqz v1, :cond_2

    iget-wide v5, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_0
    new-instance v6, Lbzo;

    invoke-direct {v6}, Lbzo;-><init>()V

    const-string v7, "PackageName"

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "AppName"

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "CacheSize"

    iget-wide v7, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {v6, v0, v7, v8}, Lbzo;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public final a(Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lbzo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->a:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getAutoBootHelper()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;->getAllAutoBootApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper$Pair;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v1, v0, Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper$Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    invoke-virtual {v4, v5, v6}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_2
    new-instance v4, Lbzo;

    invoke-direct {v4}, Lbzo;-><init>()V

    const-string v5, "PackageName"

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "AppName"

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AutoBoot"

    iget-object v0, v0, Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper$Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v1, v0}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lbzt;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->a:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->closeProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->a:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getAutoBootHelper()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;->setAutoBootEnable(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->a:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->closeProcess(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->a:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getAutoBootHelper()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, p2}, Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;->setAutoBootEnable(Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Z)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lbzo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v2

    invoke-virtual {v2}, Lzo;->e()V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lzo;->a(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    if-eqz p1, :cond_2

    invoke-virtual {v2, v0}, Lzo;->c(Lkw;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    :try_start_0
    new-instance v4, Lbzo;

    invoke-direct {v4}, Lbzo;-><init>()V

    const-string v5, "PackageName"

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "AppName"

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "RamSize"

    invoke-virtual {v0}, Lkw;->G()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lbzo;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->a:Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->clearAllCacheData()Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$c;->d:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
