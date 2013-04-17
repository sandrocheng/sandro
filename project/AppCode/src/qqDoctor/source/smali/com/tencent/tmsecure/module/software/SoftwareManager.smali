.class public final Lcom/tencent/tmsecure/module/software/SoftwareManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbyp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final canMoveToSdcard(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v1, p1, v0}, Lbyp;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, p2}, Lbyn;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final getApkInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v0, p1, p2}, Lbyp;->b(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public final getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    new-instance v1, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const-string v2, "apkPath"

    invoke-virtual {v1, v2, p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2}, Lbyp;->b(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public final getApkList(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbyp;->a(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getApkList(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lbyp;->a(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getApkListFromSDCard([Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2, p1, p2, p3}, Lbyp;->a(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v0, p1, p2}, Lbyp;->a(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    new-instance v1, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const-string v2, "pkgName"

    invoke-virtual {v1, v2, p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2}, Lbyp;->a(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAppVersionStatus(Ljava/lang/String;I)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, -0x2

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v2, p1, v1}, Lbyp;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne p2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge p2, v1, :cond_4

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getAppsCanMovable(IIZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v0, p1, p2, p3}, Lbyp;->a(IIZ)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getInstalledApp(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v0, p1, p2}, Lbyp;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final goToInstalledAppDetails(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v3, 0x9

    if-lt v0, v3, :cond_1

    :try_start_0
    const-string v0, "android.provider.Settings"

    const-string v3, "ACTION_APPLICATION_DETAILS_SETTINGS"

    invoke-static {v0, v3}, Ldi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "package"

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1
    iget-object v0, v1, Lbyp;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pkg"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final installApp(Ljava/io/File;)V
    .locals 4

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lbyp;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the apkfile dosn\'t exist."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final installApp(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-ltz p3, :cond_1

    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final installAppSilently(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-static {p1}, Lbtd;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->k()Z

    move-result v0

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pm install -r "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public final isInstalledSdcard(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v1, p1, v0}, Lbyp;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lbyn;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public final isPackageInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v1, p1, v0}, Lbyp;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final movePackageToExternal(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-static {p1}, Lbyn;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final movePackageToInteranl(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-static {p1}, Lbyn;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbyp;

    invoke-direct {v0}, Lbyp;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v0, p1}, Lbyp;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    iget-object v0, v0, Lbyp;->b:Lbyo;

    invoke-virtual {v0, p1}, Lbyo;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final startUpApp(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-virtual {v0, p1}, Lbyp;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final uninstallApp(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-ltz p3, :cond_1

    invoke-virtual {p2, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final uninstallAppSilently(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/tencent/tmsecure/module/software/SoftwareManager;->a:Lbyp;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->l()Z

    move-result v0

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->isSystemUid()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    iget-object v3, v2, Lbyp;->b:Lbyo;

    invoke-virtual {v3, p1}, Lbyo;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v2, v2, Lbyp;->b:Lbyo;

    invoke-virtual {v2, p1}, Lbyo;->b(Ljava/lang/String;)Z

    :cond_5
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pm uninstall "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1
.end method
